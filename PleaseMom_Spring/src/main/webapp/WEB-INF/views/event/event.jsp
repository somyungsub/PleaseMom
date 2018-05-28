<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%!   int i = 0;  %>
<%
	System.out.println("HEllo");
	// response.setHeader("Content-Type" , "text/event-stream;charset=UTF-8");	//sever sent event 사용 위한 환경설정
	 response.setContentType("text/event-stream;charset=UTF-8");
	 response.setHeader("Cache-Control", "no-cache");
	 //response.setHeader("Connection", "keep-alive");
	out.print("data: Hello\n\n");
   	out.flush();
%>
data: 이벤트1,데이터1 --%>

