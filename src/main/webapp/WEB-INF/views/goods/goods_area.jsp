<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:import url="../layout/bootstrap.jsp"/>
<link href="../resources/css/area.css" rel="stylesheet"> 
<link href="../resources/css/Footer.css" rel="stylesheet"> 
<title>select_area_page</title>
</head>
<body>
<c:import url="../layout/nav.jsp"/>
<c:import url="../layout/CityList.jsp"/>
	<div id = "wrapper">
		<main>
			<div id="wrapper_page">
				<div class="wrapper-header area-header-image" style="background-image: url('${nation.city_img2}');">
					<div class="theme-header-opacity">
					</div>
					<div class="header-title">
						<h1>${nation.city_name}</h1>
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
						<div class="col-md-3 category-nav sticky" >
						
							<div>
								<i class="fa fa-search"><img alt="" src=""></i>
								<input type="text" class="form-control" placeholder="Search">
							
							</div>
							<div class="category-wrapper">
							<span class="select2-container">
								<select class="form-control">
									<option style="display:none;" selected="selected">와그WAUG 추천</option>
									<option>최신순</option>
									<option>인기순</option>
								</select>
							</span>
								
								<!-- 카테고리네비바 시작 -->
								<div class="category-title">어떤 여행을 원하세요?</div>
								
								<ul class="category-list">
									<li class="category-children-space" id="catselect1">
									<!-- 	<div class="category-children-box category-selector1">
											<a href="#" class="">현지 맛집 탐방</a>
											<a href="#" class="category-selector1">카페 & 베이커리</a>
											<a href="#" class="category-selector1">현금 푸드 쿠폰</a>
											<a href="#" class="category-selector1">호텔 레스토랑</a>
											<a href="#" class="category-selector1">바 & 나이트라이프</a>
											<a href="#" class="category-selector1">미슐랭 가이드 레스토랑</a>
										</div> -->
										<div>
											<img class="category-icon" src="../resources/images/cat_nav/10.svg">
											<a href="">레스토랑 & 다이닝</a>
										</div>
									</li>

									
									<li class="category-children-space" id="catselect2">		
								<!-- 		<div class="category-children-box category-selector2" >
											<a href="#" >이색 체험</a>
											<a href="#" >실내 액티비티</a>
											<a href="#" >키즈</a>
											<a href="#" >아트 & 문화체험</a>
											<a href="#" >현지 전통문화 체험</a>
											<a href="#" >크루즈</a>
											<a href="#" >골프</a>
											<a href="#" >워터스포츠</a>
											<a href="#" >아웃도어 어드벤처</a>
											<a href="#" >스키 & 겨울 스포츠</a>
											<a href="#" >케이블카 & 관람차</a>
											<a href="#" >시티투어 버스</a>
										</div>	 -->			
										<div>
											<img class="category-icon" src="../resources/images/cat_nav/4.svg">
											<a href="">액티비티 & 체험</a>
										</div>
									</li>		
									<li class="category-children-space" id="catselect3">	
						<!-- 				<div class="category-children-box category-selector3">
											<a href="#" >조인투어</a>
											<a href="#" >버스 투어</a>
											<a href="#" >역사 & 문화 투어</a>
											<a href="#" >자연 속 힐링 투어</a>
											<a href="#" >푸드 테이스팅 투어</a>
											<a href="#" >시티 투어</a>
											<a href="#" >골프</a>
											<a href="#" >로컬가이드 워킹투어</a>
										</div>		 -->						
										<div>
											<img class="category-icon" src="../resources/images/cat_nav/3.svg">
											<a href="">현지 투어</a>
										</div>
									</li>
									
									<li class="category-children-space" id="catselect4">						
						<!-- 				<div class="category-children-box category-selector4">
											<a href="#" >스파 & 마사지</a>
											<a href="#" >라운지 서비스</a>
										</div> -->		
										<div>
											<img class="category-icon" src="../resources/images/cat_nav/2.svg">
											<a href="">스파 & 라운지</a>
										</div>		
									</li>
									
									<li class="category-children-space" id="catselect5">	
							<!-- 			<div class="category-children-box category-selector5">
											<a href="#" >편의 서비스</a>
											<a href="#" >공항 셔틀 & 픽업서비스</a>
											<a href="#" >주차권</a>
											<a href="#" >도시간 이동 수단</a>
											<a href="#" >유심 & 포켓와이파이</a>
											<a href="#" >교통 패스</a>
										</div> -->
										<div id="catparent_10">
											<img class="category-icon" src="../resources/images/cat_nav/11.svg">
											<a href="">교통 & 와이파이</a>
										</div>
									</li>
									<li class="category-children-space" id="catselect6">
								<!-- 		<div class="category-children-box category-selector6">
											<a href="#" >테마파크 & 워터파크</a>
											<a href="#" >박물관 & 갤러리</a>
											<a href="#" >동물원 & 아쿠아리움</a>
											<a href="#" >쇼 & 퍼포먼스 공연</a>
											<a href="#" >360 전망대</a>
										</div> -->
										<div id="catparent_10">
											<img class="category-icon" src="../resources/images/cat_nav/6.svg">
											<a href="">어트랙션 & 공연</a>
										</div>
									</li>
				
									<li class="category-children-space" id="catselect7">
									<!-- 	<div class="category-children-box category-selector7">
											<a href="#" >특가 패키지</a>
										</div>	 -->	
										<div id="catparent_10">
											<img class="category-icon" src="../resources/images/cat_nav/1170.svg">
											<a href="">특가여행</a>
										</div>
									</li>
									</ul>
							</div>
						 	<!-- 카테고리 네비바 끝 -->
						
						
						</div>
						
						<!-- 카테고리끝 -->
					
					
						<!-- 아이템들만 감싸는 div -->
						<div class="items-wrapper area-goods-space col-md-offset-1 col-md-8">
						
							<div class="good-card-box m-good-card col-md-6 item">
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
									
								<div class="good-card-box m-good-card col-md-6 item">
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
							
							<div class="good-card-box m-good-card col-md-6 item">
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
							
							<div class="good-card-box m-good-card col-md-6 item">
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
							
							<div class="good-card-box m-good-card col-md-6 item">
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
							<div class="good-card-box m-good-card col-md-6 item">
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
						<!-- 아이템들만 감싸는 div 끝-->
	
				</div>	
				<!-- 특별한 여행 끝 -->		
					
				</div>
				<!-- container div 끝 -->
							
			</div>
			<!-- wrap_page 끝 -->
			</div>
		
		</main>
		</div>
		
		<!-- footer -->
		<c:import url="../layout/Footer.jsp"/>
		
		
		
		
		
		<script type="text/javascript">
		
	

		   $(document).scroll(function(){
			 
		      if($(document).scrollTop()>1500){
		         $('.category-nav').addClass('good_bookBox_fixed');
		      }
		      else{
		         $('.category-nav').removeClass('good_bookBox_fixed');
		      }
		      
		      
		    });  

		
		
			$(document).ready(function() {
				
					$("#catselect1").mouseover(function() {
					
						$(".category-selector1").show();
					});
					
					$("#catselect1").mouseout(function() {
						
						$(".category-selector1").hide();
					});
					$("#catselect2").mouseover(function() {
						
						$(".category-selector2").show();
					});
					
					$("#catselect2").mouseout(function() {
						
						$(".category-selector2").hide();
					});
					
					$("#catselect3").mouseover(function() {
						
						$(".category-selector3").show();
					});
					
					$("#catselect3").mouseout(function() {
						
						$(".category-selector3").hide();
					});
		
					$("#catselect4").mouseover(function() {
						
						$(".category-selector4").show();
					});
					
					$("#catselect4").mouseout(function() {
						
						$(".category-selector4").hide();
					});
					$("#catselect5").mouseover(function() {
						
						$(".category-selector5").show();
					});
					
					$("#catselect5").mouseout(function() {
						
						$(".category-selector5").hide();
					});
					$("#catselect6").mouseover(function() {
						
						$(".category-selector6").show();
					});
					
					$("#catselect6").mouseout(function() {
						
						$(".category-selector6").hide();
					});
					$("#catselect7").mouseover(function() {
						
						$(".category-selector7").show();
					});
					
					$("#catselect7").mouseout(function() {
						
						$(".category-selector7").hide();
					});
					$("#catselect8").mouseover(function() {
						
						$(".category-selector8").show();
					});
					
					$("#catselect8").mouseout(function() {
						
						$(".category-selector8").hide();
					});
			});
				
				
			/* 모달 */
			// Get the modal
			var modal = document.getElementById("myModal");
			// Get the button that opens the modal
			var btn2 = document.getElementById("myBtn");
			// When the user clicks the button, open the modal 
			btn2.onclick = function() {
				modal.style.display = "block";
			}
			// When the user clicks anywhere outside of the modal, close it
			window.onclick = function(event) {
				if (event.target == modal) {
					modal.style.display = "none";
				}
			}
			
			$(".con").click(function() {
				$(".continent-item").removeClass("active-continent");
				$(".continent-text").removeClass("active");
				$(this).parent().parent().addClass("active-continent");
				$(this).parent().addClass("active");
			});
		
		</script>


	
</body>
</html>