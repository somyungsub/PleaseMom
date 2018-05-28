<%@page import="com.service.MemberService"%>
<%@page import="com.dto.MemberDTO"%>
<%@page import="com.service.TravelHistoryService"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.Map.Entry"%>
<%@page import="java.util.Set"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="com.dto.BoardDTO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.HashMap"%>
<%@page import="com.service.BoardService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String login_mem_num= request.getParameter("login_mem_num");
	String scb_num= request.getParameter("scb_num");
	MemberService mService=new MemberService();
	BoardService bService=new BoardService();
	TravelHistoryService thService=new TravelHistoryService();
	
	MemberDTO login=mService.selectMember(Integer.parseInt(login_mem_num));
	BoardDTO bDTO=bService.selectBoard(scb_num);
	MemberDTO boardMemberDTO=mService.selectMember(bDTO.getScb_mem_num());
	MemberDTO mediateMemberDTO=new MemberDTO();
	
	HashMap<String, Integer> caseMap=new HashMap<>();
	String caseBoard="";
	int checkNum=0;
	int n=mService.updateConfirmCase(login.getMem_num());
	JSONObject jsonResult = new JSONObject();

	if(n>0){
		login.setMem_case("CONFIRM");
		session.setAttribute("login", login);
	}
	if (login.getMem_num() == boardMemberDTO.getMem_num()) {
		// 로그인한사람 -> 가이더
		int requestNum = thService.selectRequestNum(Integer.parseInt(scb_num));
		mediateMemberDTO = mService.selectMember(requestNum);// 요청자 정보얻기
		System.out.println("케이스 확인------"+login.getMem_case().equals("CONFIRM")+mediateMemberDTO.getMem_case().equals("CONFIRM"));
		if(login.getMem_case().equals("CONFIRM") && mediateMemberDTO.getMem_case().equals("CONFIRM") && bDTO.getScb_mediate().equals("Y")){
			caseMap.put("requestNum", mediateMemberDTO.getMem_num());
			caseMap.put("guiderNum", login.getMem_num());
			caseMap.put("scb_num", bDTO.getScb_num());
			checkNum=thService.confirm(caseMap);
		}
	} else {
		// 로그인한사람 -> 요청자
		int guiderNum=thService.selectGuiderNum(Integer.parseInt(scb_num));
		mediateMemberDTO=mService.selectMember(guiderNum);
		if(login.getMem_case().equals("CONFIRM") && mediateMemberDTO.getMem_case().equals("CONFIRM")){
			caseMap.put("requestNum", login.getMem_num());
			caseMap.put("guiderNum", mediateMemberDTO.getMem_num());
			caseMap.put("scb_num", bDTO.getScb_num());
			checkNum=thService.confirm(caseMap);
		}
	}
	
	if(checkNum>0){
		caseBoard="CONFIRM";
		bService.updateCase(Integer.parseInt(scb_num),caseBoard);
		mService.updateDuringCase(login.getMem_num());
		mService.updateDuringCase(mediateMemberDTO.getMem_num());
		bService.mediateCaseUpdate("N", String.valueOf(scb_num));
		request.setAttribute("check", "confirm");
		System.out.println("게시판 Confirm로 변경 성공");
	}
	
	if(login.getMem_case().equalsIgnoreCase("confirm")){
		jsonResult.put("result","true");
	}
	else{
		jsonResult.put("result","false");
	}
	
%>
<%=jsonResult %>
