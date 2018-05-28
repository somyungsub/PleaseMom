<%@page import="org.json.simple.JSONObject"%>
<%@page import="com.dto.MemberDTO"%>
<%@page import="com.service.MemberService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String mem_num = request.getParameter("mem_num");
	String passwd = request.getParameter("passwd");
	
	MemberService service = new MemberService();
	String passConfirm = service.getPasswd(mem_num);
	
	JSONObject obj = new JSONObject();
	if(passConfirm.equals(passwd)){
		obj.put("passConfirmResult", "success");
	} else{
		obj.put("passConfirmResult", "error");		
	}
%>
<%= obj %>