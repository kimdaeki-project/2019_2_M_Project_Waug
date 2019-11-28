<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
	<title>Home</title>
<!-- <link href="${pageContext.request.contextPath}/resources/css/home.css" rel="stylesheet"> -->

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<style type="text/css" >
#main-wrapper {
	width: 100%;
	height: 650px;
	z-index: 0;
	overflow: hidden;
	background-image: url('https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15719902424676.jpg');
	background-size: cover;
}


#main-header{
	width: 650px;
	height: 260px;
	background-color: rgba(0,0,0,0.3);
	margin-top: 195px;
	margin-left: 14%;
	z-index: 1000;
}

#main-header-items{
	width: 540px;
	height: 154px;
	position: relative;
	top: 20%;
	left: 8.5%;
	background-color: black;
	color: #ffffff;
	z-index: 1000;
}
</style>

</head>
<body>

<div id="main-wrapper">
	<div id="back-image1">
	</div>
	<div id="back-image2">
	</div>
	<div id="main-header" >
		<div id="main-header-items">
			<h1>Move1</h1>
		</div>
	</div>
</div>

<script type="text/javascript">

var images = new Array();

images[0]= "15719902677212";
images[1]= "15719902163707";
images[2]= "15719902308109";
images[3]= "15719902542974";
images[4]= "15719902424676";

var i = 0

setInterval(function(){
	
	$("#main-wrapper").css("background-image", "url(https://d2mgzmtdeipcjp.cloudfront.net/files/upload/"+images[i]+".jpg)");

	
	i = i+1;
	if(i>4){
		i=0;
	};
	
	$("#main-wrapper").fadeOut(50, function () {
        $(this).css("background-image", "url(https://d2mgzmtdeipcjp.cloudfront.net/files/upload/"+images[i]+".jpg)");
        $(this).fadeIn(50);
    });
}, 1000);

</script>
</body>
</html>
