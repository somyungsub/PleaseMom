<!DOCTYPE html>

<html>
<head>
	<%@ page contentType="text/html;charset=UTF-8" %>
	<jsp:include page="include/header.jsp" flush="true"></jsp:include>
</head>
<body>
	<header class="intro-header" style="background-image: url('img/home-bg.jpg')">
        <div class="container">
            <br><br>
        </div>
    </header>
    
 	<jsp:include page="include/nav.jsp" flush="true" />
	<jsp:include page="include/find.jsp"></jsp:include>
 	<jsp:include page="board/boardList.jsp" flush="true" />
 	
 	<jsp:include page="include/footer.jsp"></jsp:include>
 	
 	<jsp:include page="include/scripts.jsp"></jsp:include>

	<!-- Airplane Search JavaScript -->
	<script src="js/airportSearch.js"></script>
	
    <!-- Nation Search JavaScript -->
	<script src="js/countrySearch.js"></script>
    
</body>
</html>