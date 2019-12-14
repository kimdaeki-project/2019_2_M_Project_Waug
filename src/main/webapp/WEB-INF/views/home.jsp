<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ page session="false"%>
<html>
<head>
<title class="next-head">짜그 WAUG - 전세계 액티비티, 입장권, 교통 , 유심</title>
<link rel="shortcut icon" href="./resources/FAVICON_WAUG_64.ico"
	type="image/x-icon" />
<link rel="icon" href="/favicon.ico" type="image/x-icon">
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://unpkg.com/swiper/css/swiper.css">
<link rel="stylesheet" href="https://unpkg.com/swiper/css/swiper.min.css">
<script src="https://unpkg.com/swiper/js/swiper.js"></script>
<script src="https://unpkg.com/swiper/js/swiper.min.js"></script>
<link rel="stylesheet" href="resources/css/home.css">
<link rel="stylesheet" href="resources/css/Footer.css">
<link rel="stylesheet" href="resources/css/CityList.css">
<link rel="stylesheet" href="resources/css/homenav.css">
<style type="text/css">

.active-continent{
	color: #d91c84;
}

.active2 a{
	color: #d91c84 !important;
}
</style>
</head>
<body>
	<c:import url="./layout/home_nav.jsp"/>
	<div id="main-wrapper">
		<div id="main-header">
			<div id="main-header-items">
				<div class="text2">겨울 여행은 어디로 떠날까요?</div>
				<div class="search">
					<div class="bar">
						<div class="searchbar-input-container">
							<div></div>
							<input id="search" value="" placeholder="액티비티 또는 지역명으로 검색하세요">
						</div>
					</div>
					<div class="searchresult-container">
						<div class="searchresult-content">
							<div class="searchresultitem-container">
								<div class="searchresultitem-title">빠른 검색</div>
								<div class="searchresultitem-items">
									<div class="searchresultitem-item">
										<div>유심 & 와이파이</div>
									</div>
									<div class="searchresultitem-item">
										<div>공항 이동수단</div>
									</div>
									<div class="searchresultitem-item">
										<div>일본 교통패스</div>
									</div>
									<div class="searchresultitem-item">
										<div>유레일 패스</div>
									</div>
								</div>
							</div>
							<div id="container2"
								class="searchresultitem-container container2">
								<div class="searchresultitem-title">인기 지역</div>
								<div class="searchresultitem-items">
									<div class="searchresultitem-item">
										<div>방콕</div>
									</div>
									<div class="searchresultitem-item">
										<div>오사카</div>
									</div>
									<div class="searchresultitem-item">
										<div>도쿄</div>
									</div>
									<div class="searchresultitem-item">
										<div>괌</div>
									</div>
									<div class="searchresultitem-item">
										<div>세부</div>
									</div>
									<div class="searchresultitem-item">
										<div>홍콩</div>
									</div>
									<div class="searchresultitem-item">
										<div>제주도</div>
									</div>
									<div class="searchresultitem-item">
										<div>싱가포르</div>
									</div>
									<div class="searchresultitem-item">
										<div>다낭</div>
									</div>
									<div class="searchresultitem-item">
										<div>타이페이</div>
									</div>
								</div>
							</div>
							<div class="searchresultitem-container">
								<div class="searchresultitem-title">인기 액티비티</div>
								<div class="searchresultitem-items">
									<div class="searchresultitem-item">
										<div>간사이공항 리무진 (난바, 가이유칸, USJ)</div>
									</div>
									<div class="searchresultitem-item">
										<div>홍콩 옥토퍼스 카드 (국내공항수령)</div>
									</div>
									<div class="searchresultitem-item">
										<div>한큐 투어리스트 패스 1/2일권</div>
									</div>
									<div class="searchresultitem-item">
										<div>타이페이 101 타워 전망대 (QR 빠른 입장)</div>
									</div>
									<div class="searchresultitem-item">
										<div>옥토퍼스 HKD 50 충전 (홍콩공항수령)</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div id="back-image1" class="image imageplus"></div>
		<div id="back-image2" class="image imageplus"></div>
		<div id="back-image3" class="image imageplus"></div>
		<div id="back-image4" class="image imageplus"></div>
		<div id="back-image5" class="image imageplus"></div>
	</div>

	<div id="main-container">
		<div class="main-item-container">
			<div class="main-itemtitle">
				<div class="main-itemtitle-title">인기 여행지</div>
				<div class="main-itemtitle-sub">2019년 가장 핫한 여행지를 추천해요</div>
			</div>

			<div class="swiper-list-container">
				<div class="swiper-container swiper-container1 content popularArea swiper-container-initialized swiper-container-horizontal">
					<div class="swiper-wrapper">
					<c:forEach items="${citylist}" var="dto">
						<div class="arealist-slide swiper-slide swiper-slide-visible swiper-slide-active" style="margin-right : 16px;" onclick="location.href='./goods/goods_area?city_num=${dto.city_num}'">
							<div class="area-card-container">
								<div class="area-card-content swiper-lazy swiper-lazy-loaded"
									style="background-image: url('${dto.city_img}');">
								</div>
								<div class="area-card-text">${dto.city_name}</div>
							</div>
						</div>
					</c:forEach>
						
					</div>
					<div class="prev-btn">
					<div style="opacity: 0;" class="swiper-button-prev popularArea-prev main-swiper-prev-btn swiper-button-disabled" tabindex="0" role="button" aria-label="Previous slide" aria-hidden="false">
					</div>
					</div>
					<div class="next-btn">
					<div style="opacity: 0;" class="swiper-button-next popularArea-next main-swiper-next-btn swiper-button-hidden" tabindex="0" role="button" aria-label="Next slide" aria-hidden="false">
					</div>
					</div>
					<span class="swiper-notification" aria-live="assertive" aria-atomic="true"> </span>
				</div>
			</div>
			<div class="flex">
				<div class="main-itemsubbtn subbtn1">
					<div class="text" id="myBtn2" style="cursor: pointer;">더 많은 여행지 (+148 Cities)</div>
				</div>
			</div>
		</div>
		<!------------------------------------------------ The Modal Start------------------------------------------------>
		<c:import url="./layout/CityList.jsp"></c:import>
		<!------------------------------------------------ The Modal ------------------------------------------------>
		<div class="main-item-container">
			<div class="mainbanner-container">
				<a href="https://www.waug.com/event/event.html?idx=311"> <img
					alt="promotion banner"
					src="https://d2mgzmtdeipcjp.cloudfront.net/files/promotionbanner/2019/12/02/15752526973480.png">
				</a>
			</div>
		</div>
		<div class="main-item-container">
			<div class="main-itemtitle">
				<div class="main-itemtitle-title">빠른 검색</div>
				<div class="main-itemtitle-sub"></div>
			</div>
			<div class="swiper-list-container">
				<div
					class="swiper-container content watem swiper-container-initialized swiper-container-horizontal">
					<div class="swiper-wrapper">
						<div
							class="swiper-slide watemlist-slide swiper-slide-visible swiper-slide-active"
							style="margin-right : 16px;">
							<div class="main-watem-container" style="background-image: url('https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15591018541748.png?s=330x233');">
								<div class="main-watem-text">유심 & 와이파이</div>
							</div>
						</div>
						<div class="swiper-slide watemlist-slide swiper-slide-visible swiper-slide-next" style="margin-right : 16px;">
							<div class="main-watem-container" style="background-image: url('https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15628256865214.png?s=330x233');">
								<div class="main-watem-text">공항 이동수단</div>
							</div>
						</div>
						<div class="swiper-slide watemlist-slide swiper-slide-visible" style="margin-right : 16px;">
							<div class="main-watem-container" style="background-image: url('https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15591018926570.png?s=330x233');">
								<div class="main-watem-text">일본 교통패스</div>
							</div>
						</div>
						<div class="swiper-slide watemlist-slide swiper-slide-visible" style="margin-right : 16px;">
							<div class="main-watem-container" style="background-image: url('https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15591019070628.png?s=330x233');">
								<div class="main-watem-text">유레일 패스</div>
							</div>
						</div>
					</div>
					<span class="swiper-notification" aria-live="assertive" aria-atomic="true"> </span>
				</div>
			</div>
			<div class="flex">
				<div class="main-itemsubbtn subbtn2">
					<div class="text text2">전체 보기</div>
				</div>
			</div>
		</div>
		<div class="main-item-container">
			<div class="main-itemtitle">
				<div class="main-itemtitle-title">와그 추천</div>
				<div class="main-itemtitle-sub"></div>
			</div>
			<h1>${sessionScope.wishlist.email}</h1>
			<div class="swiper-list-container container3">
				<div class="swiper-container swiper-container2 container3 content popularGood swiper-container-initialized swiper-container-horizontal">
					<div class="swiper-wrapper container3" style="transition-duration: 0ms; transform: translate3d(0px, 0px, 0px);">
					
					<c:forEach  items="${list}" var="vo">
			
						<div class="goodlist-slide swiper-slide swiper-slide-visible swiper-slide-active" style="margin-right: 18px;" onclick="location.href='goods/good_page?goods_num=7';">

							<div class="good-card-wrapper swiper-slide onclick-cursor-pointer">
								
								<div class="good-card-background-image-cover" style="background-image: url('${vo.img}');">

									<c:choose>
										<c:when test="${vo.wish eq 1}">
										<div class="good-card-wish-btn onclick-cursor-pointer good-card-wish-btn-whis" title="${vo.goods_num}"></div>
										</c:when>
										<c:when test="${vo.wish eq 0}">
										<div class="good-card-wish-btn onclick-cursor-pointer" title="${vo.goods_num}"></div>
										</c:when>
									</c:choose>
									
								</div>
								
								 	
								<div class="good-card-text-wrapper">
									<div class="good-card-available-date point-color">
										오늘부터 사용가능 <img class="good-card-thunder-icon" src="https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15718112891153.svg">
									</div>
									<div class="good-card-title">${vo.title}</div>
									<div class="good-card-original-price">₩ <fmt:formatNumber type="number" value="${vo.price}"/></div>
									<div class="good-card-price">₩ <fmt:formatNumber type="number" value="${vo.discount}"/></div>
									<div class="good-card-buy-cnt">63,512 예약</div>
									
								</div>
								</a>
							</div>
						</div>

					</c:forEach>		
					
						<div class="goodlist-slide swiper-slide"
							style="margin-right: 18px;">
							<div class="good-card-wrapper swiper-slide onclick-cursor-pointer">
								<div class="good-card-background-image-cover" style="background-image: url('https://d2mgzmtdeipcjp.cloudfront.net/files/good/2019/07/26/15641209630398.png?s=266x175');">
									<div class="good-card-wish-btn onclick-cursor-pointer"></div>
								</div>
								<div class="good-card-text-wrapper">
									<div class="good-card-available-date">내일부터 사용가능</div>
									<div class="good-card-title">프로모션: 와그 핑크 파타야 산호섬 해양 투어(파타야/방콕 출발)</div>
									<div class="good-card-original-price">₩ 40,000</div>
									<div class="good-card-price">₩ 15,000</div>
									<div class="good-card-coupon-text">63% 할인</div>
									<div class="good-card-buy-cnt">13,179 예약</div>
								</div>
							</div>
						</div>
						<div class="goodlist-slide swiper-slide" style="margin-right: 18px;">
							<div class="good-card-wrapper swiper-slide onclick-cursor-pointer">
								<div class="good-card-background-image-cover" style="background-image: url('https://d2mgzmtdeipcjp.cloudfront.net/files/good/2019/11/01/15725721059056.png?s=266x175');">
									<div class="good-card-wish-btn onclick-cursor-pointer"></div>
								</div>
								<div class="good-card-text-wrapper">
									<div class="good-card-available-date point-color">오늘부터 사용가능 
										<img class="good-card-thunder-icon"src="https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15718112891153.svg">
									</div>
									<div class="good-card-title">유니버셜 스튜디오™ 할리우드 1/2일권 (QR 코드즉시 입장)</div>
									<div class="good-card-original-price">₩ 158,800</div>
									<div class="good-card-price">₩ 98,200</div>
									<div class="good-card-coupon-text">10% 할인</div>
									<div class="good-card-buy-cnt">17,908 예약</div>
								</div>
							</div>
						</div>
						<div class="goodlist-slide swiper-slide" style="margin-right: 18px;">
							<div class="good-card-wrapper swiper-slide onclick-cursor-pointer">
								<div class="good-card-background-image-cover" style="background-image: url('https://d2mgzmtdeipcjp.cloudfront.net/files/good/2019/11/01/15725736800893.png?s=266x175');">
									<div class="good-card-wish-btn onclick-cursor-pointer"></div>
								</div>
								<div class="good-card-text-wrapper">
									<div class="good-card-available-date point-color"> 오늘부터 사용가능 
										<img class="good-card-thunder-icon" src="https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15718112891153.svg">
									</div>
									<div class="good-card-title">홍콩 디즈니랜드 1/2일권</div>
									<div class="good-card-original-price">₩ 107,831</div>
									<div class="good-card-price"> ₩ 69,012</div>
									<div class="good-card-coupon-text">10% 할인</div>
									<div class="good-card-buy-cnt">70,974 예약</div>
								</div>
							</div>
						</div>
						<div class="goodlist-slide swiper-slide" style="margin-right: 18px;">
							<div class="good-card-wrapper swiper-slide onclick-cursor-pointer">
								<div class="good-card-background-image-cover" style="background-image: url('https://d2mgzmtdeipcjp.cloudfront.net/files/good/2019/11/15/15737865496525.png?s=266x175');">
									<div class="good-card-wish-btn onclick-cursor-pointer"></div>
								</div>
								<div class="good-card-text-wrapper">
									<div class="good-card-available-date point-color">오늘부터 사용가능
										<img class="good-card-thunder-icon" src="https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15718112891153.svg">
									</div>
									<div class="good-card-title">상하이 디즈니랜드® 입장권 (바우처 즉시 발급)</div>
									<div class="good-card-original-price">₩ 57,079</div>
									<div class="good-card-price">₩ 45,224</div>
									<div class="good-card-coupon-text">10% 할인</div>
									<div class="good-card-buy-cnt">30,038 예약</div>
								</div>
							</div>
						</div>
						<div class="goodlist-slide swiper-slide" style="margin-right : 18px;">
							<div class="good-card-wrapper swiper-slide onclick-cursor-pointer">
								<div class="good-card-background-image-cover" style="background-image: url('https://d2mgzmtdeipcjp.cloudfront.net/files/good/2019/09/23/15692164316838.png?s=266x175');">
									<div class="good-card-wish-btn onclick-cursor-pointer"></div>
								</div>
								<div class="good-card-text-wrapper">
									<div class="good-card-available-date point-color">오늘부터 사용가능 
										<img class="good-card-thunder-icon" src="https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15718112891153.svg">
									</div>
									<div class="good-card-title">와그 특가: 유니버셜 스튜디오 싱가포르 익스프레스패스</div>
									<div class="good-card-original-price">₩ 45,739</div>
									<div class="good-card-price">₩ 41,165</div>
									<div class="good-card-buy-cnt">1,099 예약</div>
								</div>
							</div>
						</div>
						<div class="goodlist-slide swiper-slide" style="margin-right : 18px;">
							<div class="good-card-wrapper swiper-slide onclick-cursor-pointer">
								<div class="good-card-background-image-cover" style="background-image: url('https://d2mgzmtdeipcjp.cloudfront.net/files/good/2019/06/27/15616057795040.png?s=266x175');">
									<div class="good-card-wish-btn onclick-cursor-pointer"></div>
								</div>
								<div class="good-card-text-wrapper">
									<div class="good-card-available-date point-color">오늘부터 사용가능 
										<img class="good-card-thunder-icon" src="https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15718112891153.svg">
									</div>
									<div class="good-card-title">유니버셜 스튜디오 싱가포르 입장권 (바코드 즉시입장)</div>
									<div class="good-card-original-price">₩ 59,000</div>
									<div class="good-card-price">₩ 15,000</div>
									<div class="good-card-buy-cnt">79,422 예약</div>
								</div>
							</div>
						</div>
						<div class="goodlist-slide swiper-slide"
							style="margin-right : 18px;">
							<div
								class="good-card-wrapper swiper-slide onclick-cursor-pointer">
								<div class="good-card-background-image-cover" style="background-image: url('https://d2mgzmtdeipcjp.cloudfront.net/files/good/2019/08/05/15649717155481.png?s=266x175');">
									<div class="good-card-wish-btn onclick-cursor-pointer"></div>
								</div>
								<div class="good-card-text-wrapper">
									<div class="good-card-available-date point-color">오늘부터 사용가능
									<img class="good-card-thunder-icon" src="https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15718112891153.svg">
									</div>
									<div class="good-card-title">다낭 바나힐 입장권 (왕복 케이블카 포함)</div>
									<div class="good-card-original-price">₩ 44,800</div>
									<div class="good-card-price"> ₩ 26,900</div>
									<div class="good-card-coupon-text">40% 할인</div>
									<div class="good-card-buy-cnt">13,958 예약</div>
								</div>
							</div>
						</div>
					</div>
					<div class="prev-btn" style="top:20%;">
					<div style="opacity: 0;" class="swiper-button-prev popularGood-prev main-swiper-prev-btn main-goods-btn swiper-button-disabled" tabindex="0" role="button" aria-label="Previous slide" aria-disabled="true">
					</div>
					</div>
					<div class="next-btn" style="top:20%;">
					<div style="opacity: 0;" class="swiper-button-next popularGood-next main-swiper-next-btn main-goods-btn" tabindex="0" role="button" aria-label="Next slide" aria-disabled="false">
					</div>
					</div>
					<span class="swiper-notification" aria-live="assertive" aria-atomic="true"> </span>
				</div>
			</div>
		</div>
		<div class="main-item-container">
			<div class="main-itemtitle">
				<div class="main-itemtitle-title">이런 여행은 어때요?</div>
				<div class="main-itemtitle-sub">와그 에디터가 추천하는 여행을 만나보세요</div>
			</div>
			<div class="swiper-list-container container4">
				<div class="swiper-container content popularTheme swiper-container-initialized swiper-container-horizontal">
					<div class="swiper-wrapper">
						<a href="./goods/goods_themes">
						<div class="themelist-slide swiper-slide swiper-slide-visible swiper-slide-active" style="margin-right : 16px;">
							<div class="theme-card-container">
								<div class="theme-card-image" style="background-image: url('https://d2mgzmtdeipcjp.cloudfront.net/files/theme/2019/10/31/15725293615137.jpg?s=445x228');">
								</div>
								<div class="theme-card-content">
									<div class="theme-card-cc-category">Food</div>
									<div class="theme-card-cc-title">서울 레스토랑 할인 예약</div>
									<div class="theme-card-cc-content">미슐랭부터 인기 맛집까지</div>
								</div>
							</div>
						</div>
						</a>
						<div class="themelist-slide swiper-slide swiper-slide-visible swiper-slide-next" style="margin-right : 16px;">
							<div class="theme-card-container">
								<div class="theme-card-image" style="background-image: url('https://d2mgzmtdeipcjp.cloudfront.net/files/theme/2019/11/27/15748230679474.jpg?s=445x228');">
								</div>
								<div class="theme-card-content">
									<div class="theme-card-cc-category">Tour</div>
									<div class="theme-card-cc-title">겨울 여행 유럽은 어때?</div>
									<div class="theme-card-cc-content">2019 유럽 투어 할인전!</div>
								</div>
							</div>
						</div>
						<div class="themelist-slide swiper-slide swiper-slide-visible" style="margin-right : 16px;">
							<div class="theme-card-container">
								<div class="theme-card-image" style="background-image: url('https://d2mgzmtdeipcjp.cloudfront.net/files/theme/2019/10/31/15725287418372.png?s=445x228');">
								</div>
								<div class="theme-card-content">
									<div class="theme-card-cc-category">Hot</div>
									<div class="theme-card-cc-title">와그 오리지널 투어 오픈</div>
									<div class="theme-card-cc-content">와그가 직접 만든 퀄리티가 다른 투어</div>
								</div>
							</div>
						</div>
					</div>
					<span class="swiper-notification" aria-live="assertive" aria-atomic="true"> </span>
				</div>
			</div>
		</div>
		<div class="main-item-container">
			<div class="main-itemtitle">
				<div class="main-itemtitle-title">유럽으로 떠나는 휴가</div>
			</div>

			<div class="swiper-list-container">
				<div class="swiper-container swiper-container1 content popularArea swiper-container-initialized swiper-container-horizontal">
					<div class="swiper-wrapper">
					<c:forEach items="${europe_city}" var="dto">
						<div class="arealist-slide swiper-slide swiper-slide-visible swiper-slide-active" style="margin-right : 16px;" onclick="location.href='./goods/goods_area?city_num=${dto.city_num}'">
							<div class="area-card-container">
								<div class="area-card-content swiper-lazy swiper-lazy-loaded"
									style="background-image: url('${dto.city_img}');">
								</div>
								<div class="area-card-text">${dto.city_name}</div>
							</div>
						</div>
					</c:forEach>
						
					</div>
					<div class="prev-btn">
					<div style="opacity: 0;" class="swiper-button-prev popularArea-prev main-swiper-prev-btn swiper-button-disabled" tabindex="0" role="button" aria-label="Previous slide" aria-hidden="false">
					</div>
					</div>
					<div class="next-btn">
					<div style="opacity: 0;" class="swiper-button-next popularArea-next main-swiper-next-btn swiper-button-hidden" tabindex="0" role="button" aria-label="Next slide" aria-hidden="false">
					</div>
					</div>
					<span class="swiper-notification" aria-live="assertive" aria-atomic="true"> </span>
				</div>
			</div>
			
		</div>
		<div class="main-item-container">유럽에서 즐기는 액티비티</div>
		<div class="main-item-container">
			<div class="main-itemtitle">
				<div class="main-itemtitle-title">아시아로 떠나는 휴가</div>
			</div>

			<div class="swiper-list-container">
				<div class="swiper-container swiper-container1 content popularArea swiper-container-initialized swiper-container-horizontal">
					<div class="swiper-wrapper">
					<c:forEach items="${asia_city}" var="dto">
						<div class="arealist-slide swiper-slide swiper-slide-visible swiper-slide-active" style="margin-right : 16px;" onclick="location.href='./goods/goods_area?city_num=${dto.city_num}'">
							<div class="area-card-container">
								<div class="area-card-content swiper-lazy swiper-lazy-loaded"
									style="background-image: url('${dto.city_img}');">
								</div>
								<div class="area-card-text">${dto.city_name}</div>
							</div>
						</div>
					</c:forEach>
						
					</div>
					<div class="prev-btn">
					<div style="opacity: 0;" class="swiper-button-prev popularArea-prev main-swiper-prev-btn swiper-button-disabled" tabindex="0" role="button" aria-label="Previous slide" aria-hidden="false">
					</div>
					</div>
					<div class="next-btn">
					<div style="opacity: 0;" class="swiper-button-next popularArea-next main-swiper-next-btn swiper-button-hidden" tabindex="0" role="button" aria-label="Next slide" aria-hidden="false">
					</div>
					</div>
					<span class="swiper-notification" aria-live="assertive" aria-atomic="true"> </span>
				</div>
			</div>
			
		</div>
		<div class="main-item-container">아시아에서 즐기는 액티비티</div>
		<div class="main-item-container">
			<div class="main-itemtitle">
				<div class="main-itemtitle-title">와그 파트너</div>
				<div class="main-itemtitle-sub">전세계의 파트너와 함께 다양한 프로모션을 제공해요</div>
			</div>
			<div class="swiper-list-container">
				<div class="swiper-container content partners swiper-container-initialized swiper-container-horizontal">
					<div class="swiper-wrapper waugpartner-container">
						<div class="swiper-slide waugpartner-slide swiper-slide-visible swiper-slide-active" style="margin-right: 50px;">
							<img class="waugpartner-image" src="https://www.waug.com/static/images/partnership/universalstudio_gray.png" alt="universal">
						</div>
						<div class="swiper-slide waugpartner-slide swiper-slide-visible swiper-slide-next" style="margin-right: 50px;">
							<img class="waugpartner-image" src="https://www.waug.com/static/images/partnership/disneyland_gray.png" alt="disney">
						</div>
						<div class="swiper-slide waugpartner-slide swiper-slide-visible" style="margin-right: 50px;">
							<img class="waugpartner-image" src="https://www.waug.com/static/images/partnership/bigbus_gray.png" alt="bigbus">
						</div>
						<div class="swiper-slide waugpartner-slide swiper-slide-visible" style="margin-right: 50px;">
							<img class="waugpartner-image" src="https://www.waug.com/static/images/partnership/eurail_gray.png" alt="eurail">
						</div>
						<div class="swiper-slide waugpartner-slide swiper-slide-visible" style="margin-right: 50px;">
							<img class="waugpartner-image" src="https://www.waug.com/static/images/partnership/jr_gray.png" alt="jr">
						</div>
						<div class="swiper-slide waugpartner-slide swiper-slide-visible" style="margin-right: 50px;">
							<img class="waugpartner-image" src="https://www.waug.com/static/images/partnership/merlinentertainments_gray.png" alt="merlin">
						</div>
						<div class="swiper-slide waugpartner-slide swiper-slide-visible" style="margin-right: 50px;">
							<img class="waugpartner-image" src="https://www.waug.com/static/images/partnership/goldenfuture_gray.png" alt="dancingwater">
						</div>
					</div>
					<span class="swiper-notification" aria-live="assertive" aria-atomic="true"> </span>
				</div>
			</div>
		</div>
		<div class="main-item-container">
			<div class="waugappinfo-container">
				<img alt="app info image" src="https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15500289017806.jpg?s=1366x470">
				<div class="waugappinfo-buttoncontainer">
					<div class="waugappinfo-text pc">
						<div class="waugappinfo-title">Explore MORE</div>
						와그 앱을 다운받고 2% 추가 할인을 받으세요
					</div>
					<div class="waugappinfo-button pc">
						<img class="left" alt="ios download" src="https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15440647759349.png?s=140x40">
						<img class="right" alt="aos download" src="https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15440647832570.png?s=140x40">
					</div>
				</div>
			</div>
		</div>
		<button onclick="location.href='./admin/admin_main'">
			관리자페이지
		</button>
		<c:import url="./layout/Footer.jsp"></c:import>
	</div>

	<script type="text/javascript">
		
		$(document).scroll(function() {
			console.log($(this).scrollTop());
		})
		var images = new Array();


		images[0] = "15749313219637";
		images[1] = "15749313311326";
		images[2] = "15749313431875";
		images[3] = "15749313553829";
		images[4] = "15749313677158";
		var div = new Array();
		div[0] = "#back-image1";
		div[1] = "#back-image2";
		div[2] = "#back-image3";
		div[3] = "#back-image4";
		div[4] = "#back-image5";

		var i = 0;
		/* 배경화면 전환 jquery */
		setInterval(function() {
			$(div[i]).fadeOut(1500, function() {
			});
			i = i + 1;
			if (i > 4) {
				i = 0;
			};
			$(div[i]).fadeIn(1500,function() {
				$(this).css("background-image","url(https://d2mgzmtdeipcjp.cloudfront.net/files/upload/"+ images[i] + ".jpg)");
					});
			}, 5000);

		/* 검색창 jquery */
		$("#search").focus(function() {
			$(this).attr("placeholder", "");
			$(".searchresult-container").css("display", "flex");
		});
		$("#search").blur(function() {
			if ($(this).attr("placeholder") == "") {
				$(this).attr("placeholder", "액티비티 또는 지역명으로 검색하세요");
			}
			$(".searchresult-container").css("display", "none");
		});

		/* 검색창 호버? */
		$(".searchresultitem-item").mouseenter(function() {
			$(this).toggleClass("mouseenter");
			$(this).children().css("color", "#d91c84")
		});
		$(".searchresultitem-item").mouseleave(function() {
			$(this).toggleClass("mouseenter");
			$(this).children().css("color", "#333333");
		});
		/* 위시리스트 jquery */
		
		$(".good-card-wish-btn").click(function() {

			var goods_num = $(this).attr("title");
			
			if($(this).hasClass("good-card-wish-btn-whis")){
				$(this).removeClass("good-card-wish-btn-whis")
				$.ajax({
		        	type: "GET",
		        	url:"./my/wishDel",
		        	data:{
			        	goods_num:goods_num
		        	},
		        	success : function()
		        	{
		        	  alert('success'); 
		        	},
		        	error: function() {
					  alert('fail');
					},
		    	}); 
			}else{
				$(this).addClass("good-card-wish-btn-whis")
				$.ajax({
		        	type: "GET",
		        	url:"./my/wishAdd",
		        	data:{
			        	goods_num:goods_num
		        	},
		        	success : function()
		        	{
		        	  alert('success');  
		        	},
		        	error: function() {
					  alert('fail');
					},
		    	});  
			}
		});
		/* 모달 */
		// Get the modal
		var modal = document.getElementById("myModal");
		// Get the button that opens the modal
		var btn2 = document.getElementById("myBtn2");
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
			$(".continent-text").removeClass("active2");
			$(this).parent().parent().addClass("active-continent");
			$(this).parent().addClass("active2");
		});

		/* $(".continent-item").click(function() {
			$(".continent-item").removeClass("active-continent");
			$(".continent-text").removeClass("active");
			$(this).addClass("active-continent");
			$(this).children().addClass("active");
		}); */

		/* swiper */

		var mySwiper1 = new Swiper('.swiper-container1', {
			// Optional parameters
			direction : 'horizontal',
			// Navigation arrows
			navigation : {
				nextEl : '.swiper-button-next',
				prevEl : '.swiper-button-prev',
			},

			slidesPerView : 8,
			slidesPerGroup : 1,
		});

		var mySwiper2 = new Swiper('.swiper-container2', {
			// Optional parameters
			direction : 'horizontal',
			// Navigation arrows
			navigation : {
				nextEl : '.swiper-button-next',
				prevEl : '.swiper-button-prev',
			},
			setWrapperSize : true,
			slidesPerView : 5,
			slidesPerGroup : 1,
		});

		/* 파트너 */
		$(".waugpartner-image").mouseenter(function() {
			var url = $(this).attr("src");
			url = url.replace('gray', 'color');
			$(this).attr("src", url);
		});
		$(".waugpartner-image").mouseleave(function() {
			var url = $(this).attr("src");
			url = url.replace('color', 'gray');
			$(this).attr("src", url);
		});
		

		/* test */
		$(".btn-test").click(function() {
			$(".swiper-button-prev").click();
		});
		
	

	 	$(document).scroll(function(){
		     if($(document).scrollTop()>650){
		        $('.nav-wrapper').addClass('nav_toggle');
		     }
		     else{
		        $('.nav-wrapper').removeClass('nav_toggle');
		     }
		  });

	</script>
</body>
</html>
