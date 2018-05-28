<%@page import="com.dto.MemberDTO"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
			<h4><a href="#">후기</a></h4>
		</div>
		<div class="col-sm-9">
			<form class="form-horizontal" action="UpdateProfileServlet">
			</form>
			<c:set var="mediateRetrieve" value="${ mediateRetrieve}" scope="session"></c:set>
			<c:set var="mediateRetrieveDto" value="${ mediateRetrieveDto}" scope="session"></c:set>
			<c:set var="requestMember" value="${mediateRetrieveRequestMember}" scope="session"></c:set>
			<c:set var="login" value="${login}" scope="session"></c:set>
			<c:set var="approval" value="${approval}" scope="session"></c:set>
			
			<!--요청자  -->
			<%-- ${fn:replace(mediateRetrieveDto.mem_name,fn:substring(mediateRetrieveDto.mem_name,1,10),"**")}<br>
			${fn:substring("abc",1,10)}<br> --%>
			<c:if test="${login.mem_num != mediateRetrieveDto.mem_num}">
				<c:if test="${approval =='N' && mediateRetrieve.bDto.scb_case=='DURING'}">
					글작성자:${fn:replace(mediateRetrieveDto.mem_name,fn:substring(mediateRetrieveDto.mem_name,1,10),"**")}<br>
					사진:${mediateRetrieveDto.mem_picture}--모자이크 이미지<br>
					전화번호:${fn:replace(mediateRetrieveDto.mem_phone,fn:substring(mediateRetrieveDto.mem_phone,3,11),"********")}<br>
					이메일 인증:${mediateRetrieveDto.mem_email_ck}<br>
					휴대폰 인증:${mediateRetrieveDto.mem_phone_ck}<br>
					
					게시판상태:${mediateRetrieve.bDto.scb_case}<br>
					출발공항:${mediateRetrieve.start}<br>
					경유:${mediateRetrieve.bDto.scb_via}<br>
					도착공항:${mediateRetrieve.arrival}<br>
					출발시간:${mediateRetrieve.bDto.scb_sdate}<br>
				</c:if>
				<c:if test="${approval =='Y' || mediateRetrieve.bDto.scb_case=='CONFIRM'}">
					글작성자:${mediateRetrieveDto.mem_name}<br>
					사진:${mediateRetrieveDto.mem_picture}<br>
					전화번호:${mediateRetrieveDto.mem_phone}<br>
					이메일 인증:${mediateRetrieveDto.mem_email_ck}<br>
					휴대폰 인증:${mediateRetrieveDto.mem_phone_ck}<br>
			
					게시판상태:${mediateRetrieve.bDto.scb_case}<br>
					출발공항:${mediateRetrieve.start}<br>
					경유:${mediateRetrieve.bDto.scb_via}<br>
					도착공항:${mediateRetrieve.arrival}<br>
					출발시간:${mediateRetrieve.bDto.scb_sdate}<br>
				</c:if>
			</c:if>
			<!--로그인==가이더  -->
			<c:if test="${mediateRetrieveDto.mem_num==login.mem_num}">
				<c:if test="${mediateRetrieve.bDto.scb_mediate =='Y' || mediateRetrieve.bDto.scb_case=='CONFIRM' }">
				----------신청자 정보--------------<br>
				동행요청 신청자:${requestMember.mem_name}<br>
				사진:${requestMember.mem_picture}<br>
				전화번호:${requestMember.mem_phone}<br>
				이메일 인증:${requestMember.mem_email_ck}<br>
				휴대폰 인증:${requestMember.mem_phone_ck}<br>
				동행요청자 상태:${requestMember.mem_case}<br>
				</c:if>
				<c:if test="${mediateRetrieve.bDto.scb_mediate=='N' && mediateRetrieve.bDto.scb_case=='DURING'}">
				----------신청자 정보--------------<br>
				동행요청 신청자:${fn:replace(requestMember.mem_name,fn:substring(requestMember.mem_name,1,10),"**")}<br>
				사진:${requestMember.mem_picture}---모자이크처리하기<br>
				전화번호:${fn:replace(requestMember.mem_phone,fn:substring(requestMember.mem_phone,3,11),"********")}<br>
				이메일 인증:${requestMember.mem_email_ck}<br>
				휴대폰 인증:${requestMember.mem_phone_ck}<br>
				동행요청자 상태:${requestMember.mem_case}<br>
				</c:if>
			</c:if>
			<%-- <br>
			글작성자 = mediateRetrieveDto.mem_case: ${mediateRetrieveDto.mem_case}<br>
			login.mem_case : ${login.mem_case }<br>
			mediate_case : ${mediateRetrieve.bDto.scb_mediate}<br>
			approval=${approval}<br> --%>
			approval===${approval}<br>
			<c:if test="${mediateRetrieve.bDto.scb_mem_num==login.mem_num && mediateRetrieve.bDto.scb_case!='CONFIRM'}">
				<c:if test="${approval =='N'}">
					<button name="mediateApproval"  <c:if test="${approval=='Y'}">disabled="disabled" style="text-decoration: none;background-color: rgb(100,100,100);"</c:if> onclick="mediateApprovalfunction('Y',${mediateRetrieve.bDto.scb_num})">요청수락</button>
					<button name="mediateList" onclick="mediateListfunction()">목록보기</button>
				</c:if>
			</c:if>
			<c:if test="${mediateRetrieve.bDto.scb_mem_num!=login.mem_num && approval=='N' && mediateRetrieve.bDto.scb_case!='CONFIRM'}">
				<button name="mediateList" onclick="mediateListfunction()">목록보기</button>
			</c:if>
			<%-- <c:if test="${approval!=null}"> --%>
			
				<c:if test="${login.mem_case=='DURING' && approval=='Y'}" >
					<button name="mediateConfirm" onclick="mediateConfirmfunction()">동행승인</button>		
					<button name="mediateCancle" onclick="mediateCancelfunction()">동행취소</button>		
					<button name="mediateList" onclick="mediateListfunction()">목록보기</button>
				</c:if>
				
				<c:if test="${ login.mem_case=='CANCEL' && mediateRetrieve.bDto.scb_case=='DURING' && approval=='Y'}">
					<button name="mediateCancle" onclick="mediateCancelfunction()" <c:if test="${login.mem_case=='CANCEL' }">disabled="disabled" style="text-decoration: none;background-color: rgb(100,100,100);"</c:if>>동행취소</button>		
					<button name="mediateList" onclick="mediateListfunction()">목록보기</button>
				</c:if>
				
				<c:if test="${login.mem_case=='CONFIRM' && mediateRetrieve.bDto.scb_case=='DURING' && approval =='Y'}" >
					<button name="mediateConfirm" onclick="mediateConfirmfunction()" <c:if test="${login.mem_case=='CONFIRM'}">disabled="disabled" style="text-decoration: none;background-color: rgb(100,100,100);"</c:if>>동행승인</button>
					<button name="mediateList" onclick="mediateListfunction()">목록보기</button>
				</c:if>
			<%-- </c:if> --%>
			<c:if test="${mediateRetrieve.bDto.scb_case=='CONFIRM'}">
				<button name="mediateList" onclick="mediateListfunction()">목록보기</button>
					완료됨 - > 후기계시판!!!만들기
			</c:if>
			
			<%
				String check=(String)request.getAttribute("check");
				if (check != null) {
					if (check.equals("cancel") || check.equals("confirm")) {
						MemberDTO loginDto = (MemberDTO) session.getAttribute("login");
						MemberDTO dto=(MemberDTO)session.getAttribute("mediateRetrieveRequestMember");
						dto.setMem_case("DURING");
						System.out.println("DUring dto==="+dto);
						loginDto.setMem_case("DURING");
					}
				}
			%>
		</div>
    </div>
</div>
