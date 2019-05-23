package com.model2.mvc.service.domain;

import org.springframework.web.multipart.MultipartFile;

public class ProductBoard {

	private int boardNo;
	private String title;
	private String boardDetail;
	private int quantity;
	private String boardRegDate;
	private int viewCount;
	private int prodPrice;
	private String fileName;
	private MultipartFile uploadFile;



	public ProductBoard() {
	}


	public int getBoardNo() {
		return boardNo;
	}


	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public String getBoardDetail() {
		return boardDetail;
	}


	public void setBoardDetail(String boardDetail) {
		this.boardDetail = boardDetail;
	}


	public int getQuantity() {
		return quantity;
	}


	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}


	public String getBoardRegDate() {
		return boardRegDate;
	}


	public void setBoardRegDate(String boardRegDate) {
		this.boardRegDate = boardRegDate;
	}


	public int getViewCount() {
		return viewCount;
	}


	public void setViewCount(int viewCount) {
		this.viewCount = viewCount;
	}


	public int getProdPrice() {
		return prodPrice;
	}


	public void setProdPrice(int prodPrice) {
		this.prodPrice = prodPrice;
	}


	public String getFileName() {
		return fileName;
	}


	public void setFileName(String fileName) {
		this.fileName = fileName;
	}


	public MultipartFile getUploadFile() {
		return uploadFile;
	}


	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
	}


	@Override
	public String toString() {
		return "ProductBoard [boardNo=" + boardNo + ", title=" + title + ", boardDetail=" + boardDetail + ", quantity="
				+ quantity + ", boardRegDate=" + boardRegDate + "]";
	}

}
