<%@page import="java.util.HashMap"%>
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
 .shape {
    border-style: solid;
    border-width: 0 100px 60px 0;
    float: right;
    height: 0px;
    width: 0px;
    -ms-transform: rotate(360deg); /* IE 9 */
    -o-transform: rotate(360deg); /* Opera 10.5 */
    -webkit-transform: rotate(360deg); /* Safari and Chrome */
    transform: rotate(3600deg);
}
.listing {
    background: #fff;
    border: 1px solid #ddd;
    box-shadow: 20px 20px 20px rgba(0, 0, 0, 0.2);
    margin: 50px 0;
    overflow: hidden;
}
.listing:hover {
    -webkit-transform: scale(1.1);
    -moz-transform: scale(1.1);
    -ms-transform: scale(1.1);
    -o-transform: scale(1.1);
    transform: rotate scale(1.1);
    -webkit-transition: all 0.4s ease-in-out;
    -moz-transition: all 0.4s ease-in-out;
    -o-transition: all 0.4s ease-in-out;
    transition: all 0.4s ease-in-out;
}
.shape {
    border-color: rgba(255,255,255,0) #d9534f rgba(255,255,255,0) rgba(255,255,255,0);
}
.listing-radius {
    border-radius: 7px;
}
.listing-danger {
    border-color: #d9534f;
}
.listing-danger .shape {
    border-color: transparent #d9533f transparent transparent;
}
.listing-success {
    border-color: #5cb85c;
}
.listing-success .shape {
    border-color: transparent #5cb75c transparent transparent;
}
.listing-default {
    border-color: #999999;
}
.listing-default .shape {
    border-color: transparent #999999 transparent transparent;
}
.listing-primary {
    border-color: #428bca;
}
.listing-primary .shape {
    border-color: transparent #318bca transparent transparent;
}
.listing-info {
    border-color: #5bc0de;
}
.listing-info .shape {
    border-color: transparent #5bc0de transparent transparent;
}
.listing-warning {
    border-color: #f0ad4e;
}
.listing-warning .shape {
    border-color: transparent #f0ad4e transparent transparent;
}
.shape-text {
    color: #fff;
    font-size: 12px;
    font-weight: bold;
    position: relative;
    right: -40px;
    top: 2px;
    white-space: nowrap;
    -ms-transform: rotate(30deg); /* IE 9 */
    -o-transform: rotate(360deg); /* Opera 10.5 */
    -webkit-transform: rotate(30deg); /* Safari and Chrome */
    transform: rotate(30deg);
}
.listing-content {
     padding: 0 20px 10px;
     margin-top: 5px;
}

