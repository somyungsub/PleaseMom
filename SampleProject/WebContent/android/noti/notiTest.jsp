<%@page import="com.push.RosaPush"%>
<%@page import="com.service.MemberService"%>
<%@page import="java.util.HashMap"%>
<%-- <%@page import="com.push.RosaPush"%> --%>
<%@page import="org.slf4j.LoggerFactory"%>
<%@page import="org.slf4j.Logger"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 유저 넘버 받아오고
	// 메시지만 받아오면 끝
	String mem_num = (String)request.getParameter("mem_num");
	String mesg = (String)request.getParameter("mesg");

	MemberService service = new MemberService();
	String serverKey = "AIzaSyD4IM-VeWiSTXRI2dt2aaO_QiH9u0BYIVA";
	String clientToken = service.getToken(mem_num);
	
	RosaPush rosaPush = null;
	if(rosaPush == null){
		rosaPush = new RosaPush(serverKey);
		rosaPush.setTo(clientToken);
	}
	HashMap<String, Object> map = new HashMap<String,Object>();
	map.put("text", mesg);
	rosaPush.setData(map);
	rosaPush.push();
%>