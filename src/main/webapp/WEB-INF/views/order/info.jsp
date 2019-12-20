<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>order/info</title>
	<link rel="stylesheet" type="text/css" href="../resources/css/order.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
<c:import url="../layout/nav.jsp"/>
<div style="margin-top:80px;">
	<div class="order_wrapper">
	<form action="./order1" method="post" id="formId">									<!-- <form action="order" method="post"> -->
	<input type="text" name="goods_num" value="${goods.goods_num}" style="background:gold" hidden="hidden"> 
		<div class="order_infoBox">
			<div class="order_info_title">예약자 정보</div>
			<div class="order_info_title_text">예약자 성함과 연락처는 실제 상품을 구매하는 분의 정보를 기입해 주시기 바랍니다.</div>
			<div class="order_inputBox"><!-- input inside -->
			<input type="text" value="${member.email}" name="email" hidden="hidden">
				<label>
					<div class="order_info_fields_title">이름</div>
					<div class="order_fields_input">
						<input type="text" name="firstName" id="fname" placeholder="first">
						<input type="text" name="lastName" id="lname" placeholder="last">
					</div>
				</label>
				<label>
					<div class="order_info_fields_title">메일</div>
					<div class="order_fields_input">
						<input type="email" name="b_email" class="input_lg" id="b_email">
					</div>
				</label>				
				<select name="b_gender">
						<option value="2">예약자</option>
					</select>
			</div>
			
					<div class="order_info_fields_title">여권정보</div>
					<div class="order_fields_input">
						<input type="text" name="passport" class="input_lg" id="passport" value="booker_passport">
					</div>
				
		</div>
<!-- ------------------------------------------------------------------------------------------------------------------------------ -->		
		
		<c:forEach begin="1" end="${option.o_people}" var="i">
		<div class="order_infoBox">
			<div class="order_info_title">사용자 정보</div>
			<div class="order_info_title_text">예약자 성함과 연락처는 실제 상품을 구매하는 분의 정보를 기입해 주시기 바랍니다.</div>
			<div class="order_inputBox"><!-- input inside -->
				<label>
					<div class="order_info_fields_title">이름</div>
					<div class="order_fields_input">
						<input type="text" name="firstName" id="fname">
						<input type="text" name="lastName" id="lname">
					</div>
				</label>
				
				<label>
					<div class="order_info_fields_title">여권정보</div>
					<div class="order_fields_input">
						<input type="text" name="passport" class="input_lg" id="passport">
					</div>
				</label>
				<br>
				<div class="order_info_fields_title">성별</div>
					<select name="b_gender">
						<option value="1">남자</option>
						<option value="0">여자</option>
					</select>
				</div>
				
		</div>
		</c:forEach>
		
		
		<div class="order_infoBox">
			<div class="order_info_title">세부 정보</div>
			<div class="order_info_title_text">세부정보를 반드시 입력해주시기 바랍니다.</div>
			<div class="order_info_good_title">${goods.title }</div>
			<div class="order_inputBox">
				<label>
					<div class="order_info_fields_title">메신저 ID</div>
					<div class="order_fields_input">
						<input type="text" name="sns" class="input_lg" id="sns">
					</div>
					<p>메신저 종류(카카오톡 / 라인 / 페이스북메신저)와 ID를 반드시 기재해주세요.</p>
				</label>
				<label>
					<div class="order_info_fields_title">방문시간</div>
					<div class="order_fields_input">
						<input type="text" name="b_visit" class="input_lg" id="b_visit">
					</div>
				</label>
			</div>
		</div>
		<div class="order_footer_wrapper">
			<button class="order_submit" id="info_reservation_btn">예약하기</button>
		</div>
		<input type="text" id="o_num" name="o_num"  value="${option.o_num}" style="background:green">
		<input type="text" id="o_tile" name="o_time"  value="${option.o_time}" style="background:tomato">
		<input type="text" id="o_num" name="o_people"  value="${option.o_people}" style="background:gray">
		<input type="text" id="o_date" name="o_date"  value="${option.o_date}" style="background:yellowgreen">
		</form>
	</div>
</div>


</body>
</html>