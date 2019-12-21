<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../resources/css/order.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
<c:import url="../layout/nav.jsp"/>
<c:import url="../layout/CityList.jsp"/>
<h1 style="color: blue">success</h1>

<div class="container">
	<div class="row">
	<h1>주문이 <b>완료</b>되었습니다
	<img src="data:image/png;base64,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" style="width: 35px; height: 35px;">
	</h1>
		<table class="table table-border">
			<tr><td>결제일시</td><td>${info.approved_at}</td></tr>
			<tr><td>주문번호</td><td>${info.partner_order_id}</td></tr>
			<tr><td>결제방법</td><td>${info.payment_method_type}</td></tr>
			<tr><td>상품명</td><td>${info.item_name}</td></tr>
			<tr><td>상품수량</td><td>${info.quantity}</td></tr>
			<tr><td>결제금액</td><td>${info.amount.total}</td></tr>
			<tr><td>주문자id</td><td>${info.partner_user_id }</td></tr>
		</table>
		<input type="button" value="메인페이지" id="goIndex"> <input type="button" value="주문내역확인" id="checkMyOrder">
	</div>
</div>

<script type="text/javascript">
$('#goIndex').click(function() {
	location.href="../";
});

$('#checkMyOrder').click(function(){
	location.href="../my/order";
})
</script>
</body>
</html>