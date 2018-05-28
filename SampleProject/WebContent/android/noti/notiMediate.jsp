<%@page import="com.dto.MemberDTO"%>
<%@page import="com.push.RosaPush"%>
<%@page import="com.service.MemberService"%>
<%@page import="java.util.HashMap"%>
<%@page import="org.slf4j.LoggerFactory"%>
<%@page import="org.slf4j.Logger"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String mem_num = (String)request.getParameter("mem_num");
	String mesg = (String)request.getParameter("mesg"); // apply or cancel
	
	MemberService service = new MemberService();
	MemberDTO dto = service.selectMember(Integer.parseInt(mem_num));
	
	String text = "";
	if(("apply").equals(mesg)){
		text = dto.getMem_name() + "님께서 동행요청 하셨습니다.";
	} else if(("cancel").equals(mesg)){
		text = dto.getMem_name() + "님께서 동행요청 취소하셨습니다.";
	}
	
	
	String serverKey = "AIzaSyD4IM-VeWiSTXRI2dt2aaO_QiH9u0BYIVA";
	String clientToken = service.getToken(mem_num);
	
	RosaPush rosaPush = null;
	if(rosaPush == null){
		rosaPush = new RosaPush(serverKey);
		rosaPush.setTo(clientToken);
	}
	
	HashMap<String, Object> map = new HashMap<String,Object>();
	map.put("text", text);
	//map.put("click_action",""); 액션값 추가를 통한 눌렀을 때 화면 이동
	rosaPush.setData(map);
	rosaPush.push();
%>