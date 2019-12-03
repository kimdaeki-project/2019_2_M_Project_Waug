<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title class="next-head">짜그 WAUG - 전세계 액티비티, 입장권, 교통 , 유심</title>
<link rel="shortcut icon" href="./resources/favicon-32x32.png"
	type="image/x-icon" />
<link rel="icon" href="/favicon.ico" type="image/x-icon">
<link
	href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://unpkg.com/swiper/css/swiper.css">
<link rel="stylesheet" href="https://unpkg.com/swiper/css/swiper.min.css">

<script src="https://unpkg.com/swiper/js/swiper.js"></script>
<script src="https://unpkg.com/swiper/js/swiper.min.js"></script>

<link rel="stylesheet" href="resources/css/home.css">

</head>
<body>

	<div id="main-wrapper">
		<div id="main-header">
			<div id="main-header-items">
				<div class="text2">겨울3 여행은 어디로 떠날까요?</div>
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
										<div>유심 &amp; 와이파이</div>
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
		<div id="back-image1" class="image"></div>
		<div id="back-image2" class="image"></div>
		<div id="back-image3" class="image"></div>
		<div id="back-image4" class="image"></div>
		<div id="back-image5" class="image"></div>
		<div id="back-image6" class="image"></div>
	</div>

	<div id="main-container">
		<div class="main-item-container">
			<div class="main-itemtitle">
				<div class="main-itemtitle-title">인기 여행지</div>
				<div class="main-itemtitle-sub">2019년 가장 핫한 여행지를 추천해요</div>
			</div>

			<div class="swiper-list-container">
				<div
					class="swiper-container swiper-container1 content popularArea swiper-container-initialized swiper-container-horizontal">
					<div class="swiper-wrapper">
						<div
							class="arealist-slide swiper-slide swiper-slide-visible swiper-slide-active"
							style="margin-right: 15px;">
							<div class="area-card-container">
								<div class="area-card-content swiper-lazy swiper-lazy-loaded"
									style="background-image: url('https://d2mgzmtdeipcjp.cloudfront.net/files/main/2016/06/14648398959249.png?s=157.5x244');">
								</div>
								<div class="area-card-text">괌</div>
							</div>
						</div>
						<div
							class="arealist-slide swiper-slide swiper-slide-visible swiper-slide-next"
							style="margin-right: 15px;">
							<div class="area-card-container">
								<div class="area-card-content swiper-lazy swiper-lazy-loaded"
									style="background-image: url('https://d2mgzmtdeipcjp.cloudfront.net/files/main/2016/10/14777528392896.png?s=157.5x244');">
								</div>
								<div class="area-card-text">방콕</div>
							</div>
						</div>
						<div class="arealist-slide swiper-slide swiper-slide-visible"
							style="margin-right: 15px;">
							<div class="area-card-container">
								<div class="area-card-content swiper-lazy swiper-lazy-loaded"
									style="background-image: url('https://d2mgzmtdeipcjp.cloudfront.net/files/main/2018/03/02/15200019883567.png?s=157.5x244');">
								</div>
								<div class="area-card-text">오사카</div>
							</div>
						</div>
						<div class="arealist-slide swiper-slide swiper-slide-visible"
							style="margin-right: 15px;">
							<div class="area-card-container">
								<div class="area-card-content swiper-lazy swiper-lazy-loaded"
									style="background-image: url('https://d2mgzmtdeipcjp.cloudfront.net/files/main/2016/10/14768018488168.png?s=157.5x244');">
								</div>
								<div class="area-card-text">서울</div>
							</div>
						</div>
						<div class="arealist-slide swiper-slide"
							style="margin-right: 15px;">
							<div class="area-card-container">
								<div class="area-card-content swiper-lazy swiper-lazy-loaded"
									style="background-image: url('https://d2mgzmtdeipcjp.cloudfront.net/files/main/2018/06/03/15280069047628.png?s=157.5x244');">
								</div>
								<div class="area-card-text">다낭</div>
							</div>
						</div>
						<div class="arealist-slide swiper-slide"
							style="margin-right: 15px;">
							<div class="area-card-container">
								<div class="area-card-content swiper-lazy swiper-lazy-loaded"
									style="background-image: url('https://d2mgzmtdeipcjp.cloudfront.net/files/main/2016/06/14648743422700.png?s=157.5x244');">
								</div>
								<div class="area-card-text">보라카이</div>
							</div>
						</div>
						<div class="arealist-slide swiper-slide"
							style="margin-right: 15px;">
							<div class="area-card-container">
								<div class="area-card-content swiper-lazy swiper-lazy-loaded"
									style="background-image: url('https://d2mgzmtdeipcjp.cloudfront.net/files/main/2017/04/14935341123847.png?s=157.5x244');">
								</div>
								<div class="area-card-text">타이페이</div>
							</div>
						</div>
						<div class="arealist-slide swiper-slide"
							style="margin-right: 15px;">
							<div class="area-card-container">
								<div class="area-card-content swiper-lazy swiper-lazy-loaded"
									style="background-image: url('https://d2mgzmtdeipcjp.cloudfront.net/files/main/2016/10/14768019228529.png?s=157.5x244');">
								</div>
								<div class="area-card-text">싱가포르</div>
							</div>
						</div>
						<div class="arealist-slide swiper-slide"
							style="margin-right: 15px;">
							<div class="area-card-container">
								<div
									data-background="https://d2mgzmtdeipcjp.cloudfront.net/files/main/2017/06/14983959773745.png?s=157.5x244"
									class="area-card-content swiper-lazy">
									<div class="swiper-lazy-preloader"></div>
								</div>
								<div class="area-card-text">도쿄</div>
							</div>
						</div>
						<div class="arealist-slide swiper-slide"
							style="margin-right: 15px;">
							<div class="area-card-container">
								<div
									data-background="https://d2mgzmtdeipcjp.cloudfront.net/files/main/2018/03/02/15200017002800.png?s=157.5x244"
									class="area-card-content swiper-lazy">
									<div class="swiper-lazy-preloader"></div>
								</div>
								<div class="area-card-text">홍콩</div>
							</div>
						</div>
						<div class="arealist-slide swiper-slide"
							style="margin-right: 15px;">
							<div class="area-card-container">
								<div
									data-background="https://d2mgzmtdeipcjp.cloudfront.net/files/main/2016/04/14615958640638.png?s=157.5x244"
									class="area-card-content swiper-lazy">
									<div class="swiper-lazy-preloader"></div>
								</div>
								<div class="area-card-text">세부</div>
							</div>
						</div>
						<div class="arealist-slide swiper-slide"
							style="margin-right: 15px;">
							<div class="area-card-container">
								<div
									data-background="https://d2mgzmtdeipcjp.cloudfront.net/files/main/2018/09/14/15369181593516.png?s=157.5x244"
									class="area-card-content swiper-lazy">
									<div class="swiper-lazy-preloader"></div>
								</div>
								<div class="area-card-text">알자스</div>
							</div>
						</div>
						<div class="arealist-slide swiper-slide"
							style="margin-right: 15px;">
							<div class="area-card-container">
								<div
									data-background="https://d2mgzmtdeipcjp.cloudfront.net/files/main/2018/11/26/15432380503230.jpg?s=157.5x244"
									class="area-card-content swiper-lazy">
									<div class="swiper-lazy-preloader"></div>
								</div>
								<div class="area-card-text">아유타야</div>
							</div>
						</div>
						<div class="arealist-slide swiper-slide"
							style="margin-right: 15px;">
							<div class="area-card-container">
								<div
									data-background="https://d2mgzmtdeipcjp.cloudfront.net/files/main/2018/03/19/15214381047353.png?s=157.5x244"
									class="area-card-content swiper-lazy">
									<div class="swiper-lazy-preloader"></div>
								</div>
								<div class="area-card-text">레이캬비크</div>
							</div>
						</div>
						<div class="arealist-slide swiper-slide"
							style="margin-right: 15px;">
							<div class="area-card-container">
								<div
									data-background="https://d2mgzmtdeipcjp.cloudfront.net/files/main/2019/07/25/15640208744860.png?s=157.5x244"
									class="area-card-content swiper-lazy">
									<div class="swiper-lazy-preloader"></div>
								</div>
								<div class="area-card-text">하이난</div>
							</div>
						</div>
						<div class="arealist-slide swiper-slide"
							style="margin-right: 15px;">
							<div class="area-card-container">
								<div
									data-background="https://d2mgzmtdeipcjp.cloudfront.net/files/main/2019/09/02/15674017580604.png?s=157.5x244"
									class="area-card-content swiper-lazy">
									<div class="swiper-lazy-preloader"></div>
								</div>
								<div class="area-card-text">항저우</div>
							</div>
						</div>
					</div>
					<div
						class="swiper-button-prev popularArea-prev main-swiper-prev-btn swiper-button-disabled"
						tabindex="0" role="button" aria-label="Previous slide"
						aria-disabled="true"></div>
					<div
						class="swiper-button-next popularArea-next main-swiper-next-btn"
						tabindex="0" role="button" aria-label="Next slide"
						aria-disabled="false"></div>
					<span class="swiper-notification" aria-live="assertive"
						aria-atomic="true"> </span>
				</div>
			</div>
			<div class="flex">
				<div class="main-itemsubbtn subbtn1">
					<div class="text" id="myBtn">더 많은 여행지 (+148 Cities)</div>
				</div>
			</div>
		</div>
		<!------------------------------------------------ The Modal Start------------------------------------------------>
		<div id="myModal" class="modal">
			<!-- Modal content -->
			<div class="modal-content">
				<div class="popup-city">
					<div class="popup-background onclick-cursor-pointer"></div>
					<div class="area-wrapper">
						<div class="continent-tap nav nav-tabs">
							<div
								class="continent-item onclick-cursor-pointer active-continent">
								<div class="active continent-text">
									<a data-toggle="tab" href="#east-asia" class="con">동아시아</a>
								</div>
							</div>
							<div class="continent-item onclick-cursor-pointer">
								<div class="continent-text">
									<a data-toggle="tab" href="#southeast-asia" class="con">동남아시아</a>
								</div>
							</div>
							<div class="continent-item onclick-cursor-pointer">
								<div class="continent-text">
									<a data-toggle="tab" href="#southwest-asia" class="con">서남아시아</a>
								</div>
							</div>
							<div class="continent-item onclick-cursor-pointer">
								<div class="continent-text">
									<a data-toggle="tab" href="#europe" class="con">유럽</a>
								</div>
							</div>
							<div class="continent-item onclick-cursor-pointer">
								<div class="continent-text">
									<a data-toggle="tab" href="#america" class="con">아메리카</a>
								</div>
							</div>
							<div class="continent-item onclick-cursor-pointer">
								<div class="continent-text">
									<a data-toggle="tab" href="#oceania" class="con">오세아니아</a>
								</div>
							</div>
							<div class="continent-item onclick-cursor-pointer">
								<div class="continent-text">
									<a data-toggle="tab" href="#afreeca" class="con">아프리카</a>
								</div>
							</div>
						</div>
						<div class="tab-content area-list">
							<div id="east-asia" class="tab-pane fade in active">
								<div class="country-item odd display">
									<div class="country-text">대한민국</div>
									<div class="city-wrapper">
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">서울</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">제주도</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">부산</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">강원도</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">경기도</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">대구</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">경상도</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">인천</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">전라도</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">충청도</a>
											</div>
										</div>
									</div>
								</div>
								<div class="country-item display">
									<div class="country-text">일본</div>
									<div class="city-wrapper">
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">오사카</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">도쿄</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">후쿠오카 &amp; 큐슈</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">오키나와</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">나고야 &amp; 시즈오카</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">교토 &amp; 간사이</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">홋카이도</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">유후인</a>
											</div>
										</div>
									</div>
								</div>
								<div class="country-item odd display">
									<div class="country-text">홍콩</div>
									<div class="city-wrapper">
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">홍콩</a>
											</div>
										</div>
									</div>
								</div>
								<div class="country-item display">
									<div class="country-text">마카오</div>
									<div class="city-wrapper">
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">마카오</a>
											</div>
										</div>
									</div>
								</div>
								<div class="country-item odd display">
									<div class="country-text">대만</div>
									<div class="city-wrapper">
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">타이페이</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">타이중</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">가오슝</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">컨딩</a>
											</div>
										</div>
									</div>
								</div>
								<div class="country-item display">
									<div class="country-text">중국</div>
									<div class="city-wrapper">
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">상하이</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">베이징</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">칭다오</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">청두</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">광저우</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">하이난</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">항저우</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">장가계</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">충칭</a>
											</div>
										</div>
									</div>
								</div>
								<div class="country-item odd display">
									<div class="country-text">몽골</div>
									<div class="city-wrapper">
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">울란바토르</a>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div id="southeast-asia" class="tab-pane fade">
								<div class="country-item odd">
									<div class="country-text">태국</div>
									<div class="city-wrapper">
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">방콕</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">코사무이</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">파타야</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">푸켓</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">치앙마이</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">끄라비</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">후아힌</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">아유타야</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">핫야이 &amp; 꼬리뻬</a>
											</div>
										</div>
									</div>
								</div>
								<div class="country-item">
									<div class="country-text">싱가포르</div>
									<div class="city-wrapper">
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">싱가포르</a>
											</div>
										</div>
									</div>
								</div>
								<div class="country-item odd">
									<div class="country-text">필리핀</div>
									<div class="city-wrapper">
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">보라카이</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">세부</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">마닐라</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">보홀</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">팔라완</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">클락 &amp; 수빅</a>
											</div>
										</div>
									</div>
								</div>
								<div class="country-item">
									<div class="country-text">라오스</div>
									<div class="city-wrapper">
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">방비엥</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">비엔티안</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">루앙프라방</a>
											</div>
										</div>
									</div>
								</div>
								<div class="country-item odd">
									<div class="country-text">말레이시아</div>
									<div class="city-wrapper">
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">코타키나발루</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">쿠알라룸푸르</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">조호바루</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">이포</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">페낭</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">랑카위</a>
											</div>
										</div>
									</div>
								</div>
								<div class="country-item">
									<div class="country-text">베트남</div>
									<div class="city-wrapper">
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">하노이</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">다낭</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">호치민</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">호이안</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">나트랑</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">후에</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">달랏</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">하롱베이</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">푸꾸옥</a>
											</div>
										</div>
									</div>
								</div>
								<div class="country-item odd">
									<div class="country-text">인도네시아</div>
									<div class="city-wrapper">
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">발리</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">빈탄</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">자카르타</a>
											</div>
										</div>
									</div>
								</div>
								<div class="country-item">
									<div class="country-text">캄보디아</div>
									<div class="city-wrapper">
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">씨엠립</a>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div id="southwest-asia" class="tab-pane fade">
								<div class="country-item odd">
									<div class="country-text">아랍에미리트</div>
									<div class="city-wrapper">
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">두바이</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">아부다비</a>
											</div>
										</div>
									</div>
								</div>
								<div class="country-item">
									<div class="country-text">오만</div>
									<div class="city-wrapper">
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">무스카트</a>
											</div>
										</div>
									</div>
								</div>
								<div class="country-item odd">
									<div class="country-text">인도</div>
									<div class="city-wrapper">
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">델리</a>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div id="europe" class="tab-pane fade">
								<div class="country-item odd">
									<div class="country-text">프랑스</div>
									<div class="city-wrapper">
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">파리</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">니스</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">옹플뢰르</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">마르세유</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">알자스</a>
											</div>
										</div>
									</div>
								</div>
								<div class="country-item">
									<div class="country-text">이탈리아</div>
									<div class="city-wrapper">
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">로마</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">피렌체</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">베네치아</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">밀라노</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">나폴리</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">피사</a>
											</div>
										</div>
									</div>
								</div>
								<div class="country-item odd">
									<div class="country-text">터키</div>
									<div class="city-wrapper">
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">이스탄불</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">카파도키아</a>
											</div>
										</div>
									</div>
								</div>
								<div class="country-item">
									<div class="country-text">스페인</div>
									<div class="city-wrapper">
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">마드리드</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">바르셀로나</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">톨레도</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">세비야</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">그라나다</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">테네리페</a>
											</div>
										</div>
									</div>
								</div>
								<div class="country-item odd">
									<div class="country-text">영국</div>
									<div class="city-wrapper">
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">런던</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">에딘버러</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">맨체스터</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">리버풀</a>
											</div>
										</div>
									</div>
								</div>
								<div class="country-item">
									<div class="country-text">네덜란드</div>
									<div class="city-wrapper">
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">암스테르담</a>
											</div>
										</div>
									</div>
								</div>
								<div class="country-item odd">
									<div class="country-text">독일</div>
									<div class="city-wrapper">
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">베를린</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">프랑크푸르트</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">뮌헨</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">함부르크</a>
											</div>
										</div>
									</div>
								</div>
								<div class="country-item">
									<div class="country-text">포르투갈</div>
									<div class="city-wrapper">
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">리스본</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">포르토</a>
											</div>
										</div>
									</div>
								</div>
								<div class="country-item odd">
									<div class="country-text">체코</div>
									<div class="city-wrapper">
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">프라하</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">크룸로프</a>
											</div>
										</div>
									</div>
								</div>
								<div class="country-item">
									<div class="country-text">스위스</div>
									<div class="city-wrapper">
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">인터라켄</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">루체른</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">취리히</a>
											</div>
										</div>
									</div>
								</div>
								<div class="country-item odd">
									<div class="country-text">오스트리아</div>
									<div class="city-wrapper">
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">비엔나</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">잘츠부르크 &amp; 인스부르크</a>
											</div>
										</div>
									</div>
								</div>
								<div class="country-item">
									<div class="country-text">헝가리</div>
									<div class="city-wrapper">
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">부다페스트</a>
											</div>
										</div>
									</div>
								</div>
								<div class="country-item odd">
									<div class="country-text">벨기에</div>
									<div class="city-wrapper">
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">브뤼셀</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">브뤼헤</a>
											</div>
										</div>
									</div>
								</div>
								<div class="country-item">
									<div class="country-text">핀란드</div>
									<div class="city-wrapper">
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">헬싱키</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">로바니에미</a>
											</div>
										</div>
									</div>
								</div>
								<div class="country-item odd">
									<div class="country-text">그리스</div>
									<div class="city-wrapper">
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">산토리니</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">아테네</a>
											</div>
										</div>
									</div>
								</div>
								<div class="country-item">
									<div class="country-text">아일랜드</div>
									<div class="city-wrapper">
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">더블린</a>
											</div>
										</div>
									</div>
								</div>
								<div class="country-item odd">
									<div class="country-text">폴란드</div>
									<div class="city-wrapper">
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">크라쿠프</a>
											</div>
										</div>
									</div>
								</div>

								<div id="southwest-asia" class="tab-pane fade"></div>
								<div class="country-item">
									<div class="country-text">아이슬란드</div>
									<div class="city-wrapper">
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">레이캬비크</a>
											</div>
										</div>
									</div>
								</div>
								<div class="country-item odd">
									<div class="country-text">러시아</div>
									<div class="city-wrapper">
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">모스크바</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">상트페테르부르크</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">블라디보스톡</a>
											</div>
										</div>
									</div>
								</div>
								<div class="country-item">
									<div class="country-text">크로아티아</div>
									<div class="city-wrapper">
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">자그레브</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">스플리트</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">두브로브니크</a>
											</div>
										</div>
									</div>
								</div>
								<div class="country-item odd">
									<div class="country-text">노르웨이</div>
									<div class="city-wrapper">
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">오슬로</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">트롬쇠</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">베르겐</a>
											</div>
										</div>
									</div>
								</div>
								<div class="country-item">
									<div class="country-text">덴마크</div>
									<div class="city-wrapper">
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">코펜하겐</a>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div id="america" class="tab-pane fade">
								<div class="country-item odd">
									<div class="country-text">미국</div>
									<div class="city-wrapper">
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">뉴욕</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">라스베가스</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">로스앤젤레스</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">샌프란시스코</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">시카고</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">올랜도</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">필라델피아</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">마이애미</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">시애틀</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">보스턴</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">워싱턴 D.C.</a>
											</div>
										</div>
									</div>
								</div>
								<div class="country-item">
									<div class="country-text">캐나다</div>
									<div class="city-wrapper">
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">벤쿠버</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">토론토</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">캘거리</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">퀘백</a>
											</div>
										</div>
									</div>
								</div>
								<div class="country-item odd">
									<div class="country-text">멕시코</div>
									<div class="city-wrapper">
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">칸쿤</a>
											</div>
										</div>
									</div>
								</div>
								<div class="country-item">
									<div class="country-text">하와이</div>
									<div class="city-wrapper">
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">하와이</a>
											</div>
										</div>
									</div>
								</div>
								<div class="country-item odd">
									<div class="country-text">괌 &amp; 사이판</div>
									<div class="city-wrapper">
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">괌</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">사이판</a>
											</div>
										</div>
									</div>
								</div>
								<div class="country-item">
									<div class="country-text">쿠바</div>
									<div class="city-wrapper">
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">아바나</a>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div id="oceania" class="tab-pane fade">
								<div class="country-item odd">
									<div class="country-text">호주</div>
									<div class="city-wrapper">
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">시드니</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">골드코스트 &amp; 브리즈번</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">멜버른</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">케언즈</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">퍼스</a>
											</div>
										</div>
									</div>
								</div>
								<div class="country-item">
									<div class="country-text">뉴질랜드</div>
									<div class="city-wrapper">
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">퀸즈타운 &amp; 남섬</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">오클랜드 &amp; 북섬</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">로토루아</a>
											</div>
										</div>
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">크라이스트처치</a>
											</div>
										</div>
									</div>
								</div>
								<div class="country-item odd">
									<div class="country-text">팔라우</div>
									<div class="city-wrapper">
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">팔라우</a>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div id="afreeca" class="tab-pane fade">
								<div class="country-item odd">
									<div class="country-text">남아프리카공화국</div>
									<div class="city-wrapper">
										<div class="city-item onclick-cursor-pointer">
											<div class="city-text">
												<a href="#">케이프타운</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="city-abbr">
							<span>곧, 더 많은 도시가 추가될 예정입니다. </span>
						</div>
					</div>
				</div>
			</div>

		</div>
		<!------------------------------------------------ The Modal ------------------------------------------------>
		<div class="main-item-container">
			<div class="mainbanner-container">
				<a href="https://www.waug.com/event/event.html?idx=311"> <img
					alt="promotion banner"
					src="https://d2mgzmtdeipcjp.cloudfront.net/files/promotionbanner/2019/11/05/15729232961789.png">
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
							style="margin-right: 15px;">
							<div class="main-watem-container"
								style="background-image: url('https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15591018541748.png?s=330x233');">
								<div class="main-watem-text">유심 & 와이파이</div>
							</div>
						</div>
						<div
							class="swiper-slide watemlist-slide swiper-slide-visible swiper-slide-next"
							style="margin-right: 15px;">
							<div class="main-watem-container"
								style="background-image: url('https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15628256865214.png?s=330x233');">
								<div class="main-watem-text">공항 이동수단</div>
							</div>
						</div>
						<div class="swiper-slide watemlist-slide swiper-slide-visible"
							style="margin-right: 15px;">
							<div class="main-watem-container"
								style="background-image: url('https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15591018926570.png?s=330x233');">
								<div class="main-watem-text">일본 교통패스</div>
							</div>
						</div>
						<div class="swiper-slide watemlist-slide swiper-slide-visible"
							style="margin-right: 15px;">
							<div class="main-watem-container"
								style="background-image: url('https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15591019070628.png?s=330x233');">
								<div class="main-watem-text">유레일 패스</div>
							</div>
						</div>
					</div>
					<span class="swiper-notification" aria-live="assertive"
						aria-atomic="true"> </span>
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
			<div class="swiper-list-container container3">
				<div
					class="swiper-container  swiper-container2 container3 content popularGood swiper-container-initialized swiper-container-horizontal">
					<div class="swiper-wrapper container3"
						style="transition-duration: 0ms; transform: translate3d(0px, 0px, 0px);">
						<div
							class="goodlist-slide swiper-slide swiper-slide-visible swiper-slide-active"
							style="margin-right: 15px;">
							<div
								class="good-card-wrapper swiper-slide onclick-cursor-pointer">
								<div class="good-card-background-image-cover"
									style="background-image: url('https://d2mgzmtdeipcjp.cloudfront.net/files/good/2019/11/26/15747517566386.png?s=261x175');">
									<div class="good-card-wish-btn onclick-cursor-pointer"></div>
								</div>
								<div class="good-card-text-wrapper">
									<div class="good-card-available-date point-color">
										오늘부터 사용가능 <img class="good-card-thunder-icon"
											src="https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15718112891153.svg">
									</div>
									<div class="good-card-title">프로모션3: 오사카 하루카스 300
										입장권(1+1이벤트)</div>
									<div class="good-card-original-price">₩ 20,000</div>
									<div class="good-card-price">₩ 13,000</div>
									<div class="good-card-buy-cnt">63,512 예약</div>
								</div>
							</div>
						</div>
						<div
							class="goodlist-slide swiper-slide swiper-slide-visible swiper-slide-next"
							style="margin-right: 15px;">
							<div
								class="good-card-wrapper swiper-slide onclick-cursor-pointer">
								<div class="good-card-background-image-cover"
									style="background-image: url('https://d2mgzmtdeipcjp.cloudfront.net/files/good/2019/07/24/15639560567339.png?s=261x175');">
									<div class="good-card-wish-btn onclick-cursor-pointer"></div>
								</div>
								<div class="good-card-text-wrapper">
									<div class="good-card-available-date">내일부터 사용가능</div>
									<div class="good-card-title">3+1프로모션: 와그 핑크 대만 예스진지 버스투어
									</div>
									<div class="good-card-original-price">₩ 30,000</div>
									<div class="good-card-price">₩ 22,000</div>
									<div class="good-card-coupon-text">27% 할인</div>
									<div class="good-card-buy-cnt">21,950 예약</div>
								</div>
							</div>
						</div>
						<div class="goodlist-slide swiper-slide swiper-slide-visible"
							style="margin-right: 15px;">
							<div
								class="good-card-wrapper swiper-slide onclick-cursor-pointer">
								<div class="good-card-background-image-cover"
									style="background-image: url('https://d2mgzmtdeipcjp.cloudfront.net/files/good/2019/11/11/15734582409642.png?s=261x175');">
									<div class="good-card-wish-btn onclick-cursor-pointer"></div>
								</div>
								<div class="good-card-text-wrapper">
									<div class="good-card-available-date">12월 01일부터 사용가능</div>
									<div class="good-card-title">와그 핑크 바나힐 일일 투어 (다낭 출발)</div>
									<div class="good-card-original-price">₩ 53,200</div>
									<div class="good-card-price">₩ 45,900</div>
									<div class="good-card-buy-cnt">861 예약</div>
								</div>
							</div>
						</div>
						<div class="goodlist-slide swiper-slide swiper-slide-visible"
							style="margin-right: 15px;">
							<div
								class="good-card-wrapper swiper-slide onclick-cursor-pointer">
								<div class="good-card-background-image-cover"
									style="background-image: url('https://d2mgzmtdeipcjp.cloudfront.net/files/good/2019/11/28/15749107464976.png?s=261x175');">
									<div class="good-card-wish-btn onclick-cursor-pointer"></div>
								</div>
								<div class="good-card-text-wrapper">
									<div class="good-card-available-date point-color">
										오늘부터 사용가능 <img class="good-card-thunder-icon"
											src="https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15718112891153.svg">
									</div>
									<div class="good-card-title">1+1 프로모션: 제주신화월드 이용권</div>
									<div class="good-card-original-price">₩ 19,000</div>
									<div class="good-card-price">₩ 9,000</div>
									<div class="good-card-buy-cnt">43,489 예약</div>
								</div>
							</div>
						</div>
						<div class="goodlist-slide swiper-slide swiper-slide-visible"
							style="margin-right: 15px;">
							<div
								class="good-card-wrapper swiper-slide onclick-cursor-pointer">
								<div class="good-card-background-image-cover"
									style="background-image: url('https://d2mgzmtdeipcjp.cloudfront.net/files/good/2019/11/18/15740647613040.png?s=261x175');">
									<div class="good-card-wish-btn onclick-cursor-pointer"></div>
								</div>
								<div class="good-card-text-wrapper">
									<div class="good-card-available-date point-color">
										오늘부터 사용가능 <img class="good-card-thunder-icon"
											src="https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15718112891153.svg">
									</div>
									<div class="good-card-title">얼리버드 특가: 에버랜드 자유 이용권</div>
									<div class="good-card-original-price">₩ 56,000</div>
									<div class="good-card-price">₩ 29,000</div>
									<div class="good-card-buy-cnt">73 예약</div>
								</div>
							</div>
						</div>
						<div class="goodlist-slide swiper-slide"
							style="margin-right: 15px;">
							<div
								class="good-card-wrapper swiper-slide onclick-cursor-pointer">
								<div class="good-card-background-image-cover"
									style="background-image: url('https://d2mgzmtdeipcjp.cloudfront.net/files/good/2019/07/26/15641209630398.png?s=261x175');">
									<div class="good-card-wish-btn onclick-cursor-pointer"></div>
								</div>
								<div class="good-card-text-wrapper">
									<div class="good-card-available-date">내일부터 사용가능</div>
									<div class="good-card-title">프로모션: 와그 핑크 파타야 산호섬 해양 투어
										(파타야/방콕 출발)</div>
									<div class="good-card-original-price">₩ 40,000</div>
									<div class="good-card-price">
										₩ 15,000
										<div class="good-card-coupon-text">63% 할인</div>
									</div>
									<div class="good-card-buy-cnt">13,179 예약</div>
								</div>
							</div>
						</div>
						<div class="goodlist-slide swiper-slide"
							style="margin-right: 15px;">
							<div
								class="good-card-wrapper swiper-slide onclick-cursor-pointer">
								<div class="good-card-background-image-cover"
									style="background-image: url('https://d2mgzmtdeipcjp.cloudfront.net/files/good/2019/11/01/15725721059056.png?s=261x175');">
									<div class="good-card-wish-btn onclick-cursor-pointer"></div>
								</div>
								<div class="good-card-text-wrapper">
									<div class="good-card-available-date point-color">
										오늘부터 사용가능 <img class="good-card-thunder-icon"
											src="https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15718112891153.svg">
									</div>
									<div class="good-card-title">유니버셜 스튜디오™ 할리우드 1/2일권 (QR 코드
										즉시 입장)</div>
									<div class="good-card-original-price">₩ 158,800</div>
									<div class="good-card-price">
										₩ 98,200
										<div class="good-card-coupon-text">10% 할인</div>
									</div>
									<div class="good-card-buy-cnt">17,908 예약</div>
								</div>
							</div>
						</div>
						<div class="goodlist-slide swiper-slide"
							style="margin-right: 15px;">
							<div
								class="good-card-wrapper swiper-slide onclick-cursor-pointer">
								<div class="good-card-background-image-cover"
									style="background-image: url('https://d2mgzmtdeipcjp.cloudfront.net/files/good/2019/11/01/15725736800893.png?s=261x175');">
									<div class="good-card-wish-btn onclick-cursor-pointer"></div>
								</div>
								<div class="good-card-text-wrapper">
									<div class="good-card-available-date point-color">
										오늘부터 사용가능 <img class="good-card-thunder-icon"
											src="https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15718112891153.svg">
									</div>
									<div class="good-card-title">홍콩 디즈니랜드 1/2일권</div>
									<div class="good-card-original-price">₩ 107,831</div>
									<div class="good-card-price">
										₩ 69,012
										<div class="good-card-coupon-text">10% 할인</div>
									</div>
									<div class="good-card-buy-cnt">70,974 예약</div>
								</div>
							</div>
						</div>
						<div class="goodlist-slide swiper-slide"
							style="margin-right: 15px;">
							<div
								class="good-card-wrapper swiper-slide onclick-cursor-pointer">
								<div class="good-card-background-image-cover"
									style="background-image: url('https://d2mgzmtdeipcjp.cloudfront.net/files/good/2019/11/15/15737865496525.png?s=261x175');">
									<div class="good-card-wish-btn onclick-cursor-pointer"></div>
								</div>
								<div class="good-card-text-wrapper">
									<div class="good-card-available-date point-color">
										오늘부터 사용가능 <img class="good-card-thunder-icon"
											src="https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15718112891153.svg">
									</div>
									<div class="good-card-title">상하이 디즈니랜드® 입장권 (바우처 즉시 발급)</div>
									<div class="good-card-original-price">₩ 57,079</div>
									<div class="good-card-price">
										₩ 45,224
										<div class="good-card-coupon-text">10% 할인</div>
									</div>
									<div class="good-card-buy-cnt">30,038 예약</div>
								</div>
							</div>
						</div>
						<div class="goodlist-slide swiper-slide"
							style="margin-right: 15px;">
							<div
								class="good-card-wrapper swiper-slide onclick-cursor-pointer">
								<div class="good-card-background-image-cover"
									style="background-image: url('https://d2mgzmtdeipcjp.cloudfront.net/files/good/2019/09/23/15692164316838.png?s=261x175');">
									<div class="good-card-wish-btn onclick-cursor-pointer"></div>
								</div>
								<div class="good-card-text-wrapper">
									<div class="good-card-available-date point-color">
										오늘부터 사용가능 <img class="good-card-thunder-icon"
											src="https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15718112891153.svg">
									</div>
									<div class="good-card-title">와그 특가: 유니버셜 스튜디오 싱가포르 익스프레스
										패스</div>
									<div class="good-card-original-price">₩ 45,739</div>
									<div class="good-card-price">₩ 41,165</div>
									<div class="good-card-buy-cnt">1,099 예약</div>
								</div>
							</div>
						</div>
						<div class="goodlist-slide swiper-slide"
							style="margin-right: 15px;">
							<div
								class="good-card-wrapper swiper-slide onclick-cursor-pointer">
								<div class="good-card-background-image-cover"
									style="background-image: url('https://d2mgzmtdeipcjp.cloudfront.net/files/good/2019/06/27/15616057795040.png?s=261x175');">
									<div class="good-card-wish-btn onclick-cursor-pointer"></div>
								</div>
								<div class="good-card-text-wrapper">
									<div class="good-card-available-date point-color">
										오늘부터 사용가능 <img class="good-card-thunder-icon"
											src="https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15718112891153.svg">
									</div>
									<div class="good-card-title">유니버셜 스튜디오 싱가포르 입장권 (바코드 즉시
										입장)</div>
									<div class="good-card-original-price">₩ 59,000</div>
									<div class="good-card-price">₩ 15,000</div>
									<div class="good-card-buy-cnt">79,422 예약</div>
								</div>
							</div>
						</div>
						<div class="goodlist-slide swiper-slide"
							style="margin-right: 15px;">
							<div
								class="good-card-wrapper swiper-slide onclick-cursor-pointer">
								<div class="good-card-background-image-cover"
									style="background-image: url('https://d2mgzmtdeipcjp.cloudfront.net/files/good/2019/08/05/15649717155481.png?s=261x175');">
									<div class="good-card-wish-btn onclick-cursor-pointer"></div>
								</div>
								<div class="good-card-text-wrapper">
									<div class="good-card-available-date point-color">
										오늘부터 사용가능<img class="good-card-thunder-icon"
											src="https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15718112891153.svg">
									</div>
									<div class="good-card-title">다낭 바나힐 입장권 (왕복 케이블카 포함)</div>
									<div class="good-card-original-price">₩ 44,800</div>
									<div class="good-card-price">
										₩ 26,900
										<div class="good-card-coupon-text">40% 할인</div>
									</div>
									<div class="good-card-buy-cnt">13,958 예약</div>
								</div>
							</div>
						</div>
					</div>
					<div
						class="swiper-button-prev popularGood-prev main-swiper-prev-btn main-goods-btn swiper-button-disabled"
						tabindex="0" role="button" aria-label="Previous slide"
						aria-disabled="true"></div>
					<div
						class="swiper-button-next popularGood-next main-swiper-next-btn main-goods-btn"
						tabindex="0" role="button" aria-label="Next slide"
						aria-disabled="false"></div>
					<span class="swiper-notification" aria-live="assertive"
						aria-atomic="true"> </span>
				</div>
			</div>
		</div>
		<div class="main-item-container">
			<div class="main-itemtitle">
				<div class="main-itemtitle-title">이런 여행은 어때요?</div>
				<div class="main-itemtitle-sub">와그 에디터가 추천하는 여행을 만나보세요</div>
			</div>
			<div class="swiper-list-container container4">
				<div
					class="swiper-container content popularTheme swiper-container-initialized swiper-container-horizontal">
					<div class="swiper-wrapper">
						<div
							class="themelist-slide swiper-slide swiper-slide-visible swiper-slide-active"
							style="margin-right: 15px;">
							<div class="theme-card-container">
								<div class="theme-card-image"
									style="background-image: url('https://d2mgzmtdeipcjp.cloudfront.net/files/theme/2019/10/31/15725293615137.jpg?s=445x228');">
								</div>
								<div class="theme-card-content">
									<div class="theme-card-cc-category">Food</div>
									<div class="theme-card-cc-title">서울 레스토랑 할인 예약</div>
									<div class="theme-card-cc-content">미슐랭부터 인기 맛집까지</div>
								</div>
							</div>
						</div>
						<div
							class="themelist-slide swiper-slide swiper-slide-visible swiper-slide-next"
							style="margin-right: 15px;">
							<div class="theme-card-container">
								<div class="theme-card-image"
									style="background-image: url('https://d2mgzmtdeipcjp.cloudfront.net/files/theme/2019/11/27/15748230679474.jpg?s=445x228');">
								</div>
								<div class="theme-card-content">
									<div class="theme-card-cc-category">Tour</div>
									<div class="theme-card-cc-title">겨울 여행 유럽은 어때?</div>
									<div class="theme-card-cc-content">2019 유럽 투어 할인전!</div>
								</div>
							</div>
						</div>
						<div class="themelist-slide swiper-slide swiper-slide-visible"
							style="margin-right: 15px;">
							<div class="theme-card-container">
								<div class="theme-card-image"
									style="background-image: url('https://d2mgzmtdeipcjp.cloudfront.net/files/theme/2019/10/31/15725287418372.png?s=445x228');">
								</div>
								<div class="theme-card-content">
									<div class="theme-card-cc-category">Hot</div>
									<div class="theme-card-cc-title">와그 오리지널 투어 오픈</div>
									<div class="theme-card-cc-content">와그가 직접 만든 퀄리티가 다른 투어</div>
								</div>
							</div>
						</div>
					</div>
					<span class="swiper-notification" aria-live="assertive"
						aria-atomic="true"> </span>
				</div>
			</div>
		</div>
		<div class="main-item-container">유럽으로 떠나는 휴가</div>
		<div class="main-item-container">유럽에서 즐기는 액티비티</div>
		<div class="main-item-container">아시아로 떠나는 휴가</div>
		<div class="main-item-container">아시아에서 즐기는 액티비티</div>
		<div class="main-item-container"></div>
	</div>
	<div class="filebox">
		<label for="ex_file">업로드</label>
		<input type="file" id="ex_file">
	</div>
	<script type="text/javascript">
		var images = new Array();

		images[0] = "15749313071774";
		images[1] = "15749313219637";
		images[2] = "15749313311326";
		images[3] = "15749313431875";
		images[4] = "15749313553829";
		images[5] = "15749313677158";
		var div = new Array();
		div[0] = "#back-image1";
		div[1] = "#back-image2";
		div[2] = "#back-image3";
		div[3] = "#back-image4";
		div[4] = "#back-image5";
		div[5] = "#back-image6";
		var i = 0;
		/* 배경화면 전환 jquery */
		setInterval(function() {
			$(div[i]).fadeOut(1500, function() {
			});
			i = i + 1;
			if (i > 5) {
				i = 0;
			};
			
			$(div[i]).fadeIn(1500,function() {
				$(this).css("background-image","url(https://d2mgzmtdeipcjp.cloudfront.net/files/upload/"+ images[i] + ".jpg)");
					});
			}, 5000);

		/* 검색창 jquery */
		$("#search").focus(function() {
			$(this).attr("placeholder", "");
			$(".searchresult-container").css("display","flex");
		});
		$("#search").blur(function() {
			if ($(this).attr("placeholder") == "") {
				$(this).attr("placeholder", "액티비티 또는 지역명으로 검색하세요");
			}
			$(".searchresult-container").css("display","none");
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
			$(this).toggleClass("good-card-wish-btn-whis");
		});
		/* 모달 */
		// Get the modal
		var modal = document.getElementById("myModal");
		// Get the button that opens the modal
		var btn = document.getElementById("myBtn");
		// When the user clicks the button, open the modal 
		btn.onclick = function() {
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
		
		/*$(".continent-text").click(function() {
			$(".continent-item").removeClass("active-continent");
			$(".continent-text").removeClass("active");
			$(this).parent().addClass("active-continent");
			$(this).addClass("active");
		});*/
		
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
		slidesPerView : 5,
		slidesPerGroup : 1,
	});
	</script>
</body>
</html>
