<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>kakaoPayCancel</h3>

<div class="container">
	<div class="row">
	<h1>주문을 <b>취소</b>했습니다</h1>
		
		<input type="button" value="메인페이지" id="goIndex"> 
	</div>
</div>

<script type="text/javascript">
$('#goIndex').click(function() {
	location.href="../";
});


</script>
</body>
</html>