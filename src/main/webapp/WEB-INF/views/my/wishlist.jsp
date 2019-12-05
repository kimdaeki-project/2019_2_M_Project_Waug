<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:import url="../layout/bootstrap.jsp"/>
<link href="../resources/css/mypage.css" rel="stylesheet"> 
<link href="../resources/css/area.css" rel="stylesheet"> 

<title>Insert title here</title>
</head>
<body>
<c:import url="../layout/nav.jsp"/>


<div id="content">
	<div class="wrapper-page">
		<div class="row">
			<div class="wrapper-subheader headimage"></div>
		</div>
		<div class="container">
		
			<div class="row">
				<c:import url="./mylayout.jsp"/>
					<div id="sub-container" class="col-md-9">
						<h3 class="space-5" style="font-weight: bold;">Wish List</h3>
						
					<div class="row" >
					
						<!-- goods 하나 -->
						<div class="good-card-box m-good-card col-md-6 item">
						<!-- 위시리스트 추가하트 -->
						<div class="good-wish"><img alt="하트" src="../resources/images/ic_active_wish.svg"></div>
						<!-- 상품사진 -->
						<div class="wish-good">
							<img data-lazy="https://d2mgzmtdeipcjp.cloudfront.net/files/good/2019/11/28/15749047613780.png?s=366x240" 
							class="good-photo lazy" 
							src="https://d2mgzmtdeipcjp.cloudfront.net/files/good/2019/11/28/15749047613780.png?s=366x240" 
							style="display: block;">
						</div>
						<!-- 상품설명 -->
						<div class="good-info-content-box">
							<div class="today-use">오늘부터 사용 가능</div>
							<span class="good-title">종로 더피자필 이용권</span>
							<div class="good-original-price">$19,000</div>
							<div class="good-discount-price">$17,100</div>
							<div class="good-booked">47 예약</div>
						</div>
						</div>
						<!-- goods 하나 끝 -->
					
						<!-- goods 하나 -->
						<div class="good-card-box m-good-card col-md-6 item">
						<!-- 위시리스트 추가하트 -->
						<div class="good-wish"><img alt="하트" src="../resources/images/ic_active_wish.svg"></div>
						<!-- 상품사진 -->
						<div class="wish-good">
							<img data-lazy="https://d2mgzmtdeipcjp.cloudfront.net/files/good/2019/11/28/15749047613780.png?s=366x240" 
							class="good-photo lazy" 
							src="https://d2mgzmtdeipcjp.cloudfront.net/files/good/2019/11/28/15749047613780.png?s=366x240" 
							style="display: block;">
						</div>
						<!-- 상품설명 -->
						<div class="good-info-content-box">
							<div class="today-use">오늘부터 사용 가능</div>
							<span class="good-title">종로 더피자필 이용권</span>
							<div class="good-original-price">$19,000</div>
							<div class="good-discount-price">$17,100</div>
							<div class="good-booked">47 예약</div>
						</div>
						</div>
						<!-- goods 하나 끝 -->
						<!-- goods 하나 -->
						<div class="good-card-box m-good-card col-md-6 item">
						<!-- 위시리스트 추가하트 -->
						<div class="good-wish"><img alt="하트" src="../resources/images/ic_active_wish.svg"></div>
						<!-- 상품사진 -->
						<div class="wish-good">
							<img data-lazy="https://d2mgzmtdeipcjp.cloudfront.net/files/good/2019/11/28/15749047613780.png?s=366x240" 
							class="good-photo lazy" 
							src="https://d2mgzmtdeipcjp.cloudfront.net/files/good/2019/11/28/15749047613780.png?s=366x240" 
							style="display: block;">
						</div>
						<!-- 상품설명 -->
						<div class="good-info-content-box">
							<div class="today-use">오늘부터 사용 가능</div>
							<span class="good-title">종로 더피자필 이용권</span>
							<div class="good-original-price">$19,000</div>
							<div class="good-discount-price">$17,100</div>
							<div class="good-booked">47 예약</div>
						</div>
						</div>
						<!-- goods 하나 끝 -->
						<!-- goods 하나 -->
						<div class="good-card-box m-good-card col-md-6 item">
						<!-- 위시리스트 추가하트 -->
						<div class="good-wish"><img alt="하트" src="../resources/images/ic_active_wish.svg"></div>
						<!-- 상품사진 -->
						<div class="wish-good">
							<img data-lazy="https://d2mgzmtdeipcjp.cloudfront.net/files/good/2019/11/28/15749047613780.png?s=366x240" 
							class="good-photo lazy" 
							src="https://d2mgzmtdeipcjp.cloudfront.net/files/good/2019/11/28/15749047613780.png?s=366x240" 
							style="display: block;">
						</div>
						<!-- 상품설명 -->
						<div class="good-info-content-box">
							<div class="today-use">오늘부터 사용 가능</div>
							<span class="good-title">종로 더피자필 이용권</span>
							<div class="good-original-price">$19,000</div>
							<div class="good-discount-price">$17,100</div>
							<div class="good-booked">47 예약</div>
						</div>
						</div>
						<!-- goods 하나 끝 -->
					</div>
					
				</div>
					</div>
			</div>
		</div>
		</div>
		</div>	

</body>
</html>