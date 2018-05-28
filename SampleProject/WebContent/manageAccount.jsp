<!DOCTYPE html>

<html lang="ko">

<head>
	<%@ page contentType="text/html;charset=UTF-8" %>
    <jsp:include page="include/header.jsp"></jsp:include>
</head>

<body>

    <jsp:include page="include/nav.jsp" flush="true"></jsp:include>
	<header class="intro-header" style="background-image: url('img/home-bg.jpg')">
        <div class="container">
            <br><br>
        </div>
    </header>
    
    <jsp:include page="updateprofile/manageAccount.jsp"></jsp:include>

    <hr>

    <jsp:include page="include/footer.jsp"></jsp:include>
	<jsp:include page="include/scripts.jsp"></jsp:include>
</body>

</html>
