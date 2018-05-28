<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="com.common.CommonUtil"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.dto.ReviewDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.service.ReviewService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	JSONObject jsonResult = new JSONObject();
	JSONArray jsonArray = new JSONArray();
	ReviewService service = new ReviewService();
	List<ReviewDTO> list = service.reviewAllList();
	if (list.size() != 0) {
		List<Integer> fromList = new ArrayList<Integer>();
		List<Integer> toList = new ArrayList<Integer>();
		for (ReviewDTO rdto : list) {
			fromList.add(rdto.getBoardDto().getScb_from());
			toList.add(rdto.getBoardDto().getScb_to());
		}
		List<String> airportFrom = service.airportList(fromList);
		List<String> airportTo = service.airportList(toList);
		
		List<String> diffDate = CommonUtil.differenceDate(list);
		
		for(int i = 0; i < list.size(); i++){
			JSONObject obj = new JSONObject();
			JSONObject reviewObj = new JSONObject();
			
			reviewObj.put("review_num", list.get(i).getReview_num());
			reviewObj.put("review_content", list.get(i).getReview_content());
			reviewObj.put("review_star", list.get(i).getReview_star());
			reviewObj.put("review_wdate", list.get(i).getReview_wdate());
			reviewObj.put("review_req_num", list.get(i).getReqMemDto().getMem_num());
			reviewObj.put("r_name", list.get(i).getReqMemDto().getMem_name());
			reviewObj.put("r_pic", list.get(i).getReqMemDto().getMem_picture());
			reviewObj.put("review_gui_num", list.get(i).getGuiMemDto().getMem_num());
			reviewObj.put("g_name", list.get(i).getGuiMemDto().getMem_name());
			reviewObj.put("g_pic", list.get(i).getGuiMemDto().getMem_picture());
			reviewObj.put("scb_from", list.get(i).getBoardDto().getScb_from());
			reviewObj.put("scb_via", list.get(i).getBoardDto().getScb_via());
			reviewObj.put("scb_to", list.get(i).getBoardDto().getScb_to());
			
			obj.put("diffDate", diffDate.get(i));
			obj.put("review", reviewObj);
			obj.put("airportFrom", airportFrom.get(i));
			obj.put("airportTo", airportTo.get(i));
			
			jsonArray.add(obj);
		}
		jsonResult.put("result", jsonArray);
	}
%>
<%= jsonResult %>