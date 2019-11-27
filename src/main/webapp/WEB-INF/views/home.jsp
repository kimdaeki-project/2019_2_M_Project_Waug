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
</head>
<body>
<div id="back-image" style="width: 100%; height: 650px; z-index:0; overflow:hidden;
	background-image: url('https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15719902424676.jpg'); background-size: cover;">
	<div id="main-header" style="width: 650px; height: 260px; background-color: rgba(0,0,0,0.3); margin-top: 195px; margin-left: 14%;">
		<div id="main-header-items" style="width: 540px; height: 154px; position: relative; top:20%; left:8.5%;  background-color: black;
		color: #ffffff;">
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
	
	$("#back-image").css("background-image", "url(https://d2mgzmtdeipcjp.cloudfront.net/files/upload/"+images[i]+".jpg)");
	i = i+1;
	if(i>4){
		i=0;
	}
}, 10000);

</script>
</body>
</html>
