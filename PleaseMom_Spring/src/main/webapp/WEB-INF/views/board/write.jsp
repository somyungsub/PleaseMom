<%@page import="java.text.SimpleDateFormat"%> 
<%@page import="java.util.Date"%> 
<%@ page language="java" contentType="text/html; charset=UTF-8" 
     pageEncoding="UTF-8"%>
<style> 
	.ui-autocomplete {
	    background: #FBF9D5;
	    font-size: 1em;
	    font-family: "Lato";
	    font-color: #B9B9B9;
	    border-radius: 0px;
	}
	.ui-autocomplete .a-name {
		margin-right: 1em;
		color: #606060;
	}
	.ui-autocomplete .a-country {
		float: right;
		color: #606060;
	}
	.ui-autocomplete .a-city {
		display: block;
		font-size: smaller;
		color: #969696; 
	}
</style>
<form name="writeBoardForm">
	<div class="row">
        <div class="col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1">
       		<div class="form-group">
		      <label class="col-sm-1 control-label"><h4>제목</h4></label>
	  	      <div class="col-sm-11">
		        <input class="form-control input-lg" type="text" name="scb_title" autofocus required>
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
		        <input class="form-control input-lg airportSearch" type="text" name="scb_from" placeholder="출발 공항" required>
		      </div>
		      <label class="col-sm-1 control-label"><h4>경유</h4></label>
		      <div class="col-sm-1"><select class="form-control" name="scb_via"> 
			 		<%for(int i=0;i<=5;i++){ 
			 				int j=i; 
			 		%><option><%=j%></option> 
			 		<% }%>
			 	</select></div>
		      <label class="col-sm-1 control-label"><h4>목적지</h4></label>
		      <div class="col-sm-4">
		        <input class="form-control input-lg airportSearch2" type="text" name="scb_to" placeholder="도착 공항" required>
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
   	        		<input class="form-control input-lg datepicker" type="text" placeholder="출발일" name="scb_sdate">
   	        	</div>
		    	<label class="col-sm-1 control-label"><h4>시간</h4></label>
			 	<div class="col-sm-3"><select class="form-control" name="hour"> 
			 		<%for(int i=1;i<=24;i++){ 
			 				int j=i; 
			 		%><option><%=j %></option> 
			 		<% }%> 
			 	</select></div>
			 	<div class="col-sm-3"><select class="form-control" name="minute"> 
			 		<%for(int i=0;i<=59;i+=5){ 
			 				int j=i; 
			 		%><option><%=j %></option> 
			 		<% }%> 
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
   	        		<textarea class="form-control input-lg" rows="5" name="scb_content"></textarea>
   	        	</div>
		    </div>
		</div>
	</div>
   	<br>
   	<div class="row">
       	<div class="col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1">
       		<div class="col-sm-6">
       			<h4><input class="form-control input-lg valid-submit" type="button" value="등록" onclick="boardWrite(writeBoardForm)"></h4>
   			</div>
   			<div class="col-sm-6">
       			<h4><input class="form-control input-lg valid-submit" type="button" value="취소" onclick="goBack()"></h4>
       		</div>
   		</div>
   	</div>
</form>
