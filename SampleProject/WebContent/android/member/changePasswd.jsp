<%@page import="java.util.HashMap"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="com.dto.MemberDTO"%>
<%@page import="com.service.MemberService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String mem_num = request.getParameter("mem_num");
	String passwd = request.getParameter("passwd");
	
	HashMap<String, String> map = new HashMap<>();
	map.put("mem_num", mem_num);
	map.put("passwd", passwd);
	
	MemberService service = new MemberService();
	service.updatePasswd(map);
	
	JSONObject obj = new JSONObject();
	obj.put("changePasswdResult", "success");
%>
<%= obj %>