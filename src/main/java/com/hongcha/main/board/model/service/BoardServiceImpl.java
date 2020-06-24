package com.hongcha.main.board.model.service;

import java.awt.Image;
import java.util.ArrayList;

import com.hongcha.main.board.model.dao.BoardDao;
import com.hongcha.main.board.model.vo.Board;
import com.hongcha.main.board.model.vo.PageInfo;

public class BoardServiceImpl implements BoardService{
	
	private BoardDao bDao;

	// 게시판 총 개수
		@Override
		public int getBoardCount() {
			return bDao.getBoardCount();
		}
		
		// 게시글 리스트
		@Override
		public ArrayList<Board> selectBoardList(PageInfo pi) {
			return bDao.selectBoardList(pi);
		}
		
		// 게시글 작성
		@Override
		public int insertBoard(Board board) {
			return bDao.insertBoard(board);
		}
		
		@Override
		public Board selectBoard(int id) {
			int result = bDao.updateCount(id);
			if (result > 0) {
				return bDao.selectBoard(id);
			} else {
				return null;
			}
		}

		@Override
		public Board selectUpdateBoard(int id) {
			return bDao.selectBoard(id);
		}
		
		@Override
		public Image selectUpdateBoardFile(int id) {
			return bDao.selectBoardFile(id);
		}

		@Override
		public int deleteBoard(int id) {
			return bDao.deleteBoard(id);
		}

		@Override
		public int updateBoard(Board b) {
			return bDao.updateBoard(b);
		}
		
		@Override
		public int updateBoardFile(Image i) {
			return bDao.updateBoardFile(i);
		}
		
		@Override
		public ArrayList<Board> selectboardListHome() {
			return bDao.selectboardListHome();
		}

}
