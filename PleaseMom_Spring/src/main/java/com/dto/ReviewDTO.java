package com.dto;

public class ReviewDTO {
	private int review_num;
	private String review_content;
	private double review_star;
	private MemberDTO reqMemDto;
	private MemberDTO guiMemDto;
	private BoardDTO boardDto;
	private String review_wdate;
	
	public ReviewDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ReviewDTO(int review_num, String review_content, double review_star, MemberDTO reqMemDto,
			MemberDTO guiMemDto, BoardDTO boardDto, String review_wdate) {
		super();
		this.review_num = review_num;
		this.review_content = review_content;
		this.review_star = review_star;
		this.reqMemDto = reqMemDto;
		this.guiMemDto = guiMemDto;
		this.boardDto = boardDto;
		this.review_wdate = review_wdate;
	}

	public int getReview_num() {
		return review_num;
	}

	public void setReview_num(int review_num) {
		this.review_num = review_num;
	}

	public String getReview_content() {
		return review_content;
	}

	public void setReview_content(String review_content) {
		this.review_content = review_content;
	}

	public double getReview_star() {
		return review_star;
	}

	public void setReview_star(double review_star) {
		this.review_star = review_star;
	}

	public MemberDTO getReqMemDto() {
		return reqMemDto;
	}

	public void setReqMemDto(MemberDTO reqMemDto) {
		this.reqMemDto = reqMemDto;
	}

	public MemberDTO getGuiMemDto() {
		return guiMemDto;
	}

	public void setGuiMemDto(MemberDTO guiMemDto) {
		this.guiMemDto = guiMemDto;
	}

	public BoardDTO getBoardDto() {
		return boardDto;
	}

	public void setBoardDto(BoardDTO boardDto) {
		this.boardDto = boardDto;
	}

	public String getReview_wdate() {
		return review_wdate;
	}

	public void setReview_wdate(String review_wdate) {
		this.review_wdate = review_wdate;
	}

	@Override
	public String toString() {
		return "ReviewDTO [review_num=" + review_num + ", review_content=" + review_content + ", review_star="
				+ review_star + ", reqMemDto=" + reqMemDto + ", guiMemDto=" + guiMemDto + ", boardDto=" + boardDto
				+ ", review_wdate=" + review_wdate + "]";
	}
	
}
