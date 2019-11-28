<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title class="next-head">짜그 WAUG - 전세계 액티비티, 입장권, 교통 , 유심</title>
<link rel="shortcut icon" href="http://www.iconj.com/ico/3/y/3ye4f2hv2w.ico" type="image/x-icon" />
<link rel="icon" href="/favicon.ico" type="image/x-icon">
<!-- <link href="${pageContext.request.contextPath}/resources/css/home.css" rel="stylesheet"> -->

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>
<style type="text/css">
#main-wrapper {
	width: 100%;
	height: 650px;
	z-index: 0;
	overflow: hidden;
	/*background-image: url('https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15719902424676.jpg');*/
	background-size: cover;
	background-position: 50%;
}

#back-image1 {
	background-image:
		url('https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15719902677212.jpg');
	z-index: 5;
}

#back-image2 {
	background-color: gray;
	z-index: 4;
}

#back-image3 {
	background-color: gray;
	z-index: 3;
}

#back-image4 {
	background-color: gray;
	z-index: 2;
}

#back-image5 {
	background-color: gray;
	z-index: 1;
}

.image {
	width: 100%;
	height: 650px;
	z-index: 0;
	overflow: hidden;
	background-size: cover;
	background-position: 50%;
	position: absolute;
	top: 0;
}

#main-header {
	width: 650px;
	height: 260px;
	position: relative;
	background-color: rgba(0, 0, 0, 0.3);
	margin-top: 195px;
	margin-left: 14%;
	float: left;
	z-index: 1000;
}

#main-header-items {
	width: 540px;
	height: 154px;
	position: relative;
	top: 20%;
	left: 8.5%;
	color: #ffffff;
	z-index: 1000;
	float: left;
}

#main-container {
	width: 1366px;
	height: 4000px;
	background-color: gray;
	margin: auto;
	overflow: hidden;
}
.bar{
	border-bottom : 2px solid white;

}
#search{
	background: none;
	color: #ffffff;
	border: none;
	width: 501px;
	height: 50px;
	margin-left: 10px;

}
#search::placeholder{
	color: #ffffff;
}

#search:focus{
	outline: none;
}
.searchbar-input-container div{
	width : 19px;
	height : 50px;
	background-image: url('https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15450158976787.svg');
	background-position : center;
	background-repeat: no-repeat;
	float: left;
	

}
.search {
	width: 540px;
	height: 52px;
	margin-top: 35px;

}
.main-item-container {
	width: 100%;
	height: 400px;
	margin-top: 130px;
	background-color: white;
	color: black;
}
.swiper-list-container{
	width: 100%;
	height: 244px;
	background-color: gray;
}
.swiper-container{
	width: 100%;
	height: 244px;
}
.swiper-wrapper{
	width: 100%;
	height: 244px;
}
.arealist-slide{
	width: 157.5px;
	height: 244px;
}
.area-card-container{
	width: 157.5px;
	height: 244px;
}
.area-card-content{
	width: 157.5px;
	height: 244px;
	float: left;
	border : solid gray 1px;
	border-radius: 0.3em;
}
.area-card-text{
	color: #ffffff;
	position: absolute;
	top: 88%;
	left: 8%;

}

</style>

