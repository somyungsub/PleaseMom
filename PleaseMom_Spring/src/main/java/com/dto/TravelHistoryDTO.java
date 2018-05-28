package com.dto;


public class TravelHistoryDTO {
	private int th_num;
	private int th_req_num;
	private int th_gui_num;
	private int th_scb_num;
	private String th_case;
	
	public TravelHistoryDTO() {
		// TODO Auto-generated constructor stub
	}

	public int getTh_num() {
		return th_num;
	}

	public void setTh_num(int th_num) {
		this.th_num = th_num;
	}

	public int getTh_req_num() {
		return th_req_num;
	}

	public void setTh_req_num(int th_req_num) {
		this.th_req_num = th_req_num;
	}

	public int getTh_gui_num() {
		return th_gui_num;
	}

	public void setTh_gui_num(int th_gui_num) {
		this.th_gui_num = th_gui_num;
	}

	public int getTh_scb_num() {
		return th_scb_num;
	}

	public void setTh_scb_num(int th_scb_num) {
		this.th_scb_num = th_scb_num;
	}

	public String getTh_case() {
		return th_case;
	}

	public void setTh_case(String th_case) {
		this.th_case = th_case;
	}

	public TravelHistoryDTO(int th_num, int th_req_num, int th_gui_num, int th_scb_num, String th_case) {
		super();
		this.th_num = th_num;
		this.th_req_num = th_req_num;
		this.th_gui_num = th_gui_num;
		this.th_scb_num = th_scb_num;
		this.th_case = th_case;
	}

	@Override
	public String toString() {
		return "TravelHistoryDTO [th_num=" + th_num + ", th_req_num=" + th_req_num + ", th_gui_num=" + th_gui_num
				+ ", th_scb_num=" + th_scb_num + ", th_case=" + th_case + "]";
	}
	
	
	
}
