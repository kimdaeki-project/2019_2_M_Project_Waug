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
		<div class="order_infoBox">
			<div class="order_info_title">예약자 정보</div>
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
						<input type="text" name="phone" class="phone" numberonly="true" id="phone">
					</div>
				</label>
				<label>
					<div class="order_info_fields_title">여권정보</div>
					<div class="order_fields_input">
						<input type="email" name="passport" class="input_lg" id="passport">
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
						<input type="text" name="sns" class="input_lg" id="sns">
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
var checkFname=false;
var checkLname=false;
var checkPhone=false;
var checkPassport=false;
var checkSNS=false;
$('#sns').blur(function(){
	checkSNS=checkIsVal($('#sns').val());
	console.log("checkSNS : "+checkSNS);
})
$('#passport').blur(function(){
	checkPassport=checkIsVal($('#passport').val());
	console.log("checkPassport : "+checkPassport);
});
$('#phone').blur(function(){
	checkPhone=checkIsVal($('#phone').val());
	console.log("checkPhone : "+checkPhone);
});
$('#fname').blur(function(){
	checkFname=checkIsVal($('#fname').val());
	console.log("fname : "+checkFname);
})
$('#lname').blur(function(){
	checkLname=checkIsVal($('#lname').val());
	console.log("checkLname : "+checkLname);
});
function checkIsVal(value){
	value.trim();
	if(value!=""){
		return true;
	}
	else{return false;}
}

	//예약하기 버튼 눌렀을때 다음페이지 넘어가기
	$('#info_reservation_btn').click(function(){
		if(checkFname&&checkLname&&checkPhone&&checkPassport&&checkSNS){
			location.href="./order";			
		}
		else{
			alert('모두 입력해주세요');
		}
	});

	
	
	
	
</script>	
</body>
</html>