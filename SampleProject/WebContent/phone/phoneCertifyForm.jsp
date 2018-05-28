<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<form id="phoneCertifyForm" action="PhoneCertifyServlet" method="get">
    <div class="row">
        <div class="col-lg-6 col-lg-offset-3 col-md-10 col-md-offset-1">
        	<h1 align="center">휴대폰 인증</h1>
        	<hr>
		    <label class="col-xs-12 control-label"><h4>휴대폰 번호</h4></label>
			<div class="form-group">
	  	      <div class="col-xs-3">
		        <select class="form-control input-lg" id="phoneCertifyNumber1" name="phone1" >
		        	<option selected="selected">010</option>
		        	<option>016</option>
		        	<option>017</option>
		        </select>
		      </div>
	  	      <div class="col-xs-3">
		        <input class="form-control input-lg" id="phoneCertifyNumber2" type="text" name="phone2" onkeydown='return onlyNumber(event)' onkeyup='removeChar(event)' maxlength="4" >
		      </div>
	  	      <div class="col-xs-3">
		        <input class="form-control input-lg" id="phoneCertifyNumber3" type="text" name="phone3" onkeydown='return onlyNumber(event)' onkeyup='removeChar(event)' maxlength="4" >
		      </div>
		      <div class="col-xs-3">
		      	<input class="form-control input-lg" id="phoneCertifyBtn" type="submit" value="인증하기">
		      </div>
		    </div>
		    <label class="col-xs-12 control-label" id="checkPhone"></label>
		    <label class="col-xs-12 control-label"><h5>입력하신 휴대폰번호로 인증번호가 발송되니 올바른 휴대폰번호를 입력해주세요.</h5></label>
		</div>
	</div>
   	<div class="row">
       	<div class="col-lg-6 col-lg-offset-3 col-md-10 col-md-offset-1">
       		<div class="col-sm-12" id="showSubmit">
       		</div>
      	</div>
   	</div>
</form>