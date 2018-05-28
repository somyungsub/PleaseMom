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
	String scb_from=request.getParameter("scb_from");
	String scb_to=request.getParameter("scb_to");
	String min=request.getParameter("min");
	String max=request.getParameter("max");
	
	map.put("scb_from", "인천 국제공항");
	map.put("scb_to", "미국");
	map.put("min", min);
	map.put("max", max); 
	HashMap<String, Object> mapList= bService.list(map);
	
	List<BoardDTO> list=(List<BoardDTO>)mapList.get("list");
	List<String> start=(List<String>)mapList.get("start");
	List<String> arrival=(List<String>)mapList.get("arrival");
	System.out.println("list.BoardDTO==="+list);
	System.out.println("list.start==="+start);
	System.out.println("lis.arrivalt==="+arrival);
	System.out.println("bService==="+mapList);
	
	JSONObject jsonResult = new JSONObject();
	JSONArray jsonArray = new JSONArray();
	for(int i=0;i<list.size();i++){
		JSONObject jsonObject=new JSONObject();
		jsonObject.put("scb_mediate",list.get(i).getScb_mediate());
		jsonObject.put("scb_content",list.get(i).getScb_content());
		jsonObject.put("scb_case",list.get(i).getScb_case());
		jsonObject.put("scb_sdate",list.get(i).getScb_sdate());
		jsonObject.put("scb_mem_num",list.get(i).getScb_mem_num());
		jsonObject.put("scb_num",list.get(i).getScb_num());
		jsonObject.put("scb_title",list.get(i).getScb_title());
		jsonObject.put("scb_via",list.get(i).getScb_via());
		jsonObject.put("scb_wdate",list.get(i).getScb_wdate());
		jsonObject.put("start",start.get(i));
		jsonObject.put("arrival",arrival.get(i));
		jsonArray.add(jsonObject);
	}
	
	System.out.println("mapList---"+mapList);
	System.out.println(scb_from+"\t"+scb_to+"\t"+min+"\t"+max);
	jsonResult.put("boardListResult", jsonArray);
%>
<%= jsonResult %>