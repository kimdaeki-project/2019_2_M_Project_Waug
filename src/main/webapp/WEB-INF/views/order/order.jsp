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
<form class="form" action="../kakao/kakaoPay" method="post">
	<div class="order_row">
		<!-- left -->
		<input value="${goods.goods_num}" style="background:gold" hidden="hidden" name="goods_num">
		<input value="${option.o_num}" style="background:gold" hidden="hidden" name="o_num">
		<div class="order_col_md">
			<div class="order_user_infoBox">
				<div class="order_user_infoBox_title">예약자 정보</div>
				<table class="order_user_info_table">
					<c:forEach items="${bookerInfo}" begin="0" end="0" var="booker">				
						<tr><td>여권상 영문명</td><td>${booker.firstName}&nbsp;${booker.lastName}</td></tr>
						<tr><td>바우처 이메일</td><td>${booker.b_email}</td></tr>
					</c:forEach>
				</table>
			</div>
			<div class="order_user_infoBox">
				<div class="order_user_infoBox_title">Reservation Info</div>
				<div class="order_reser_info">
					<img src="${goods.img }">
					<div class="order_reser_info_text">
						<b>${goods.title}</b>
						<p>${option.o_date}</p>
					</div>
				</div>
				<c:forEach items="${bookerInfo}" var="booker" begin="1" varStatus="status">
					<div class="order_reser_options">
						<div class="order_reser_option_left">${booker.firstName}&nbsp;${booker.lastName} 
							<p>
								<c:choose>
									<c:when test="${booker.b_gender eq 1}">남자</c:when>
									<c:when test="${booker.b_gender eq 0}">여자</c:when>
								</c:choose>
							</p>
						</div>
						<div class="order_reser_option_right">4500 x 1</div>
					</div>
				
				</c:forEach> 
				<div class="order_reser_border"></div>
					<div class="order_reser_options">
						<div class="order_reser_option_left">SNS 아이디</div>
						<div class="order_reser_option_right">
							<c:forEach items="${bookerInfo}" var="booker" begin="0" end="0">${booker.sns}</c:forEach>
						</div>
					</div>
					<div class="order_reser_options">
						<div class="order_reser_option_left">방문시간</div>
						<div class="order_reser_option_right">
							<c:forEach items="${bookerInfo}" var="booker" begin="0" end="0">${booker.b_visit}</c:forEach>
						</div>
					</div> 
			</div>
		</div>
		<!-- right -->
		 <div class="order_col_md">
		 	<div class="order_user_infoBox">
		 		<div class="order_user_infoBox_title">결제 수단</div>
		 		<div class="order_reser_info">
		 			<div class="order_reser_pay" id="waugPay">
		 				<img src="https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15446039556086.svg">
		 				<span>Waug pay</span>
		 			</div>
		 			<div class="order_reser_pay" id="creditCard">
		 				<img src="https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15453097413462.svg">
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
		 				<img src="https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15638460065287.svg">
		 				<span>toss</span>
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
		 				<button id="btn_modal_coupon" type="button" data-toggle="modal" data-target="#modal-coupon-box" >쿠폰함</button>
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
		 			<div class="order_reser_option_right" id="totalPriceShow">${goods.price*option.o_people}</div>
		 			<div class="order_reser_option_left">쿠폰</div>
		 			<div class="order_reser_option_right"><strong>-0</strong></div>
		 			<div class="order_reser_option_left">포인트</div>
		 			<div class="order_reser_option_right"><strong>-0</strong></div>
		 			
		 		</div>
		 		<div class="order_reser_border"></div>
		 		<div class="order_reser_info">
		 			<!-- total -->
		 			<div class="order_reser_option_left total_payment">최종 결제 금액</div>
		 			<div class="order_reser_option_right total_payment_price">₩ <span id="total_span">total price show</span></div>
		 		</div>
		 		<div class="order_reser_info">
		 			<div class="order_reser_btn_md order_reser_pay_btn">결제하기</div>
		 		</div>
		 	</div>
		 </div>
	</div>
	<input type="text" value="${goods.price*option.o_people}" hidden="hidden" name="totalprice" id="totalprice">
