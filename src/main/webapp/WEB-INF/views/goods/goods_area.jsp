<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:import url="../layout/bootstrap.jsp"/>
<link href="../resources/css/area.css" rel="stylesheet"> 
<link href="../resources/css/waug.css" rel="stylesheet">

<title>select_area_page</title>
</head>
<body>
	<div id = "wrapper">
		<main>
			<div id="wrapper_page">
				<div class="wrapper-header area-header-image">
					<div class="header-title">
						<h1>서울</h1>
					</div>
				</div>
			
				<div class="container">
					<div class="row row-title row-title-margin">
						<div>추천테마</div>
						<p class="sub">와그가 추천하는 특별한 여행을 만나보세요.</p>
					</div>
					
						<!-- 추천테마 -->
						<div class="row">	
							<div style="display: flex; position: relative; margin-bottom: 30px;">
							<div class="theme_box">
								<img alt="" src="https://d2mgzmtdeipcjp.cloudfront.net/files/theme/2019/11/18/15740713935348.png?s=366x240">
								<div class="theme-text-info-box">
									<div class="head">pick</div>
									<div class="good-theme-title">서울 실내 액티비티</div>
									<div class="good-default-text">와그가 추천하는 서울 실내 액티비티를 즐겨보세요!</div>
								</div>
							</div>
							<div class="theme_box">
								<img src="https://d2mgzmtdeipcjp.cloudfront.net/files/theme/2019/03/18/15528801363147.jpg?s=366x240" class="main-theme-images" style="display: block;">
								<div class="theme-text-info-box">
									<div class="head">Tip</div>
									<div class="good-theme-title">인천공항 이용 꿀팁</div>
									<div class="good-default-text">더 편하게 만나는 인천공항</div>
								</div>
							</div>
							<div class="theme_box">
								<img src="https://d2mgzmtdeipcjp.cloudfront.net/files/theme/2019/11/21/15743134416648.png?s=366x240" class="main-theme-images" style="display: block;">								
								<div class="theme-text-info-box">
									<div class="head">Special</div>
									<div class="good-theme-title">인기 아쿠아리움 특가전</div>
									<div class="good-default-text">아이와 함께 행복한 하루를</div>
								</div>
							</div>
							</div>
						</div>	
						<!-- 추천테마끝 -->
				
				<div class="row row-title row-title-margin">
					<div>새로운여행</div>
					<p class="sub">지금 바로 최신 액티비티를 만나보세요.</p>
				</div>
				
				<!-- 새로운여행 시작 -->
				<div class="row">	

					<div class="good-card-box m-good-card col-md-3 item">
						<!-- 위시리스트 추가하트 -->
						<div class="good-wish"><img alt="하트" src="../resources/images/ic_none_wish.svg"></div>
						<!-- 상품사진 -->
						<div>
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
									
					<div class="good-card-box m-good-card col-md-3 item">
						<!-- 위시리스트 추가하트 -->
						<div class="good-wish"><img alt="하트" src="../resources/images/ic_none_wish.svg"></div>
						<!-- 상품사진 -->
						<div>
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
					<div class="good-card-box m-good-card col-md-3 item">
						<!-- 위시리스트 추가하트 -->
						<div class="good-wish"><img alt="하트" src="../resources/images/ic_none_wish.svg"></div>
						<!-- 상품사진 -->
						<div>
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
					<div class="good-card-box m-good-card col-md-3 item">
						<!-- 위시리스트 추가하트 -->
						<div class="good-wish"><img alt="하트" src="../resources/images/ic_none_wish.svg"></div>
						<!-- 상품사진 -->
						<div>
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

				</div>
				<!-- 새로운여행 끝-->	
				
				
				
				<!-- 특별한 여행 시작 -->
				<div class="row row-title row-title-margin">
					<div>특별한 여행을 예약해보세요</div>
					<p class="sub">새로운, 그리고 특별한 나만의 서울. 경험해보세요</p>
					
						<!-- 카테고리시작 -->
						<div class="col-md-3 category-nav sticky" style="position: absolute; top: auto; border:1px solid black;">
						
							<div>
								<i class="fa fa-search"></i>
								<input type="text" class="form-control" placeholder="Search">
							
							</div>
							<div class="category-wrapper">
							<span class="select2-container">
								<select>
									<option style="display:none" selected="selected">와그WAUG 추천</option>
									<option>최신순</option>
									<option>인기순</option>
								</select>
							</span>
								
								<div class="category-title">어떤 여행을 원하세요?</div>
								
								<ul class="category-list">
									<li class="category-children-space" onmouseover="openChildCategory" onmouseout="closeChildCategory">
										<div id="catparent_10">
											<img class="category-icon" src="../resources/images/cat_nav/10.svg">
											<a href="">레스토랑 & 다이닝</a>
										</div>
										
										<div class="category-children">
											<a href="#">현지 맛집 탐방</a>
											<a href="#">카페 & 베이커리</a>
											<a href="#">현금 푸드 쿠폰</a>
											<a href="#">호텔 레스토랑</a>
											<a href="#">바 & 나이트라이프</a>
											<a href="#">미슐랭 가이드 레스토랑</a>
										</div>
										
									</li>
									
						
									
									<li class="category-children-space">
										<div id="catparent_10">
											<img class="category-icon" src="../resources/images/cat_nav/4.svg">
											<a href="">액티비티 & 체험</a>
										</div>
									</li>
									
									<li class="category-children-space">
										<div id="catparent_10">
											<img class="category-icon" src="../resources/images/cat_nav/3.svg">
											<a href="">현지 투어</a>
										</div>
									</li>
									<li class="category-children-space">
										<div id="catparent_10">
											<img class="category-icon" src="../resources/images/cat_nav/6.svg">
											<a href="">어트랙션 & 공연</a>
										</div>
									</li>
									<li class="category-children-space">
										<div id="catparent_10">
											<img class="category-icon" src="../resources/images/cat_nav/2.svg">
											<a href="">스파 & 라운지</a>
										</div>
									</li>
									<li class="category-children-space">
										<div id="catparent_10">
											<img class="category-icon" src="../resources/images/cat_nav/11.svg">
											<a href="">교통 & 와이파이</a>
										</div>
									</li>
									<li class="category-children-space">
										<div id="catparent_10">
											<img class="category-icon" src="../resources/images/cat_nav/1170.svg">
											<a href="">특가여행</a>
										</div>
									</li>
									
								
								</ul>
							</div>
						
						
						
						</div>
						
						<!-- 카테고리끝 -->
					
					
						<!-- 아이템들만 감싸는 div -->
						<div class="items_wrapper area_goods_space col-md-offset-1 col-md-8">
						
							<div class="good_card_box m_good_card_box col-md-6 item">
								<!-- 위시리스트 추가하트 -->
								<div id="good_wish_img"><img alt="하트" src=""></div>
								<!-- 상품사진 -->
								<div>
									<img alt="" src="">
								</div>
								<!-- 상품설명 -->
								<div class="good_info_content_box ">
									<div>오늘부터사용가능</div>
									<span>title</span>
									<div class="original">원래가격</div>
									<div class="discount">할인된가격</div>
									<div class="book">예약현황</div>
								</div>
							</div>
							
							<div class="good_card_box m_good_card_box col-md-6 item">
								<!-- 위시리스트 추가하트 -->
								<div id="good_wish_img"><img alt="하트" src=""></div>
								<!-- 상품사진 -->
								<div>
									<img alt="" src="">
								</div>
								<!-- 상품설명 -->
								<div class="good_info_content_box">
									<div>오늘부터사용가능</div>
									<span>title</span>
									<div class="original">원래가격</div>
									<div class="discount">할인된가격</div>
									<div class="book">예약현황</div>
								</div>
							</div>
							
						</div>
						<!-- 아이템들만 감싸는 div 끝-->
						
				
				
				
				
				
				</div>	
				<!-- 특별한 여행 끝 -->	
					
					
					
				</div>
				<!-- container div 끝 -->
							
			</div>
			<!-- wrap_page 끝 -->
		
		</main>
	


	</div>
</body>
</html>