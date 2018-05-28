<%@page import="com.service.MemberService"%>
<%@page import="org.json.simple.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String mem_num = (String)request.getParameter("mem_num");
	String token = (String)request.getParameter("token");
	
	System.out.println("mem_num: " + mem_num);
	System.out.println("token: " + token);
	MemberService service = new MemberService();
	service.checkToken(mem_num, token);
	
	JSONObject obj = new JSONObject();
	obj.put("result", "success");
%>
<%= obj %>