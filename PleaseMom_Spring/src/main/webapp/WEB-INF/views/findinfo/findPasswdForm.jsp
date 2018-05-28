<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<form id="findPwForm" action="FindPasswdSuccessFormServlet" method="get">
    <div class="row">
        <div class="col-lg-6 col-lg-offset-3 col-md-10 col-md-offset-1">
        	<h1 align="center">비밀번호찾기</h1>
        	<hr>
			<div class="form-group">
		      <label class="col-xs-2 control-label"><h4>이메일</h4></label>
	  	      <div class="col-xs-8">
		        <input class="form-control input-lg" id="userid_findpw" type="email" name="userid" placeholder="Email address" autofocus>
		      </div>
		      <div class="col-xs-2">
		      	<input class="form-control input-lg" id="findPwBtn" type="button" value="체크">
		      </div>
		    </div>
		    <label class="col-xs-12 control-label" id="checkId"></label>
		    <label class="col-xs-12 control-label"><h5>회원가입 시 입력한 이메일과 일치 시 임시 비밀번호가 발송됩니다.</h5></label>
			<!-- <div class="form-group">
		      <label class="col-xs-3 control-label"><h4>이름</h4></label>
		      <div class="col-xs-9">
		        <input class="form-control input-lg" type="text" name="username" id="passwd">
		      </div>
		    </div>
			<div class="form-group">
		      <label class="col-xs-3 control-label"><h4>생년월일</h4></label>
		      <div class="col-xs-3">
			    <select class="selectpicker form-control" id="years" name="birthYear"></select>
			  </div>
			  <div class="col-xs-3">
			    <select class="selectpicker form-control" id="months" name="birthMonth"></select>
			  </div>
			  <div class="col-xs-3">
		        <select class="selectpicker form-control" id="days" name="birthDate"></select>
		      </div>
		    </div> -->
		</div>
	</div>
   	<div class="row">
       	<div class="col-lg-6 col-lg-offset-3 col-md-10 col-md-offset-1">
       		<div class="col-sm-12" id="showSubmit">
       		</div>
      	</div>
   	</div>
</form>