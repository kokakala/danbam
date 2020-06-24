package com.hongcha.main.board.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.hongcha.main.board.model.service.BoardService;
import com.hongcha.main.board.model.vo.Board;
import com.hongcha.main.board.model.vo.PageInfo;
import com.hongcha.main.common.Pagination;
import com.hongcha.main.member.model.vo.Member;

public class BoardController {
	
	private BoardService boardService;
	
	@RequestMapping("blist.do")
	public ModelAndView boardList(ModelAndView mv,
																@RequestParam(value = "currentPage", defaultValue = "1") int currentPage) {
		int listCount = boardService.getBoardCount(); // 게시판 총 개수 조회
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);

		ArrayList<Board> list = boardService.selectBoardList(pi); // 페이지에 보여질 리스트 조회
		/* Notice notice = noticeService.selectNoticeList(); */

		mv.addObject("pi", pi)
			.addObject("list", list)
				/* .addObject("notice", notice) */
			.setViewName("board/boardListView");
		return mv;
	}
	
	
	@RequestMapping("binsertForm.do")
	public ModelAndView boardInsertView(HttpSession session, ModelAndView mv) {
		Member member = (Member)session.getAttribute("loginUser");
		mv.addObject("m", member)
			.setViewName("board/boardInsertForm");
		return mv;
	}
	
	// 게시판 작성
	@RequestMapping("binsert.do")
	public ModelAndView insertBoard(HttpServletRequest request, Board board, ModelAndView mv, HttpSession session,
																	@RequestParam(value = "uploadFile", required = false) MultipartFile file) {
		int result = boardService.insertBoard(board);
		if (result > 0) {
			mv.setViewName("redirect:blist.do");
		} else {
			mv.setViewName("redirect:exception.do");
		}
		return mv;
	}

}
