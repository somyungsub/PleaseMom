<%@page import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@page import="org.springframework.web.context.WebApplicationContext"%>
<%@page import="com.dto.MemberDTO"%>
<%@page import="com.dao.MemberDAO"%>
<%@page import="com.dao.AirportDAO"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="com.dto.AirportInfoDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name = (String)request.getParameter("value");

	WebApplicationContext wac = WebApplicationContextUtils.getRequiredWebApplicationContext(getServletContext());
	AirportDAO aDao = (AirportDAO)wac.getBean("AirportDAO");
	
	List<AirportInfoDTO> list = aDao.airportSearch(name);
	
	// airplaneInfo의 JSON정보를 담을 Array 선언
	JSONArray jsonArray = new JSONArray();
	
	for(AirportInfoDTO dto : list){
		// airplaneInfo 하나의 정보가 들어갈 JSONObject 선언
		JSONObject airplaneInfo = new JSONObject();
		
		airplaneInfo.put("name", dto.getName_kr());
		airplaneInfo.put("country", dto.getCountry_kr());
		airplaneInfo.put("city", dto.getCity_kr());
		jsonArray.add(airplaneInfo);
	}
%>
<%= jsonArray %>