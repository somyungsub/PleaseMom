<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
	.form-group div{
		padding-left:2px;
		padding-right:2px;
	}
</style>
<div class="container">
    <form id="addMemberForm" action="AddMemberServlet" method="post">
	    <div class="row">
	        <div class="col-lg-6 col-lg-offset-3 col-xs-10 col-xs-offset-1">
        		<div class="form-group">
			      <label class="col-sm-3 control-label"><h4>아이디</h4></label>
		  	      <div class="col-sm-9">
			        <input class="form-control input-lg id-valid-ck" type="email" name="userid" placeholder="Email address" autofocus required>
			      </div>
			    </div>
			    <label class="col-sm-12 control-label valid-id"></label>
			    <div class="form-group">
			      <label class="col-xs-3 control-label"><h4>비밀번호</h4></label>
			      <div class="col-sm-9">
			        <input class="form-control input-lg" type="password" name="passwd" id="passwd" placeholder="Password" required>
			      </div>
			    </div>
			    <div class="form-group">
			      <label class="col-xs-3 control-label"><h4>비밀번호확인</h4></label>
			      <div class="col-sm-9">
			        <input class="form-control input-lg" type="password" name="passConfirm" id="passwd2" placeholder="Confirm password" required>
			      </div>
			    </div>
			    <label class="col-sm-12 control-label valid-pass"></label>
			    <div class="form-group">
			      <label class="col-xs-3 control-label"><h4>이름</h4></label>
			      <div class="col-sm-9">
			        <input class="form-control input-lg" type="text" name="username" id="passwd" required>
			      </div>
			    </div>
			    <div class="form-group">
			      <label class="col-xs-3 control-label"><h4>생년월일</h4></label>
			      <div class="col-xs-3">
				    <select class="selectpicker form-control input-lg" id="years" name="birthYear"></select>
				  </div>
				  <div class="col-xs-3">
				    <select class="selectpicker form-control input-lg" id="months" name="birthMonth"></select>
				  </div>
				  <div class="col-xs-3">
			        <select class="selectpicker form-control input-lg" id="days" name="birthDate"></select>
			      </div>
			    </div>
		    </div>
		</div>
    	<br>
        
    	<div class="row">
        	<div class="col-lg-6 col-lg-offset-3 col-xs-10 col-xs-offset-1">
        		<div class="col-xs-12">
        			<h4><input class="form-control input-lg valid-submit" type="button" value="회원가입"></h4>
        		</div>
       		</div>
    	</div>
	</form>
</div>

