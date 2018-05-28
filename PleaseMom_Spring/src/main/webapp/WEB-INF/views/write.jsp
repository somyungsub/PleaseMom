<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<jsp:include page="include/header.jsp" flush="true"></jsp:include>
</head>
<body>
	<jsp:include page="include/nav.jsp" flush="true" />
	
	<header class="intro-header" style="background-image: url('img/home-bg.jpg')">
        <div class="container">
            <br><br>
        </div>
    </header>
    
	<jsp:include page="board/write.jsp" flush="true" />
 	<hr>

    <jsp:include page="include/footer.jsp"></jsp:include>
	
    <jsp:include page="include/scripts.jsp"></jsp:include>
    
	<!-- Airplane Search JavaScript -->
	<script src="js/airportSearch.js"></script>
	<script src="js/airportSearch2.js"></script>
	
</body>
</html>