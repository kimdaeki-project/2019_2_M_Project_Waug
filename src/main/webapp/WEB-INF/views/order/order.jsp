<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="../resources/css/order.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
   	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
   	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	<title>order</title>
</head>
<body>
<c:import url="../layout/nav.jsp"/>
<div class="order_container">

	<div class="order_row">
		<!-- left -->
		<input value="${goods.goods_num}" style="background:gold">
		<div class="order_col_md">
			<div class="order_user_infoBox">
				<div class="order_user_infoBox_title">예약자 정보</div>
				<table class="order_user_info_table">
					<tr><td>여권상 영문명</td><td>huh jaeyong</td></tr>
					<tr><td>여권상 영문명</td><td>huh jaeyong</td></tr>
					<tr><td>여권상 영문명</td><td>huh jaeyong</td></tr>
				</table>
			</div>
			<div class="order_user_infoBox">
				<div class="order_user_infoBox_title">Reservation Info</div>
				<div class="order_reser_info">
					<img src="sample.jpg">
					<div class="order_reser_info_text">
						<b>${goods.title}</b>
						<p>display: inline-block;display: inline-block;</p>
					</div>
				</div>
				<div class="order_reser_options">
					<div class="order_reser_option_left">left side <p>성인</p></div>
					<div class="order_reser_option_right">4500 x 1</div>
				</div>
				<div class="order_reser_options">
					<div class="order_reser_option_left">left side <p>성인</p></div>
					<div class="order_reser_option_right">4500 x 1</div>
				</div>
				<div class="order_reser_border"></div>
					<div class="order_reser_options">
						<div class="order_reser_option_left">호텔 & 리조트명</div>
						<div class="order_reser_option_right">adsf</div>
					</div>
					<div class="order_reser_options">
						<div class="order_reser_option_left">호텔 & 리조트 주소</div>
						<div class="order_reser_option_right">asfd123142</div>
					</div>
			</div>
		</div>
		<!-- right -->
		 <div class="order_col_md">
		 	<div class="order_user_infoBox">
		 		<div class="order_user_infoBox_title">결제 수단</div>
		 		<div class="order_reser_info">
		 			<div class="order_reser_pay" id="waugPay">
		 				<img src="pay_waug.svg">
		 				<span>Waug pay</span>
		 			</div>
		 			<div class="order_reser_pay" id="creditCard">
		 				<img src="pay_waug.svg">
		 				<span>Credit card</span>
		 				<div class="pay_credit stopPropagation">
		 					<div class="pay_credit_title">카드 종류</div>
		 					<div class="credit_kind ">
		 						<div class="card">신한</div><div class="card">국민</div><div class="card">농협</div><div class="card">우리</div>
		 						<div class="card">하나</div><div class="card">IBK</div>

		 					</div>
		 					<div class="credit_kind">
		 						<select class="credit_select">
		 							<option selected="selected">다른 카드 선택</option>
		 							<option>카카오뱅크</option>
		 							<option>외환은행</option>
		 							<option>새마을금고</option>
		 							<option>수협은행</option>
		 							<option>CITY BANK</option>
		 							<option>KDB 산업은행</option>
		 						</select>
		 					<div class="pay_credit_title">할부 선택</div>
		 						<select class="credit_select">
		 							<option>1개월</option>
		 							<option>3개월</option>
		 							<option>6개월</option>
		 						</select>	
		 					<div class="pay_credit_title"><strong><b>무이자 할부 안내</b></strong></div>
		 					</div>
		 				</div>
		 			</div>
		 			<div class="order_reser_pay" id="mobilePay">
		 				<img src="pay_waug.svg">
		 				<span>Mobile</span>
		 			</div>
		 			<div class="order_reser_pay" id="kakaopay">
		 				<img src="https://image.flaticon.com/icons/svg/2111/2111683.svg">
		 				<span>kakaopay</span>
		 			</div>
		 		</div>
		 	</div>
		 	<div class="order_user_infoBox">
		 		<div class="order_user_infoBox_title">프로모션 코드 & 포인트 사용</div>
		 		<div class="order_reser_info">
		 			<div class="order_reser_coupon_title">쿠폰 사용</div>
		 			<div class="apply_couponANDpoint">
		 				<div id="apply_couponBox"><div class="apply_couponBox_text">text coupon</div></div>
		 				<button id="btn_modal_coupon">쿠폰함</button>
		 			</div>
		 			<div class="order_reser_coupon_title">포인트 사용</div>
		 			<div class="apply_couponANDpoint">
		 				<div id="apply_pointBox"><div class="apply_couponBox_text">text coupon</div></div>
		 				<button id="btn_modal_point">모두 사용</button>
		 			</div>
		 			<p>보유 포인트 <strong>0 p</strong><br>※사용한 포인트는 소멸되며 예약 취소 또는 환불 시 재적립이 불가능합니다.</p>
		 		</div>
		 	</div>
		 	<div class="order_user_infoBox">
		 		<div class="order_user_infoBox_title">약관 동의</div>
		 		<div class="order_reser_info">
		 			<label for="agreeAll" class="forcheck"></label>
		 				<input type="checkbox" name="" id="agreeAll">모두 동의하기
		 			<div class="order_reser_border"></div>
		 			<div class="order_reser_btn_md">
		 				<label class="forcheck" for="agree"></label>
		 				<input type="checkbox" id="agree" name="">개인정보 제3자 제공 동의 <strong id="view_all">[전문보기]</strong>
		 			</div>
		 		</div>
		 	</div>
		 	<div class="order_user_infoBox">
		 		<div class="order_user_infoBox_title">결제 정보</div>
		 		<div class="order_reser_info">
		 			<div class="order_reser_option_left">총 상품 금액</div>
		 			<div class="order_reser_option_right">₩ 149,700</div>
		 			<div class="order_reser_option_left">쿠폰</div>
		 			<div class="order_reser_option_right"><strong>-0</strong></div>
		 			<div class="order_reser_option_left">포인트</div>
		 			<div class="order_reser_option_right"><strong>-0</strong></div>
		 			
		 		</div>
		 		<div class="order_reser_border"></div>
		 		<div class="order_reser_info">
		 			<!-- total -->
		 			<div class="order_reser_option_left total_payment">최종 결제 금액</div>
		 			<div class="order_reser_option_right total_payment_price">₩ 149,700</div>
		 		</div>
		 		<div class="order_reser_info">
		 			<div class="order_reser_btn_md order_reser_pay_btn">결제하기</div>
		 		</div>
		 	</div>
		 </div>

	</div>