.airport{
	width: 620px;
	left:30px;
	height: 170px;
	overflow: visible;
	position: relative;
}
.img-airport-default{
	float: left;
	width:150px;
	height:150px;
	position: relative;
	overflow: hidden;
}
.img-airport-reverse{
	float: right;
	width:150px;
	height:150px;
	position: relative;
	overflow: hidden;
	right: -20px;
}
.img-via{
	width:150px;
	height:150px;
	margin-left: 40%;
	position: absolute;
}
.line-deafult{
	border: 1px solid ; 
	color:rgb(153,138,0); 
	position:absolute;
	top:50px;
	left:150px;
	width:450px;
}
.line-reverse{
	border: 1px solid ; 
	color:rgb(153,138,0); 
	position:absolute;
	top:50px;
	width:450px;
}
.airport-font-default{
	position: absolute;
	top: 140px;
	text-align: center;
}
.airport-font-reverse{
	white-space: nowrap;
	position:relative;
	text-align: center;
}
.aiport-font-via{
	position: absolute;
	left: 70%;
	top: 40%;
}
.airport-reverse-img{
	width:200px;
	height:180px;
	float:right;
	position: relative;
	overflow: visible;
}
.title-font{
	
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
		
		<div class="col-xs-12 col-sm-11">
			<c:set var="requestBoardList" value="${requestBoard}"></c:set>
			<c:set var="rBoard" value="${requestBoard.boardList}"></c:set>
			<c:set var="rStart" value="${requestBoard.mediateStart}"></c:set>
			<c:set var="rArrival" value="${requestBoard.mediateArrival}"></c:set>
				
			<c:set var="guiderBoardList" value="${guiderBoard}"></c:set>
			<c:set var="gBoard" value="${guiderBoard.boardList}"></c:set>
			<c:set var="gStart" value="${guiderBoard.mediateStart}"></c:set>
			<c:set var="gArrival" value="${guiderBoard.mediateArrival}"></c:set>
			<c:set var="size" value="${size}"></c:set>
			<button id="request"> 동행요청한 게시글</button>
			<button id="guider"> 내가작성한 게시글</button>
			
			<c:if test="${ requestBoardList !=null}">
				<c:if test="${size != 0}">
					<c:forEach begin="0" end="${size-1}" varStatus="status">
						<c:if test="${rBoard[status.index].scb_case=='DURING'}">
							<div class="listing listing-radius listing-success">
						</c:if>
						<c:if test="${rBoard[status.index].scb_case=='CONFIRM'}">
							<div class="listing listing-radius listing-danger">
						</c:if>
						<a href="BoardMediateRetrieveServlet?scb_num=${rBoard[status.index].scb_num}" style="text-decoration: none;">
							<div class="shape">
                    			<div class="shape-text">${rBoard[status.index].scb_case}</div>
                			</div>
							<div class="listing-content">
								<div class="airport">
									<div>
										<img src="img/plane.png" class="img-airport-default">
										<hr class="line-deafult">
									</div>
									<div class="airport-font-default">
										${rStart[status.index]}
									</div>
								</div>
								<div class="airport">
									<div>
										<img src="img/direction.png" class="img-via">
									</div>
									<div class="aiport-font-via">
										${rBoard[status.index].scb_via}
									</div>
								</div>
								<div class="airport">
									<div class="airport-reverse-img">
										<img src="img/plane-reverse.png" class="img-airport-reverse">
										<div class="airport-font-reverse">
											${rArrival[status.index]}<br>
										</div>
									</div>
									<span>
										<img src="img/glyphicons-352-book-open.png">
										<div class="title-font">
											${rBoard[status.index].scb_title}
										</div>
									</span>
									<hr class="line-reverse">
								</div>
							</div>
						</a>
						</div>
					</c:forEach>
				</c:if>
				<c:if test="${size == 0 }">
					<div class="lead">
						<br><p>자료가 없습니다.
					</div>
				</c:if>
			</c:if>
			
			<c:if test="${ guiderBoardList !=null}">
				<c:if test="${size != 0}">
					<c:forEach begin="0" end="${size-1}" varStatus="status">
						<c:if test="${gBoard[status.index].scb_case=='DURING'}">
							<div class="listing listing-radius listing-success">
						</c:if>
						<c:if test="${gBoard[status.index].scb_case=='CONFIRM'}">
							<div class="listing listing-radius listing-danger">
						</c:if>
						<a href="BoardMediateRetrieveServlet?scb_num=${ gBoard[status.index].scb_num}" style="text-decoration: none;">
							<div class="shape">
                    			<div class="shape-text">${gBoard[status.index].scb_case}</div>
                			</div>
							<div class="listing-content">
								출발공항:${gStart[status.index]}<br>
								경유:${gBoard[status.index].scb_via}<br>
								도착공항:${gArrival[status.index]}<br>
								글제목:${gBoard[status.index].scb_title}<br>
								<hr style="border: 1px solid ; color:rgb(153,138,0);">
							</div>
						</a>
					</c:forEach>
				</c:if>	
				<c:if test="${size == 0 }">
					<div class="lead">
						<br><p>자료가 없습니다.
					</div>
				</c:if>
			</c:if>
		</div>
		</div>
		<%-- 
		<div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
				<c:set var="requestBoardList" value="${requestBoard}"></c:set>
				<c:set var="rBoard" value="${requestBoard.boardList}"></c:set>
				<c:set var="rStart" value="${requestBoard.mediateStart}"></c:set>
				<c:set var="rArrival" value="${requestBoard.mediateArrival}"></c:set>
				
				<c:set var="guiderBoardList" value="${guiderBoard}"></c:set>
				<c:set var="gBoard" value="${guiderBoard.boardList}"></c:set>
				<c:set var="gStart" value="${guiderBoard.mediateStart}"></c:set>
				<c:set var="gArrival" value="${guiderBoard.mediateArrival}"></c:set>
				<c:set var="size" value="${size}"></c:set>
			<button id="request"> 동행요청한 게시글</button>
			<button id="guider"> 내가작성한 게시글</button>
			<c:if test="${ requestBoardList !=null}">
				<c:if test="${size != 0}">
					<br>-----reqeuest----<br>
					<c:forEach begin="0" end="${size-1}" varStatus="status">
						<a href="BoardMediateRetrieveServlet?scb_num=${ rBoard[status.index].scb_num}" style="text-decoration: none;">
						<div>
							글번호:${rBoard[status.index].scb_num}<br>
							글제목:${rBoard[status.index].scb_title}<br>
							글상태:${rBoard[status.index].scb_case}<br>
							출발공항:${rStart[status.index]}<br>
							경유:${rBoard[status.index].scb_via}<br>
							도착공항:${rArrival[status.index]}<br>
							글내용:${rBoard[status.index].scb_content}<br><br>
						</div>
						</a>
					</c:forEach>
				</c:if>
				<c:if test="${size == 0 }">
					<br>자료가 없습니다.
				</c:if>
			</c:if>
			<c:if test="${ guiderBoardList !=null}">
				<c:if test="${size != 0}">
					<br>-----guider----<br>
					<c:forEach begin="0" end="${size-1}" varStatus="status">
						<a href="BoardMediateRetrieveServlet?scb_num=${ gBoard[status.index].scb_num}" style="text-decoration: none;">
							<div>
								글번호:${gBoard[status.index].scb_num}<br>
								글제목:${gBoard[status.index].scb_title}<br>
								글상태:${gBoard[status.index].scb_case}<br>
								출발공항:${gStart[status.index]}<br>
								경유:${gBoard[status.index].scb_via}<br>
								도착공항:${gArrival[status.index]}<br>
								글내용:${gBoard[status.index].scb_content}<br><br>
							</div>
						</a>
					</c:forEach>
				</c:if>	
				<c:if test="${size == 0 }">
					<br>자료가 없습니다.
				</c:if>
			</c:if> 
			
		</div>--%>
    </div>
</div>
