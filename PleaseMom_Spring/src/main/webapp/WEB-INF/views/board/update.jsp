<%@page import="com.dto.BoardDTO"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    


<%-- <form name="myForm">
	제목<input type="text" name="scb_title" value="${retrieveMap.bDto.scb_title} ">
	출발지<input type="text" name="scb_from" value="${retrieveMap.start }">
	경유<input type="text" name="scb_via" value="${retrieveMap.bDto.scb_via }">회
	목적지<input type="text" name="scb_to" value="${retrieveMap.arrival }">
	출발일<input type="text" name="scb_sdate" value="${retrieveMap.bDto.scb_sdate}">
	글내용<input type="text" name="scb_content" value="${retrieveMap.bDto.scb_content}">
	<input type="button" value="수정하기" onclick="update(myForm)">
	<input type="button" value="취소" onclick="cancle(myForm)">
	<input type="hidden" name="scb_num" value="${retrieveMap.bDto.scb_num}">
</form> --%>
<%
	HashMap<String, Object> map = (HashMap<String, Object>)session.getAttribute("retrieveMap");

	BoardDTO dto = (BoardDTO)map.get("bDto");
	String scb_via = dto.getScb_via();
	String sDate = dto.getScb_sdate();
	String date = sDate.split(" ")[0];
	String time = sDate.split(" ")[1];
	int hour = Integer.parseInt(time.split(":")[0]);
	int min = Integer.parseInt(time.split(":")[1]);
%>
<form name="updateBoardForm">
	<input type="hidden" name="scb_num" value="${retrieveMap.bDto.scb_num}">
	<div class="row">
        <div class="col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1">
       		<div class="form-group">
		      <label class="col-sm-1 control-label"><h4>제목</h4></label>
	  	      <div class="col-sm-11">
		        <input class="form-control input-lg" type="text" name="scb_title" value="${retrieveMap.bDto.scb_title}" autofocus required>
		      </div>
		    </div>
		</div>
	</div>
	<br>
	<div class="row">
        <div class="col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1">
		    <div class="form-group">
		      <label class="col-sm-1 control-label"><h4>출발지</h4></label>
		      <div class="col-sm-4">
		        <input class="form-control input-lg airportSearch" type="text" name="scb_from" placeholder="출발공항" value="${retrieveMap.start }" required>
		      </div>
		      <label class="col-sm-1 control-label"><h4>경유</h4></label>
		      <div class="col-sm-1"><select class="form-control" name="scb_via" > 
			 		<%for(int i=0;i<=5;i++){ 
			 				int j=i; 
			 		if(scb_via.equals(String.valueOf(i))){
			 		%>
			 			<option selected>
			 		<% } else { %>
			 			<option>
			 		<% } %>
			 			<%=j%></option> 
			 		<% } %> 
			 	</select></div>
		      <label class="col-sm-1 control-label"><h4>목적지</h4></label>
		      <div class="col-sm-4">
		        <input class="form-control input-lg airportSearch" type="text" name="scb_to" placeholder="도착공항" value="${retrieveMap.arrival }" required>
		      </div>
		    </div>
		</div>
	</div>
	<br>
	<div class="row">
		<div class="col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1">
		    <div class="form-group">
		      <label class="col-sm-1 control-label"><h4>출발일</h4></label>
		      	<div class="col-sm-4 SearchForm_date">
   	        		<input class="form-control input-lg datepicker" type="text" placeholder="출발일" name="scb_sdate" value="<%= date %>">
   	        	</div>
		    	<label class="col-sm-1 control-label"><h4>시간</h4></label>
			 	<div class="col-sm-3"><select class="form-control" name="hour"> 
			 		<%for(int i=1;i<=24;i++){ 
			 				int j=i; 
			 		if(hour == i){
			 		%>
			 			<option selected>
			 		<% } else { %>
			 			<option>
			 		<% } %>
			 			<%=j%></option> 
			 		<% } %> 
			 	</select></div>
			 	<div class="col-sm-3"><select class="form-control" name="minute"> 
			 		<%for(int i=0;i<=59;i++){ 
			 				int j=i; 
			 		if(min == i){
			 		%>
			 			<option selected>
			 		<% } else { %>
			 			<option>
			 		<% } %>
			 			<%=j%></option> 
			 		<% } %> 
			 	</select></div>
		 	</div>
	    </div>
	</div>
	<br>
	<div class="row">
		<div class="col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1">
		    <div class="form-group">
		      <label class="col-sm-1 control-label"><h4>글내용</h4></label>
		      	<div class="col-sm-11">
   	        		<textarea class="form-control input-lg" rows="5" name="scb_content">${retrieveMap.bDto.scb_content}</textarea>
   	        	</div>
		    </div>
		</div>
	</div>
   	<br>
   	<div class="row">
       	<div class="col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1">
       		<div class="col-sm-6">
       			<h4><input class="form-control input-lg valid-submit" type="button" value="등록" onclick="update(updateBoardForm)"></h4>
   			</div>
   			<div class="col-sm-6">
       			<h4><input class="form-control input-lg valid-submit" type="button" value="취소" onclick="cancle(updateBoardForm)"></h4>
       		</div>
   		</div>
   	</div>
</form>