</div>
<div class="interest_freeBox">
	<div class="interest_freeBox_modal">
		<div class="interest_freeBox_title">2019년 12월 무이자 할부 안내</div>
		<div class="interest_free_li_wrapper">
			<div class="interest_freeBox_li"><b>신한카드</b>&nbsp;5만원 이상 2~6개월 무이자 할부 신한BC 제외</div>
			<div class="interest_freeBox_li"><b>신한카드</b>&nbsp;5만원 이상 2~6개월 무이자 할부 신한BC 제외</div>
			<div class="interest_freeBox_li"><b>신한카드</b>&nbsp;5만원 이상 2~6개월 무이자 할부 신한BC 제외</div>
			<div class="interest_freeBox_li"><b>신한카드</b>&nbsp;5만원 이상 2~6개월 무이자 할부 신한BC 제외</div>
			<div class="interest_freeBox_li"><b>신한카드</b>&nbsp;5만원 이상 2~6개월 무이자 할부 신한BC 제외</div>
			<div class="interest_freeBox_li"><b>신한카드</b>&nbsp;5만원 이상 2~6개월 무이자 할부 신한BC 제외</div>
			<div class="interest_freeBox_li"><b>신한카드</b>&nbsp;5만원 이상 2~6개월 무이자 할부 신한BC 제외</div>
			<div class="interest_freeBox_li"><b>신한카드</b>&nbsp;5만원 이상 2~6개월 무이자 할부 신한BC 제외</div>
			<div class="interest_freeBox_li"><b>신한카드</b>&nbsp;5만원 이상 2~6개월 무이자 할부 신한BC 제외</div>
			<div class="interest_freeBox_li"><b>신한카드</b>&nbsp;5만원 이상 2~6개월 무이자 할부 신한BC 제외</div>
		</div>
		<div class="interest_freeBox_close">
			<div class="interest_freeBox_close_btn">CLOSE</div>
		</div>
	</div>
</div>



<script type="text/javascript">
	//order_reser_pay
	$('#creditCard').click(function(){
		$('#waugPay').removeClass("order_reser_pay_click");
		$('#mobilePay').removeClass("order_reser_pay_click");
		$('#kakaopay').removeClass("order_reser_pay_click");
		$(this).toggleClass('order_reser_pay_click');
		$(".pay_credit").slideToggle();
	});

	$('#waugPay').click(function(){
		$('#creditCard').removeClass("order_reser_pay_click");
		$('#mobilePay').removeClass("order_reser_pay_click");
		$('#kakaopay').removeClass("order_reser_pay_click");
		$(".pay_credit").slideUp();
		$(this).toggleClass('order_reser_pay_click');
	});
	
	$('#mobilePay').click(function(){
		$('#creditCard').removeClass("order_reser_pay_click");
		$('#waugPay').removeClass("order_reser_pay_click");
		$('#kakaopay').removeClass("order_reser_pay_click");
		$(".pay_credit").slideUp();
		$(this).toggleClass('order_reser_pay_click');
	});
	
	$('#kakaopay').click(function(){
		$('#creditCard').removeClass("order_reser_pay_click");
		$('#waugPay').removeClass("order_reser_pay_click");
		$('#mobilePay').removeClass("order_reser_pay_click");
		$(".pay_credit").slideUp();
		$(this).toggleClass('order_reser_pay_click');
	});

	$(document).ready(function(){
		$('.pay_credit').css("display","none");
	});

	$('.stopPropagation').click(function(e){
		e.stopPropagation();
	});

	//modal창 띄우기
	//<div class="pay_credit_title"><strong><b>무이자 할부 안내</b></strong></div>
	$('.pay_credit_title>strong>b').click(function(){
		$('.interest_freeBox').css("display","block");
	});

	//modal창 안의 버튼 눌렀을때 닫기
	$('.interest_freeBox_close_btn').click(function(){
		$('.interest_freeBox').css("display","none");
	});
	
	$('#agreeAll').click(function(){
		$('#agree').prop("checked", this.checked);
		console.log($('#agree').checked);
	});
	
	$('#agree').click(function(){
		$('#agreeAll').prop("checked", this.checked);
	});
	
	$('.card').click(function(){
		$('.card').removeClass('card_clicked');
		$(this).toggleClass('card_clicked');
	});
</script>
</body>
</html>