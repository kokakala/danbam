package com.hongcha.main.common;

import com.hongcha.main.board.model.vo.PageInfo;

public class Pagination {
	
	
	public static PageInfo getPageInfo(int currentPage, int listCount) {
		
		int pageLimit = 5;
		int boardLimit = 10;
		int maxPage = (int)Math.ceil((double)listCount / boardLimit);
		int startPage = (currentPage - 1) / pageLimit * pageLimit + 1;
		int endPage = startPage + pageLimit - 1;
		if (endPage > maxPage) {
			endPage = maxPage;
		}
		
		return new PageInfo(currentPage, listCount, pageLimit, maxPage, startPage, endPage, boardLimit);
	}
	
	
	public static PageInfo setPageLimit(int currentPage, int listCount, int page, int board) {
		
		int pageLimit = page;
		int boardLimit = board;
		int maxPage = (int)Math.ceil((double)listCount / boardLimit);
		int startPage = (currentPage - 1) / pageLimit * pageLimit + 1;
		int endPage = startPage + pageLimit - 1;
		if (endPage > maxPage) {
			endPage = maxPage;
		}

		return new PageInfo(currentPage, listCount, pageLimit, maxPage, startPage, endPage, boardLimit);
	}
	
	/**
	 * pageLimit과 boardLimit을 유지한 채로 새로운 리스트(listCount)를 받아서 페이징 처리를 하기 위한 메서드
	 * @param currentPage
	 * @param listCount
	 * @param pi
	 * @return
	 * @author Jongbae Lee
	 * @since 2020-06-23
	 */
	public static PageInfo setNewPageLimit(int currentPage, int listCount, PageInfo pi) {
		
		int pageLimit = pi.getPageLimit();
		int boardLimit = pi.getBoardLimit();
		int maxPage = (int)Math.ceil((double)listCount / boardLimit);
		int startPage = (currentPage - 1) / pageLimit * pageLimit + 1;
		int endPage = startPage + pageLimit - 1;
		if (endPage > maxPage) {
			endPage = maxPage;
		}
		
		return new PageInfo(currentPage, listCount, pageLimit, maxPage, startPage, endPage, boardLimit);
	}
	
}
