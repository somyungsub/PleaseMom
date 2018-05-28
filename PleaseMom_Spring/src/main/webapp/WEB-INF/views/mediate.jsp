<!DOCTYPE html>

<html lang="ko">

<head>
	<%@ page contentType="text/html;charset=UTF-8" %>
    
	<jsp:include page="include/header.jsp" flush="true"></jsp:include>

</head>

<body>

    <jsp:include page="include/nav.jsp" flush="true"></jsp:include>

    <!-- Page Header -->
    <!-- Set your background image for this header on the line below. -->
    <header class="intro-header" style="background-image: url('img/home-bg.jpg')">
        <div class="container">
            <br><br>
        </div>
    </header>

    <jsp:include page="updateprofile/mediate.jsp"></jsp:include>

    <jsp:include page="include/scripts.jsp"></jsp:include>

</body>

</html>
