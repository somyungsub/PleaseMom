<%@page import="org.json.simple.parser.JSONParser"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="com.dto.MemberDTO"%>
<%@page import="java.util.HashMap"%>
<%@page import="com.service.MemberService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String mem_num = (String)request.getParameter("mem_num");
	
	MemberService mService = new MemberService();
	
	MemberDTO dto = mService.selectMember(Integer.parseInt(mem_num));
	System.out.println("요청 들어옴");
	if(dto != null){
		JSONObject obj = new JSONObject();
		obj.put("mem_num", dto.getMem_num());
		obj.put("mem_id", dto.getMem_id());
		obj.put("mem_name", dto.getMem_name());
		obj.put("mem_phone", dto.getMem_phone());
		obj.put("mem_birth", dto.getMem_birth());
		obj.put("mem_case", dto.getMem_case());
		obj.put("mem_picture", dto.getMem_picture());
		obj.put("mem_email_ck", dto.getMem_email_ck());
		obj.put("mem_phone_ck", dto.getMem_phone_ck());
%>
		<%= obj %>	
<%
	} else {
%>
		<%= "none" %>
<%
	}
%>