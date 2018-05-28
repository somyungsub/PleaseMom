package com.dto;

public class BoardDTO {

	private int scb_num;//게시글번호
	private int scb_mem_num;//멤버 번호
	private int scb_from;//출발지
	private String scb_via;//경유
	private int scb_to;//목적지
	private String scb_sdate;//출발일
	private String scb_title;//글제목
	private String scb_content;//작성글
	private String scb_wdate;//작성일
	private String scb_case;//상황, 승인여부
	private String scb_mediate;//수락여부
	
	public BoardDTO() {
		// TODO Auto-generated constructor stub
	}

	public int getScb_num() {
		return scb_num;
	}

	public void setScb_num(int scb_num) {
		this.scb_num = scb_num;
	}

	public int getScb_mem_num() {
		return scb_mem_num;
	}

	public void setScb_mem_num(int scb_mem_num) {
		this.scb_mem_num = scb_mem_num;
	}

	public int getScb_from() {
		return scb_from;
	}

	public void setScb_from(int scb_from) {
		this.scb_from = scb_from;
	}

	public String getScb_via() {
		return scb_via;
	}

	public void setScb_via(String scb_via) {
		this.scb_via = scb_via;
	}

	public int getScb_to() {
		return scb_to;
	}

	public void setScb_to(int scb_to) {
		this.scb_to = scb_to;
	}

	public String getScb_sdate() {
		return scb_sdate;
	}

	public void setScb_sdate(String scb_sdate) {
		this.scb_sdate = scb_sdate;
	}

	public String getScb_title() {
		return scb_title;
	}

	public void setScb_title(String scb_title) {
		this.scb_title = scb_title;
	}

	public String getScb_content() {
		return scb_content;
	}

	public void setScb_content(String scb_content) {
		this.scb_content = scb_content;
	}

	public String getScb_wdate() {
		return scb_wdate;
	}

	public void setScb_wdate(String scb_wdate) {
		this.scb_wdate = scb_wdate;
	}

	public String getScb_case() {
		return scb_case;
	}

	public void setScb_case(String scb_case) {
		this.scb_case = scb_case;
	}
	
	
	public String getScb_mediate() {
		return scb_mediate;
	}

	public void setScb_mediate(String scb_mediate) {
		this.scb_mediate = scb_mediate;
	}

	

	public BoardDTO(int scb_num, int scb_mem_num, int scb_from, String scb_via, int scb_to, String scb_sdate,
			String scb_title, String scb_content, String scb_wdate, String scb_case, String scb_mediate) {
		super();
		this.scb_num = scb_num;
		this.scb_mem_num = scb_mem_num;
		this.scb_from = scb_from;
		this.scb_via = scb_via;
		this.scb_to = scb_to;
		this.scb_sdate = scb_sdate;
		this.scb_title = scb_title;
		this.scb_content = scb_content;
		this.scb_wdate = scb_wdate;
		this.scb_case = scb_case;
		this.scb_mediate = scb_mediate;
	}

	@Override
	public String toString() {
		return "BoardDTO [scb_num=" + scb_num + ", scb_mem_num=" + scb_mem_num + ", scb_from=" + scb_from + ", scb_via="
				+ scb_via + ", scb_to=" + scb_to + ", scb_sdate=" + scb_sdate + ", scb_title=" + scb_title
				+ ", scb_content=" + scb_content + ", scb_wdate=" + scb_wdate + ", scb_case=" + scb_case
				+ ", scb_mediate=" + scb_mediate + "]";
	}

}
