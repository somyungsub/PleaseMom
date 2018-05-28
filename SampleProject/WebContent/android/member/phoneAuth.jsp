<%@page import="org.json.simple.JSONObject"%>
<%@page import="com.authentication.SendSMS"%>
<%@page import="com.common.PasswordGenerator"%>
<%@page import="com.service.MemberService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String phone = request.getParameter("phone");
	MemberService service = new MemberService();
	Boolean bool = service.findByPhone(phone);
	
	JSONObject obj = new JSONObject();
	if(bool){
		obj.put("phoneAuthResult", "error");
	}else{
		String certifyNumber = PasswordGenerator.getCertifyNumber(6);
		SendSMS.sendSMS(phone, certifyNumber);
		obj.put("phoneAuthResult", certifyNumber);
	}
%>
<%= obj %>