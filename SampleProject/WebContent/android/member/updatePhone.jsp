<%@page import="org.json.simple.JSONObject"%>
<%@page import="com.dto.MemberDTO"%>
<%@page import="com.service.MemberService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String mem_phone = request.getParameter("phone");

	MemberService service = new MemberService();
	MemberDTO dto = new MemberDTO();
	dto.setMem_phone(mem_phone);
	
	service.updatePhoneNumber(dto);
	
	JSONObject obj = new JSONObject();
	obj.put("updatePhoneResult", "success");
%>
<%= obj %>