<%@page import="org.json.simple.JSONObject"%>
<%@page import="com.service.MemberService"%>
<%@page import="com.dto.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String mem_id = request.getParameter("mem_id");
	String mem_passwd = request.getParameter("mem_passwd");
	String mem_name = request.getParameter("mem_name");
	String mem_birth = request.getParameter("mem_birth");
	
	MemberDTO dto = new MemberDTO();
	dto.setMem_id(mem_id);
	dto.setMem_passwd(mem_passwd);
	dto.setMem_name(mem_name);
	dto.setMem_birth(mem_birth);
	
	MemberService service = new MemberService();
	service.addMember(dto);
	
	JSONObject obj = new JSONObject();
	obj.put("registResult", "success");
%>
<%= obj %>