package com.model2.mvc.service.domain;

public class Comments {
	
	private int boardNo;
	private String userId;
	private String comments;
	
	public int getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
	@Override
	public String toString() {
		return "Comments [boardNo=" + boardNo + ", userId=" + userId + ", comments=" + comments + "]";
	}
	
}
