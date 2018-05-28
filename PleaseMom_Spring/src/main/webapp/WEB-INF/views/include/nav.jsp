<%@page import="java.util.Date"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.List"%>
<%@page import="com.dto.MemberDTO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Navigation -->
    <nav class="navbar navbar-default navbar-custom navbar-fixed-top">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    Menu <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand" href="home">Mom</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                	<c:if test="${ sessionScope.login == null }">
                		<li>
                			<a href="#" onclick="boardWriteUI()">글쓰기</a>
                		</li>
	                    <li>
	                        <a href="AddMemberFormServlet">회원가입</a>
	                    </li>
	                    <li>
	                        <a href="LoginFormServlet">로그인</a>
	                    </li>
                    </c:if>
                    <c:if test="${ sessionScope.login != null }">
                    	<li>
                			<a href="#" onclick="boardWriteUI()">글쓰기</a>
                		</li>
	                    <li class="dropdown">
	                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">메시지<span class="caret"></span></a>
	                        <ul class="dropdown-menu message-menu">
	                        	 
	                        </ul>
	                    </li>
	                    <li class="dropdown">
				          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">이름 <span class="caret"></span></a>
				          <ul class="dropdown-menu">
				            <li><a href="UpdateProfileFormServlet">마이페이지</a></li>
				            <li><a href="ManageAccountFormServlet">계정 관리</a></li>
				            <li role="separator" class="divider"></li>
				            <li><a href="LogoutServlet">로그아웃</a></li>
				          </ul>
				        </li>
                    </c:if>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
<script>
<%-- <%
	LoginManager lm = LoginManager.getInstance();
	MemberDTO dto = (MemberDTO)session.getAttribute("login");
	double noneAccessedTime = (new Date().getTime() - session.getLastAccessedTime()) / 1000;
	if(session.isNew()){
		System.out.println(session.getMaxInactiveInterval());
		if(noneAccessedTime > session.getMaxInactiveInterval()){
%>
			alert("세션이 만료되었습니다.");
<%
		}else{
%>
			alert("중복 로그인이 발생하여 세션이 종료되었습니다.");
<%
		}
	}
%> --%>

<%
	String msgLogin = (String)request.getAttribute("msgLogin");
	if(msgLogin != null){
%>
	alert("<%= msgLogin %>");
<%
	}
%>

<%
	String msgLogout = (String)request.getAttribute("msgLogout");
	if(msgLogout != null){
%>
	alert("<%= msgLogout %>");
<%
	}
%>
	function boardWriteUI(f){
		<% if ((MemberDTO)session.getAttribute("login")==null){
			%>
			alert("로그인을 하세요");
			location.href = "LoginFormServlet";
		<%}else{%>
		
		location.href = "BoardWriteUIServlet";
		<%}%>
	}
</script>