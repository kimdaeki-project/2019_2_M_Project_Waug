<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="refresh" content="5; url=/p1/">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<style type="text/css">
.error-wrapper{
	width: 100%;
	height: 536px;
}
.error-box{
	width: 42%;
	height: 316px;
	flex-direction : row;
	margin: 110px auto;
	display: flex;
}
.error-img{
width: 509px;
height: 316px;
background: url("https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15736967665726.svg");
}
.error-message-box{
display: flex;
flex-direction: column;
margin: auto 0px;
width: 290px;
height: 119px;

}
.error-title{
margin-bottom: 10px;
font-size: 25px;
text-align: center;
font-weight: bold;
}
.error-msg{
font-size: 15px;
text-align: center;
color: #999999;
}
</style>
</head>
<body>
<div class="error-wrapper">
	<div class="error-box">
		<div class="error-img">
		</div>
		<div class="error-message-box">
			<div class="error-title">404 에러
			</div>
			<div class="error-msg">해당 페이지는 존재하지 않습니다.
			</div>
			<div class="error-msg">5 초 후에 홈페이지로 이동합니다.
			</div>
			<div class="error-msg">바로 이동을 원하시면,
				<a style="color:#d91c84" href="/p1/">여기</a>를 클릭하세요.
			</div>
		</div>
	</div>
</div>
</body>
</html>