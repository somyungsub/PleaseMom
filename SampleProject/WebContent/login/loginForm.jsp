<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
	h5 a{
		margin-right: 10px;
		margin-left: 10px;
	}
</style>
<form action="LoginServlet" method="post">
	<input class="form-control input-lg" type="email" name="userid" id="userid" placeholder="아이디(E-mail)" autofocus required>
	<div id="id-valid"></div>
	<input class="form-control input-lg" type="password" name="passwd" id="passwd" placeholder="비밀번호" required>
	<div id="pass-valid"></div>
	<div id="login-valid"></div>
	<hr>
	<h4><input class="form-control input-lg" type="submit" id="submit" value="로그인"></h4>
	<br>
	<h5 align="center">
		<a href="javascript:void(0);" onClick=window.open("FindPasswdFormServlet","Ratting","width=600,height=300,0,status=0")>비밀번호찾기</a>|
		<a href="AddMemberFormServlet">회원가입</a>
	</h5>
</form>