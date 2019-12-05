<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<nav>nav</nav>
<div>
	<div class="order_wrapper">
		<div class="order_infoBox">
			<div class="order_info_title">예약자 정보</div>
			<div class="order_info_title_text">예약자 성함과 연락처는 실제 상품을 구매하는 분의 정보를 기입해 주시기 바랍니다.</div>
			<div class="order_inputBox"><!-- input inside -->
				<label>
					<div class="order_info_fields_title">여권정보</div>
					<div class="order_fields_input">
						<input type="text" name="firstName" class="fields_name">
						<input type="text" name="lastName" class="fields_name">
					</div>
				</label>
				<label>
					<div class="order_info_fields_title">휴대전화번호</div>
					<div class="order_fields_input">
						<select>
							<option>965 Kuwait</option>
							<option>850 Korea, Democratic People's Republic of</option>
							<option>371 Latvia</option>
							<option>423 Liechtenstein</option>
							<option>423 Liechtenstein</option>
							<option>965 Kuwait</option>
							<option>850 Korea, Democratic People's Republic of</option>
							<option>371 Latvia</option>
							<option>423 Liechtenstein</option>
						</select>
						<input type="text" name="firstName" class="phone" numberonly="true">
					</div>
				</label>
				<label>
					<div class="order_info_fields_title">여권정보</div>
					<div class="order_fields_input">
						<input type="email" name="email" class="input_lg">
					</div>
				</label>
			</div>
		</div>
		<div class="order_infoBox">
			<div class="order_info_title">세부 정보</div>
			<div class="order_info_title_text">세부정보를 반드시 입력해주시기 바랍니다.</div>
			<div class="order_info_good_title">코타키나발루 3박 4일 수트라 하버 마젤란 / 전 일정 조식 + 왕복 픽업 (오후/인천 출발)</div>
			<div class="order_inputBox">
				<label>
					<div class="order_info_fields_title">메신저 ID</div>
					<div class="order_fields_input">
						<input type="text" name="sns" class="input_lg">
					</div>
					<p>메신저 종류(카카오톡 / 라인 / 페이스북메신저)와 ID를 반드시 기재해주세요.</p>
				</label>
			</div>
		</div>
		<div class="order_footer_wrapper">
			<button class="order_submit" id="info_reservation_btn">예약하기</button>
		</div>
	</div>
</div>

<script type="text/javascript">
	$('#info_reservation_btn').click(function(){
		location.href="./order";
		//alert('click!');
	});
	
</script>	
</body>
</html>