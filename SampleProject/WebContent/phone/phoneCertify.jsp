<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<form id="phoneCertifyForm" action="PhoneCertifyResultServlet" method="get">
    <div class="row">
        <div class="col-lg-6 col-lg-offset-3 col-md-10 col-md-offset-1">
        	<h1 align="center">휴대폰 인증</h1>
        	<hr>
		    <label class="col-xs-3 control-label"><h4>인증번호</h4></label>
			<div class="form-group">
	  	      <div class="col-xs-6">
		        <input class="form-control input-lg" id="certifyNumber" type="text" name="phone2" maxlength="6" >
		      </div>
		      <div class="col-xs-3">
		      	<input class="form-control input-lg" id="certifyBtn" type="submit" value="전송">
		      </div>
		      <input type="hidden" name="phoneNumber" value="${phoneNumber}">
		    </div>
		    <label class="col-xs-12 control-label" id="checkCertifyNumber"></label>
		    <label class="col-xs-12 control-label"><h5>휴대폰으로 전송된 인증번호를 입력하세요.</h5></label>
		</div>
	</div>
</form>
<%	
	String certifyNumber = (String)request.getAttribute("certifyNumber"); 
%>
<jsp:include page="../include/scripts.jsp"></jsp:include>
<script>
$(document).ready(function () {
	$("#certifyBtn").on("click", function() {
		console.log("제발 클릭좀 되라");
		var inputNumber = $("#certifyNumber").val();
		console.log(inputNumber);
		console.log(<%= certifyNumber %>);
		if (inputNumber != <%= certifyNumber %>) {
			$("#checkCertifyNumber").html("<h5 style='color: red'>인증번호가 일치하지 않습니다.</h5>");
			event.preventDefault();
		}
	})
})
</script>