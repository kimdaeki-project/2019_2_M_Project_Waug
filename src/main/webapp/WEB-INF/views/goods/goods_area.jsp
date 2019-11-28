<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:import url="../layout/bootstrap.jsp"/>

<style type="text/css">
body{
	box-sizing: border-box;
	height: 100%;
    font-family: 'Noto Sans KR', 'Noto Sans Korean', 'Roboto', 'Sans-serif';
    color:#333;
    line-height: 1.42857143;
}
div{
	display: block;
}
#wrapper{
	width: 100%;
	border: 1px solid pink;	
}

#wrapper_page{
	padding-top:50px;
	padding-bottom: 50px;
}

.wrapper-header{

	width:100%;
	height:100%;
	background-image: url("https://d2mgzmtdeipcjp.cloudfront.net/files/main/2018/07/15/15316446659344.png?s=1900x450");
	background-repeat:  no-repeat;
	background-size: cover;
	background-position: center center;
	position: relative;
	

}
.area-header-image{
	height: 40vh;
}

.header-title{
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%,-50%);
	z-index: 2;
	
}
.header-title h1{
	font-size: 64px;
	font-weight: 500;
	color: white;
	
}

.theme_box{
	width: 33.333333%;
	padding: 12px;

}

.theme_box img{
	border-radius: 4px;
	display: block;
	object-fit:cover;
	width: 100%;
	height: 220px;
}

.theme_info_box{
	padding: 16px 6px 0 6px;
}
.row{
	clear: both;
	margin-left: -15px;
	margin-right: -15px;
	/* border: 1px solid black; */
}
.row-title{

	text-align: left;
	margin: 50px 0 12px 0px;
	font-weight: 600;
	font-size: 24px;
	color: rgba(0,0,0,0.7);
	letter-spacing: -0.3px;

}

.row-title-margin{
	margin-top: 70px;
	margin-bottom: 30px;
	
}
.row-title .sub{
	font-size: 15px;
	font-weight: 400;
	color: #9a9a9a;
	margin: 2px 0 0 0;
}
img{
	vertical-align: middle;
}
img .lazy{
	max-height: 220px;
	background-color: #f5f5f5;
	background-size: cover;
	background-position: center center;
	background-repeat: no-repeat; 
}

.good-card-box{
	
	border-radius : 4px;
	position: relative;

	display:block;
	cursor:pointer;
	max-height:470px;
	float: left;

	width: 25%;
	padding: 8px 12px 12px 12px !important;


}
.good-photo{
	max-width: 100%;

	border-radius : 4px;

}
.theme-text-info-box{
	padding : 16px 6px 0 6px;
}

.theme-text-info-box .head{
	color: #d91c84;
	font-weight: 800;
	font-size: 12px;
	padding: 3px 0 6px 0;
	text-align: left;
}

.good-info-content-box{
	padding:12px 6px 0 6px;

}
.good-theme-title{

	margin: 0;
	color: #333333;
	font-size: 15px;
	font-weight: bold;
	line-height: 1.3;
	max-height: 2.6em;
	text-align: left;
	text-overflow: ellipsis;
	letter-spacing: -0.3px;
	
}
.good-title{

	margin: 0;
	color: #333333;
	font-size: 17px;
	font-weight: 900;
	line-height: 1.3;
	max-height: 2.6em;
	text-align: left;
	text-overflow: ellipsis;
	letter-spacing: -0.3px;
	
}
.good-default-text{
	font-size: 13px;
	font-weight: 400;
	color: #888;
	padding-top: 4px;

}

.today-use{
	color: #d91c84;
	font-weight: 700;
	font-size: 12px;
	padding: 3px 0 6px 0;
	text-align: left;

}
.good-original-price{
	font-size: 14px;
	color: #999;
	text-decoration: line-through;;
}
.good-discount-price{
	font-weight: bold;
	color: #333;
	font-size: 16px;
	font-family: 'Roboto','Sans-serif';
}

.good-booked{
	display: flex;
	font-weight: 600;
	font-size: 12px;
/* 	padding: 10px 0 5px 0;
 */	color: #999999;
	line-height: 30px;
}

.good-wish{
	position: absolute;
	top: 24px;
	right: 24px;
	z-index: 2;
	width: 24px;
}


.area_goods_space{
	float: right;
	width: 66.6666667%;
	background-color: purple;
}
.m-good-card{
	
	max-width: 360px;
}

.category-nav{
	max-width: 292.5px;

}
</style>
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
						<div class="col-md-3 category-nav sticky" style="position: absolute; top: auto; border:1px solid black; height: 200px;">
						
							<div>
								<i class="fa fa-search"></i>
								<input type="text" class="form-control" placeholder="Search">
							
							</div>
							<div class="category-wrapper">
								<select>
									<option style="display:none" selected="selected">와그WAUG 추천</option>
									<option>최신순</option>
									<option>인기순</option>
								</select>
								
								<div class="category-title">어떤 여행을 원하세요?</div>
								<ul>
									<li>
										<div>
											<img alt="" src="">
											<a href="">레스토랑 $ 다이닝</a>
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