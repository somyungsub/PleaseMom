<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	DateFormat df = new SimpleDateFormat("yyyy-MM-dd");

	Date sysdate = new Date();
	Date dateNextMonth = new Date();
	dateNextMonth.setMonth(dateNextMonth.getMonth() + 1);
	
	String s_sysdate = df.format(sysdate);
	String s_dateNextMonth = df.format(dateNextMonth);
%>
<div class="img-container">
     <div class="col-lg-8 col-lg-offset-2 col-lg-8 col-lg-offset-2">
         <div class="site-heading" style="text-align:center">
         	<br>
             <h1>나라 검색</h1>
             <h5 style="color:rgba(3,3,3,0.5)">이미지를 클릭하면 해당 나라의 검색 결과로 이동합니다.</h5>
             <br>
         </div>
     </div>
    <form id="imgSearchForm" method="get" action="BoardListServlet">
    	<input type="hidden" name="scb_from" value="인천 국제공항">
    	<input type="hidden" name="scb_to" id="imgSearchCountry" value="">
    	<input type="hidden" name="min" value="<%= s_sysdate %>">
    	<input type="hidden" name="max" value="<%= s_dateNextMonth %>">
	    <div class="row">
			  <div class="col-lg-8 rm-padding-sm col-md-12 col-sm-12 img-auto">
			  	<div class="img-box">
				    <div class="img-big" style="background-image:url('https://a2.muscache.com/ac/pictures/2a4e63c3-c981-4cbc-9c37-80a6ab3a9d24.jpg?interpolation=lanczos-none&size=large&output-format=jpg&output-quality=70');-webkit-filter: saturate(6); filter: saturate(6);">
				   		<div class="img-text"><h1>미국</h1></div>
				    </div>
			    </div>
			  </div>
			  <div class="col-lg-4 col-md-6 col-sm-6 rm-padding-sm img-auto">
				  <div class="img-box">
				    <div class="img-small" style="background-image:url('https://a0.muscache.com/ic/discover/41?interpolation=lanczos-none&output-format=jpg&output-quality=70&v=33b4f2&downsize=326px:326px');">
				    	<div class="img-text"><h1>영국</h1></div>
				    </div>
				  </div>
			  </div>
			  <div class="col-lg-4 col-md-6 col-sm-6 rm-padding-sm img-auto">
			  	<div class="img-box">
				    <div class="img-small" style="background-image:url('https://a0.muscache.com/ic/discover/290?interpolation=lanczos-none&output-format=jpg&output-quality=70&v=33b4f2&downsize=326px:326px');">
				    	<div class="img-text"><h1>이탈리아</h1></div>	
				    </div>
			    </div>
			  </div>
			  <div class="col-lg-8 col-md-12 col-sm-12 rm-padding-sm img-auto">
				  <div class="img-box">
				    <div class="img-big" style="background-image:url('https://a0.muscache.com/ic/discover/397?interpolation=lanczos-none&output-format=jpg&output-quality=70&v=33b4f2&downsize=655px:326px');">
				    	<div class="img-text"><h1>프랑스</h1></div>
				    </div>
				  </div>
			  </div>
		</div>
	</form>
</div>