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
		<c:if test="${reviewList.size() == 0 }">
		<p>후기가 없습니다.</p>
		</c:if>
		<c:if test="${reviewList !=null }">
		<c:forEach items="${reviewList}" var="review" varStatus="s">
			<p>${ review.review_content }</p>
			<p>${ review.review_star }</p>
			<p>${ review.memberDto.mem_name }</p>
			<p>${ review.memberDto.mem_picture }</p>
			<p>${ airportFrom[s.index] }</p>
			<p>${ review.boardDto.scb_via }</p>
			<p>${ airportTo[s.index] }</p>
		</c:forEach>
		</c:if>
		</div>
    </div>
</div>