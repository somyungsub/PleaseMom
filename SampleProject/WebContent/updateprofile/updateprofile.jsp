<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   

<style type="text/css">

 .abc{
 	form-control : none !important;
 	input-lg : none !important;
 }
 .blue{
   color:blue;
 }
 .red{
   color:red;
 }
</style>

<div class="container">
    <div class="row">
        <div class="col-sm-3">
			<h4><a href="UpdateProfileFormServlet">프로필 수정</a></h4>
			<h4><a href="BoardMediateListServlet">중개 현황</a></h4>
			<h4><a href="BoardReviewListServlet">후기</a></h4>
		</div>
		<div class="col-sm-9">
			<form class="form-horizontal" action="UpdateProfileServlet">
			  <h1>필수정보</h1>
			  <hr>
			  <div class="form-group">
			    <label class="col-sm-3 control-label">아이디</label>
			    <div class="col-sm-9">
			      <input class="form-control input-lg" type="email" name="userid" value="${prof.mem_id}" autofocus readonly="readonly">
			    </div>
			  </div>
			  <div class="form-group">
			    <label class="col-sm-3 control-label">비밀번호</label>
			    <div class="col-sm-9">
			      <input class="form-control input-lg" type="password" name="passwd" id="passwd" placeholder="Password" required>
			    </div>
			  </div>
			  <div class="form-group">
			    <label class="col-sm-3 control-label">비밀번호 확인</label>
			    <div class="col-sm-9">
			      <input class="form-control input-lg" type="password" name="passwd" id="passwd" placeholder="Confirm Password" required>
			    </div>
			  </div>
			  <div class="form-group">
			    <label class="col-sm-3 control-label">전화번호</label>
			    <div class="col-sm-9">
			    <c:set var="xxx" value="${prof.mem_phone}" scope="session"></c:set>
			      <c:if test="${xxx == null}">
			      <input class="form-control input-lg" type="text" name="phone" readonly="readonly">
			      </c:if>
			      <c:if test="${xxx != null}">
			      <input class="form-control input-lg" type="text" name="phone" readonly="readonly" value="${prof.mem_phone}">
			      </c:if>
			    </div>
			  </div>
			  <div class="form-group">
			    <label class="col-sm-3 control-label">생일</label>
			    <div class="col-sm-9">
			    	<input class="form-control input-lg" type="text" name="birth" value="${prof.mem_birth}" readonly="readonly">
			    </div>
			  </div>
			  <div class="form-group">
			    <label class="col-sm-3 control-label">이름</label>
			    <div class="col-sm-9">
			    	<input class="form-control input-lg" type="text" name="username" value="${prof.mem_name}" required>
			    </div>
			  </div>
			  <hr style="margin-top: 100px;margin-bottom: 100px;height: 1px;background-color: black">
			  <h1>선택정보</h1>
			  <hr>
			  프로필 사진 등록
			  <br>
			  <input class="form-control input-lg" type="submit" value="수정">
			</form>
		</div>
    </div>
</div>