</form>
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
<!-- 쿠폰함 모달 -->
<div class="modal" id="modal-coupon-box"  role="dialog" style="display: none; padding-right: 10px;">
	<div id="modal-coupon-content" class="coupon-modal-content">
		<div class="coupon-modal-outer">
			<div class="coupon-modal-inner">
				<div class="coupon-modal-box">
					<div class="coupon-modal-box-top-info">
						<button type="button" class="login-modal-close-btn global-modal-cancel-btn" data-dismiss="modal" aria-laber="Close">
							<img alt="" src="https://www.waug.com/images/close.svg" class="global-modal-cancel-ic">
						</button>
						<div class="coupon-box-title">보유한 쿠폰</div>
						<div class="coupon-code-input-box-content">
							<input type="text" class="coupon-code-input-box" id="coupon-code-value" placeholder="프로모션 코드를 입력해주세요." maxlength="20">
							<button type="button" id="btn-register-coupon" class="coupon-code-success-btn">쿠폰등록</button>
						</div>
					</div>
					<div class="coupon-list-wrap">
						<div class="coupon-filter">
							<div class="coupon-filter-btn tab-available active">
								사용가능
								<span id="available_coupon_count" data-count=0>2</span>장
							</div>
							<div class="coupon-filter-btn coupon-filter-impossible-text tab-available" data-target="no-coupon-available" data-value="false">
								사용불가능
								<span id="available_coupon_count" data-count=0>2</span>장
							</div>
						</div>
						<!-- 쿠폰리스트 -->
						<c:forEach items="${couponList}" var="vo">
						<div class="coupon-card-content" id="coupon-available" style="display: flex;">
							<div class="carousel slick-intitialized slick-silder">
								<div aria-live="polite" class="slick-list">
									<div class="slick-track" role="listbox" style="opacity: 1; width: 780px; transform: translate3d(0px,0px,0px);">
										<div class="slick-slide slick-current slick-active">
											<div>
												<div class="carousel-item" style="width: 50%; display: inline-block;">
													<div class="coupon-shape-box">
														<div class="card-left-box">
															<div class="coupon-title-text">
																${vo.c_title}
															</div>		
															<div class="coupon-code-text">
																쿠폰코드 -<span>${vo.c_code}</span>${vo.c_discount}
															</div>
															<div class="coupon-left-box-bottom">
																<div class="coupon-terms-of-use"></div>
																<div class="coupon-validity">결제일 기준 12.31 까지</div>
															</div>
														</div>
														<div class="card-right-box">
															<div class="card-right-inner">
																<img alt="" src="https://www.waug.com/images/tick.svg" class="coupon-using-btn-ic">
																<div class="coupon-using-btn coupon-primary-color-text">사용하기</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						</c:forEach>
						<div class="coupon-card-content" id="no-coupon-available" style="display: none;"></div>
						<div class="coupon-discounted-amount">
							<div class="coupon-discounted-amount">
								<div class="coupon-discounted-amount-text">
									<span>할인 금액</span>
									<span class="coupon-primary-color-text" id="display_discount_price" style="padding-left: 4px;">$</span>
									<span class="coupon-primary-color-text" id="display_discount_price" style="padding-left: 1px;">0</span>
								</div>
								<button id="btn-apply-coupon" type="button" class="coupon-code-success-btn coupon-discounted-amount-btn" >할인 적용</button>
							</div>
						
						</div>
					</div>
				</div>
				<div class="coupon-modal-box-foot-info">
					<div class="coupon-notice-list-text">
						- 유효기간이 사용 예정일 기준인 경우 상품 페이지에서 선택한 날짜에 따라 쿠폰 적용이 가능합니다.
					</div>
					<div class="coupon-notice-list-text">
						- 일부 상품의 경우 할인쿠폰, 장바구니쿠폰, 결합쿠폰, 이벤트쿠폰 사용이 제외됩니다.
					</div>
					<div class="coupon-notice-list-text">
						- 장바구니 쿠폰 사용 시 부분 취소가 불가합니다.
					</div>
					<div class="coupon-notice-list-text">
                        - 발급된 쿠폰은 예고 없이 변경되거나 조기종료될 수 있습니다.
					</div>
				
				</div>
			</div>
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
		$('#totalPriceShow').html($('#totalprice').val());
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
	
	$('.order_reser_pay_btn').click(function(){
		
		$('.form').submit();
	})
</script>
</body>
</html>