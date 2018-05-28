<!DOCTYPE html>

<html lang="ko">

<head>
	<%@ page contentType="text/html;charset=UTF-8" %>
    
	<jsp:include page="include/header.jsp" flush="true"></jsp:include>
	
	<link href="css/star-rating.css" media="all" rel="stylesheet" type="text/css" />
	
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

    <jsp:include page="updateprofile/mediateRetrieve.jsp"></jsp:include>

    <jsp:include page="include/scripts.jsp"></jsp:include>
    
    <script src="js/star-rating.js" type="text/javascript"></script>
	
	<script>
	$("#input-rating").rating({
        starCaptions: function(val) {
            /* if (val < 3) {
                return val;
            } else {
                return 'high';
            } */
        },
        starCaptionClasses: function(val) {
           /*  if (val < 3) {
                return 'label label-danger';
            } else {
                return 'label label-success';
            } */
        	return 'label label-success';
        },
        hoverOnClear: false
    });
	</script>
</body>

</html>
