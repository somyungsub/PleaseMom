<%@page import="java.util.Enumeration"%>
<%@page import="com.dto.MemberDTO"%>
<%@page import="com.service.MemberService"%>
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
	MemberService service = new MemberService();
	MemberDTO dto = service.catchProfile(userid);
	if(null != dto){
		searchId = dto.getMem_id(); 
	}
	System.out.println(searchId);
%>
<%= searchId %>