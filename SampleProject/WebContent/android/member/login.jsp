<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="com.dto.MemberDTO"%>
<%@page import="java.util.HashMap"%>
<%@page import="com.service.MemberService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String userid = (String)request.getParameter("userid");
	String passwd = (String)request.getParameter("passwd");
	
	HashMap<String,String> map = new HashMap<>();
	map.put("mem_id", userid);
	map.put("mem_passwd", passwd);
	
	MemberService mService = new MemberService();
	MemberDTO dto = mService.login(map);
	
	JSONObject json = new JSONObject();
	if(dto != null){
		json.put("mem_num", dto.getMem_num());
%>
		<%= json %>	
<%
	} else {
		json.put("mem_num", 0);
%>
		<%= json %>
<%
	}
%>