</head>
<body>

	<div id="main-wrapper">
		<div id="main-header">
			<div id="main-header-items">
				<h1>가을여행은 어디로 떠날까요?</h1>
				<div class="search">
					<div class="bar">
						<div class="searchbar-input-container">
							<div>
							</div>
							<input id="search" value="" placeholder="액티비티 또는 지역명으로 검색하세요">
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
	</div>

	<div id="main-container">
		<div class="main-item-container">
			인기 여행지
			<div class="swiper-list-container">
				<div class="swiper-container content popularArea swiper-container-initialized swiper-container-horizontal">
					<div class="swiper-wrapper">
						<div class="arealist-slide swiper-slide swiper-slide-visible swiper-slide-active" style="margin-right: 15px;">
							<div class="area-card-container">
								<div class="area-card-content swiper-lazy swiper-lazy-loaded" style="background-image: url('https://d2mgzmtdeipcjp.cloudfront.net/files/main/2016/06/14648398959249.png?s=157.5x244');">
								</div>
								<div class="area-card-text">괌
								</div>
							</div>
						</div>
						<div class="arealist-slide swiper-slide swiper-slide-visible swiper-slide-next" style="margin-right: 15px;">
							<div class="area-card-container">
								<div class="area-card-content swiper-lazy swiper-lazy-loaded" style="background-image: url('https://d2mgzmtdeipcjp.cloudfront.net/files/main/2016/10/14777528392896.png?s=157.5x244');">
								</div>
								<div class="area-card-text">방콕
								</div>
							</div>
						</div>
						<div class="arealist-slide swiper-slide swiper-slide-visible" style="margin-right: 15px;">
							<div class="area-card-container">
								<div class="area-card-content swiper-lazy swiper-lazy-loaded" style="background-image: url('https://d2mgzmtdeipcjp.cloudfront.net/files/main/2018/03/02/15200019883567.png?s=157.5x244');">
								</div>
								<div class="area-card-text">오사카
								</div>
							</div>
						</div>
						<div class="arealist-slide swiper-slide swiper-slide-visible" style="margin-right: 15px;">
							<div class="area-card-container">
								<div class="area-card-content swiper-lazy swiper-lazy-loaded" style="background-image: url('https://d2mgzmtdeipcjp.cloudfront.net/files/main/2016/10/14768018488168.png?s=157.5x244');">
								</div>
								<div class="area-card-text">서울
								</div>
							</div>
						</div>
						<div class="arealist-slide swiper-slide" style="margin-right: 15px;">
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
					<div class="swiper-button-prev popularArea-prev main-swiper-prev-btn swiper-button-disabled"
						tabindex="0" role="button" aria-label="Previous slide" aria-disabled="true">
						</div>
					<div class="swiper-button-next popularArea-next main-swiper-next-btn"
						tabindex="0" role="button" aria-label="Next slide" aria-disabled="false">
						</div>
					<span class="swiper-notification" aria-live="assertive" aria-atomic="true"> </span>
				</div>
			</div>
		</div>
		
			<a href="https://www.waug.com/event/event.html?idx=311">
				<img alt="promotion banner" src="https://d2mgzmtdeipcjp.cloudfront.net/files/promotionbanner/2019/11/05/15729232961789.png">
			</a>
		<div class="main-item-container">빠른 검색</div>
		<div class="main-item-container">와그 추천</div>
		<div class="main-item-container">테마 여행</div>
		<div class="main-item-container">유럽으로 떠나는 휴가</div>
		<div class="main-item-container">유럽에서 즐기는 액티비티</div>
		<div class="main-item-container">아시아로 떠나는 휴가</div>
		<div class="main-item-container">아시아에서 즐기는 액티비티</div>
		<div class="main-item-container"></div>
	</div>

	<script type="text/javascript">

var images = new Array();

images[0]= "15719902677212";
images[1]= "15719902163707";
images[2]= "15719902308109";
images[3]= "15719902542974";
images[4]= "15719902424676";

var div = new Array();
div[0]="#back-image1";
div[1]="#back-image2";
div[2]="#back-image3";
div[3]="#back-image4";
div[4]="#back-image5";

var i = 0;

setInterval(function(){
	
	$(div[i]).fadeOut(1500,function(){
		
	});
	i = i+1;

	if(i>4){
		i=0;
	};

	$(div[i]).fadeIn(1500, function () {
   		$(this).css("background-image", "url(https://d2mgzmtdeipcjp.cloudfront.net/files/upload/"+images[i]+".jpg)");
 
    });
}, 5000);

</script>
</body>
</html>
