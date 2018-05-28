package com.dto;

import java.util.List;

public class PageDTO {

	private List<BoardDTO> list;
	private int curPage;  //현재 페이지
	private int perPage=8;   //페이지당 보여줄 갯수
	private int totalRecord;  // 전체 레코드 갯수
	
	public List<BoardDTO> getList() {
		return list;
	}
	public void setList(List<BoardDTO> list) {
		this.list = list;
	}
	public int getCurPage() {
		return curPage;
	}
	public void setCurPage(int curPage) {
		this.curPage = curPage;
	}
	public int getPerPage() {
		return perPage;
	}
	public void setPerPage(int perPage) {
		this.perPage = perPage;
	}
	public int getTotalRecord() {
		return totalRecord;
	}
	public void setTotalRecord(int totalRecord) {
		this.totalRecord = totalRecord;
	}
	
	
	
	
}
