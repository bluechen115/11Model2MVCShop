package com.model2.mvc.service.domain;

public class Comments {
	
	private int boardNo;
	private int commentsNo;
	private String userId;
	private String comments;
	private String comRegDate;
	
	public int getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}
	public int getCommentsNo() {
		return commentsNo;
	}
	public void setCommentsNo(int commentsNo) {
		this.commentsNo = commentsNo;
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
	public String getComRegDate() {
		return comRegDate;
	}
	public void setComRegDate(String comRegDate) {
		this.comRegDate = comRegDate;
	}
	@Override
	public String toString() {
		return "Comments [boardNo=" + boardNo + ", commentsNo=" + commentsNo + ", userId=" + userId + ", comments="
				+ comments + ", comRegDate=" + comRegDate + "]";
	}
	
	
}
