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
	HashMap<String, String> map=new HashMap<>();
	BoardService bService=new BoardService();
	TravelHistoryService thService=new TravelHistoryService();
	String login_num=(String)request.getParameter("login_num");
	
	List<Integer> th_req_numList=null;
	List<Integer> th_gui_numList=null;
	
	HashMap<String,Object> requestBoard=null;
	HashMap<String,Object> guiderBoard=null;
	
	th_req_numList=thService.mediateInfoRequestList(Integer.parseInt(login_num));
	th_gui_numList=thService.mediateInfoGuiderList(Integer.parseInt(login_num));
	
	requestBoard=bService.mediateBoardList(th_req_numList);//동행요청 게시글정보,출발 공항이름,도착공항이름
	guiderBoard=bService.mediateBoardList(th_gui_numList);//내가 작성한 게시글정보,출발 공항이름,도착공항이름
	
	List<String> requestListStart=(List<String>)requestBoard.get("mediateStart");
	List<String> guiderListStart=(List<String>)guiderBoard.get("mediateStart");

	List<String> requestListArrival=(List<String>)requestBoard.get("mediateArrival");
	List<String> guiderListArrival=(List<String>)guiderBoard.get("mediateArrival");

	List<BoardDTO> requestListBoard=(List<BoardDTO>)requestBoard.get("boardList");
	List<BoardDTO> guiderListBoard=(List<BoardDTO>)guiderBoard.get("boardList");
	
	System.out.println("requestListStart==="+requestListStart);
	System.out.println("guiderListStart==="+guiderListStart);
	System.out.println("requestListArrival==="+requestListArrival);
	System.out.println("guiderListArrival==="+guiderListArrival);
	System.out.println("requestListBoard==="+requestListBoard);
	System.out.println("guiderListBoard==="+guiderListBoard);
	
	
	JSONObject jsonResult = new JSONObject();
	JSONArray jsonArray = new JSONArray();
	for(int i=0;i<requestListBoard.size();i++){
		JSONObject jsonObject=new JSONObject();
		jsonObject.put("scb_mediate",requestListBoard.get(i).getScb_mediate());
		jsonObject.put("scb_content",requestListBoard.get(i).getScb_content());
		jsonObject.put("scb_case",requestListBoard.get(i).getScb_case());
		jsonObject.put("scb_sdate",requestListBoard.get(i).getScb_sdate());
		jsonObject.put("scb_mem_num",requestListBoard.get(i).getScb_mem_num());
		jsonObject.put("scb_num",requestListBoard.get(i).getScb_num());
		jsonObject.put("scb_title",requestListBoard.get(i).getScb_title());
		jsonObject.put("scb_via",requestListBoard.get(i).getScb_via());
		jsonObject.put("scb_wdate",requestListBoard.get(i).getScb_wdate());
		jsonObject.put("start",requestListStart.get(i));
		jsonObject.put("arrival",requestListArrival.get(i));
		jsonArray.add(jsonObject);
		
	}
	jsonResult.put("request", jsonArray);
	jsonArray=new JSONArray();
	for(int i=0;i<guiderListBoard.size();i++){
		JSONObject jsonObject=new JSONObject();
		jsonObject.put("scb_mediate",guiderListBoard.get(i).getScb_mediate());
		jsonObject.put("scb_content",guiderListBoard.get(i).getScb_content());
		jsonObject.put("scb_case",guiderListBoard.get(i).getScb_case());
		jsonObject.put("scb_sdate",guiderListBoard.get(i).getScb_sdate());
		jsonObject.put("scb_mem_num",guiderListBoard.get(i).getScb_mem_num());
		jsonObject.put("scb_num",guiderListBoard.get(i).getScb_num());
		jsonObject.put("scb_title",guiderListBoard.get(i).getScb_title());
		jsonObject.put("scb_via",guiderListBoard.get(i).getScb_via());
		jsonObject.put("scb_wdate",guiderListBoard.get(i).getScb_wdate());
		jsonObject.put("start",guiderListStart.get(i));
		jsonObject.put("arrival",guiderListArrival.get(i));
		jsonArray.add(jsonObject);
		
	}
	jsonResult.put("guider", jsonArray);
	
%>
<%=jsonResult %>
