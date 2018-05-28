<!DOCTYPE html>

<%@page import="com.login.LoginServlet.LoginManager"%>
<html lang="ko">

<head>
	<%@ page contentType="text/html;charset=UTF-8" %>
    <jsp:include page="include/header.jsp" flush="true"></jsp:include>
</head>

<body>
    <jsp:include page="include/nav.jsp" flush="true"></jsp:include>
	<% LoginManager.getInstance().printLoginList(); %>
    <!-- Page Header -->
    <!-- Set your background image for this header on the line below. -->
    <header class="intro-header">
            <!-- <div class="video">
			<video  autoplay="autoplay" preload="auto" loop="loop" id="mainVideo">
				 <source src="video/wild.mp4" type="video/mp4">
				<source src="video/wild.webm" type="video/webm"> 
			</video>
			<div class="videotext">
	    		<p class="videomainheding">동반은 LIFE 야</p>
    			<p class="videosubheding">30만 재외 유학생과 함께 하는 동반 여행기. 우리는 하나입니다</p>
			</div>
			</div> -->
		<div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                    <div class="site-heading">
                        <h1 style="color: black">엄마를 부탁해</h1>
                        <br>
                        <h4 style="color: gray">안심하고 부모님을 해외로 초대하세요</h4>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
        </div>
    </header>

    <jsp:include page="include/find.jsp"></jsp:include>
    
    <jsp:include page="include/image-find.jsp"></jsp:include>
    
    <jsp:include page="include/footer.jsp"></jsp:include>
    
    <jsp:include page="include/scripts.jsp"></jsp:include>
	
	<!-- Airplane Search JavaScript -->
	<script src="js/airportSearch.js"></script>
	
    <!-- Nation Search JavaScript -->
	<script src="js/countrySearch.js"></script>
    
    <!-- <script>
	    $.notifyDefaults({
	    	placement: {
	    		from: "bottom",
	    		align: "right"
	    	},
	    	animate:{
	    		enter: "animated fadeInUp",
	    		exit: "animated fadeOutDown"
	    	}
	    });
    	$.notify({
    		title: '<string>엄마를 부탁해</string><div>',
    		message: "홈페이지 방문을 환영합니다!"
    		
    	})
    </script> -->
</body>

</html>
