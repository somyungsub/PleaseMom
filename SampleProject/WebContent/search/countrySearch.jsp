<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="com.dto.AirportInfoDTO"%>
<%@page import="com.service.AirportService"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name = request.getParameter("value");

	AirportService service = new AirportService();
	List<AirportInfoDTO> list = service.nationSearch(name);
	
	// airplaneInfo의 JSON정보를 담을 Array 선언
	JSONArray jsonArray = new JSONArray();
	
	for(AirportInfoDTO dto : list){
		// airplaneInfo 하나의 정보가 들어갈 JSONObject 선언
		JSONObject countryInfo = new JSONObject();
		
		countryInfo.put("country", dto.getCountry_kr());
		countryInfo.put("location", dto.getLocation());
		jsonArray.add(countryInfo);
	}
%>
<%= jsonArray %>