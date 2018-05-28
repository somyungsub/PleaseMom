<%@page import="com.dao.MemberDAO"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.dto.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Enumeration eHeader = request.getHeaderNames();
	while (eHeader.hasMoreElements()) {
	 String hName = (String)eHeader.nextElement();
	 String hValue = request.getHeader(hName);
	
	 System.out.println(hName + " : " + hValue);
	}
	 
	String userid = request.getParameter("userid");
	String searchId = "none";
	MemberDAO mDao = new MemberDAO();
	MemberDTO dto = mDao.catchProfile(userid);
	if(null != dto){
		searchId = dto.getMem_id(); 
	}
	System.out.println(searchId);
%>
<%= searchId %>