<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>   
 <%@ taglib prefix="c-rt" uri="http://java.sun.com/jstl/core_rt" %> 
<style>
	.upper-content{
		color: #7E7E7E;
		position: absolute;
		top: 25px;
		font-size: 15px;
	}
	.upper-content-time{
		color: #7E7E7E;
		position: absolute;
		top: 100px;
		left: 300px;
		font-size: 15px;
	}
</style>
<div class="container">
	<div class="row">
		<div class="col-lg-12 col-md-12">
				<c:forEach var="board" items="${page.list}" varStatus="s">
					<c:if test="${board != null}">
					<%-- <a href="BoardRetrieveServlet?scb_num=${board.scb_num}"></a> --%>
					<div class="board-container col-lg-6 col-md-6 col-sm-12 col-xs-12">
						<input type="hidden" value="${board.scb_num}" id="boardRetrieveScbNum">
						<div class="board-content" onclick="boardRetrieveTest(${board.scb_num})">
							<div class="status ">
								<c:if test="${board.scb_case == 'WAIT'}">
									<img src="img/ic_sub.jpg">
								</c:if>
								<c:if test="${board.scb_case == 'DURING'}">
									<img src="img/ic_pro.jpg">
								</c:if>
								<c:if test="${board.scb_case == 'CONFIRM'}">
									<img src="img/ic_com.jpg">
								</c:if>	
							</div>
							<div class="contents">
								<div class="location">
									<img src="img/plane.png" style="width:20px; height:20px"></img>
									<span class="upper-content">출발공항</span>
									<div class="from-to">
										<div><h4>${start[s.index]}</h4></div>
									</div>
									<img src="img/right-arrow.png" style="width:20px; height:20px"></img>
									<span class="upper-content">경유</span>
									<div class="via">
										<div><h4>${board.scb_via}회</h4></div>
									</div>
									<img src="img/right-arrow.png" style="width:20px; height:20px"></img>
									<span class="upper-content">도착공항</span>
									<div class="from-to">
										<div><h4>${arrival[s.index]}</h4></div>
									</div>
								</div>
								<div class="board-date-time">
									<span class="upper-content-time">출발시간</span>
									<div><h4>${board.scb_sdate}</h4></div>
								</div>
								<div class="board-title">
									<div>${board.scb_title}</div>
								</div>
							</div>
						</div>
					</div>
					</c:if>
				</c:forEach>
			<jsp:include page="page.jsp" flush="true" />
		</div>
	</div>
</div>
<script>
function boardRetrieveTest(scb_num) {
	location.href="BoardRetrieveServlet?scb_num=" + scb_num;
}
</script>