<%@page import="com.common.CommonUtil"%>
<%@page import="com.dto.ReviewDTO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   

<style type="text/css">
body {
  padding-top: 70px;
}
.btn-grey{
    background-color:#D8D8D8;
	color:#FFF;
}
.rating-block{
	background-color:#FAFAFA;
	border:1px solid #EFEFEF;
	padding:15px 15px 20px 15px;
	border-radius:3px;
}
.bold{
	font-weight:700;
}
.padding-bottom-7{
	padding-bottom:7px;
}

.review-block{
	background-color:#FAFAFA;
	border:1px solid #EFEFEF;
	padding:15px;
	border-radius:3px;
	margin-bottom:15px;
}
.review-block-name{
	font-size:16px;
	margin:10px 0;
}
.review-block-date{
	font-size:16px;
}
.review-block-title{
	font-size:16px;
	font-weight:700;
	margin-bottom:10px;
}
.review-block-description{
	font-size:16px;
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
		<c:set var="req_review" value="${writeReview.reviewList}"></c:set>
		<c:set var="gui_review" value="${writtenReview.reviewList}"></c:set>
		<%
					double avg_star = 0;
					HashMap<String,Object> map = (HashMap<String,Object>)request.getAttribute("writtenReview");
					if (map != null) {
						List<ReviewDTO> list = (List<ReviewDTO>)map.get("reviewList");
						for (int i = 0; i < list.size(); i++) {
							avg_star += list.get(i).getReview_star();
						}
						avg_star = Math.round(((avg_star / list.size())) * 10d) / 10d;
					}
				%>
		<div class="container">
		<div class="row">
			<div class="col-sm-9">
				<div class="rating-block">
					<h4>평균 별점</h4>
					<h2 class="bold padding-bottom-7"><%= avg_star %> <small>/ 5</small></h2>
				</div>
				<div class="rating-block">
					<input name="review_star" value="<%= avg_star %>" type="number" class="rating review-rating" min=0 max=5 step=0.1 data-size="sm">					
				</div>
			</div>
			<!-- 별점 분포 -->
			<!-- <div class="col-sm-3">
				<h4>Rating breakdown</h4>
				<div class="pull-left">
					<div class="pull-left" style="width:35px; line-height:1;">
						<div style="height:9px; margin:5px 0;">5 <span class="glyphicon glyphicon-star"></span></div>
					</div>
					<div class="pull-left" style="width:180px;">
						<div class="progress" style="height:9px; margin:8px 0;">
						  <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="5" aria-valuemin="0" aria-valuemax="5" style="width: 1000%">
							<span class="sr-only">80% Complete (danger)</span>
						  </div>
						</div>
					</div>
					<div class="pull-right" style="margin-left:10px;">1</div>
				</div>
				<div class="pull-left">
					<div class="pull-left" style="width:35px; line-height:1;">
						<div style="height:9px; margin:5px 0;">4 <span class="glyphicon glyphicon-star"></span></div>
					</div>
					<div class="pull-left" style="width:180px;">
						<div class="progress" style="height:9px; margin:8px 0;">
						  <div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="4" aria-valuemin="0" aria-valuemax="5" style="width: 80%">
							<span class="sr-only">80% Complete (danger)</span>
						  </div>
						</div>
					</div>
					<div class="pull-right" style="margin-left:10px;">1</div>
				</div>
				<div class="pull-left">
					<div class="pull-left" style="width:35px; line-height:1;">
						<div style="height:9px; margin:5px 0;">3 <span class="glyphicon glyphicon-star"></span></div>
					</div>
					<div class="pull-left" style="width:180px;">
						<div class="progress" style="height:9px; margin:8px 0;">
						  <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="3" aria-valuemin="0" aria-valuemax="5" style="width: 60%">
							<span class="sr-only">80% Complete (danger)</span>
						  </div>
						</div>
					</div>
					<div class="pull-right" style="margin-left:10px;">0</div>
				</div>
				<div class="pull-left">
					<div class="pull-left" style="width:35px; line-height:1;">
						<div style="height:9px; margin:5px 0;">2 <span class="glyphicon glyphicon-star"></span></div>
					</div>
					<div class="pull-left" style="width:180px;">
						<div class="progress" style="height:9px; margin:8px 0;">
						  <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="2" aria-valuemin="0" aria-valuemax="5" style="width: 40%">
							<span class="sr-only">80% Complete (danger)</span>
						  </div>
						</div>
					</div>
					<div class="pull-right" style="margin-left:10px;">0</div>
				</div>
				<div class="pull-left">
					<div class="pull-left" style="width:35px; line-height:1;">
						<div style="height:9px; margin:5px 0;">1 <span class="glyphicon glyphicon-star"></span></div>
					</div>
					<div class="pull-left" style="width:180px;">
						<div class="progress" style="height:9px; margin:8px 0;">
						  <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="1" aria-valuemin="0" aria-valuemax="5" style="width: 20%">
							<span class="sr-only">80% Complete (danger)</span>
						  </div>
						</div>
					</div>
					<div class="pull-right" style="margin-left:10px;">0</div>
				</div>
			</div>		 -->	
		</div>			
		
		<div class="row">
			<div class="col-sm-9">
				<hr/>
				<div class="review-block">
					내가 받은 후기
				</div>
				<div class="review-block">
				<c:if test="${gui_review.size() == null }">
					받은 후기가 없습니다.
				</c:if>
				<c:if test="${gui_review.size() != null }">
				<c:set var="diffDate" value="${writtenReview.diffDate}"></c:set>
				<c:forEach items="${gui_review}" var="review" varStatus="s">
					<div class="row">
						<div class="col-sm-3">
							<img src="img/${review.reqMemDto.mem_picture }" class="img-rounded" style="width:60px; height:60px">
							<div class="review-block-name">${ review.reqMemDto.mem_name }</div>
							<div class="review-block-date">${review.review_wdate }<br/>${diffDate[s.index]}</div>
						</div>
						<div class="col-sm-9">
							<input name="review_star" value="${review.review_star }" type="number" class="rating review-rating" min=0 max=5 step=0.1 data-size="sm">
							<div class="review-block-title">동행자: ${review.guiMemDto.mem_name}</div>
							<div class="review-block-title">
								${ writtenReview.airportFrom[s.index] }
								<i class="glyphicon glyphicon-arrow-right"></i>
								${ review.boardDto.scb_via }
								<i class="glyphicon glyphicon-arrow-right"></i>
								${ writtenReview.airportTo[s.index] }
							</div>
							<div class="review-block-description">${review.review_content }</div>
						</div>
					</div>
					<hr>
				</c:forEach>
				</c:if>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-9">
				<hr/>
				<div class="review-block">
					내가 작성한 후기
				</div>
				<div class="review-block">
				<c:if test="${req_review.size() == null }">
					<p>작성한 후기가 없습니다.</p>
				</c:if>
				<c:if test="${req_review.size() != null }">
				<c:set var="diffDate" value="${writeReview.diffDate}"></c:set>
				<c:forEach items="${req_review}" var="review" varStatus="s">
					<div class="row">
						<div class="col-sm-3">
							<img src="img/${review.reqMemDto.mem_picture }" class="img-rounded" style="width:60px; height:60px">
							<div class="review-block-name">${ review.reqMemDto.mem_name }</div>
							<div class="review-block-date">${review.review_wdate }<br/>${diffDate[s.index]}</div>
						</div>
						<div class="col-sm-9">
							<input name="review_star" value="${review.review_star }" type="number" class="rating review-rating" min=0 max=5 step=0.1 data-size="sm">
							<div class="review-block-title">동행자: ${review.guiMemDto.mem_name}</div>
							<div class="review-block-title">
								${ writeReview.airportFrom[s.index] }
								<i class="glyphicon glyphicon-arrow-right"></i>
								${ review.boardDto.scb_via }
								<i class="glyphicon glyphicon-arrow-right"></i>
								${ writeReview.airportTo[s.index] }
							</div>
							<div class="review-block-description">${review.review_content }</div>
						</div>
					</div>
					<hr>
				</c:forEach>
				</c:if>
				</div>
			</div>
		</div>
		<hr>
		
    </div> <!-- /container -->
		</div>
    </div>
</div>

