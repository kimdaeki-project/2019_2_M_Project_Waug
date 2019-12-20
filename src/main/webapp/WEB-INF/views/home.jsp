<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix = "fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
*{
   font-family: 'Noto Sans KR', sans-serif;
}
.active-continent{
   color: #d91c84;
}

.active2 a{
   color: #d91c84 !important;
}
</style>
</head>
<body>
   <div id="body">
   <c:import url="./layout/home_nav.jsp"/>
   
   <div id="main-wrapper">
      <div id="main-header">
         <div id="main-header-items">
            <div class="text2">겨울 여행은 어디로 떠날까요?12</div>
            <div class="search">
               <div class="bar">
                  <div class="searchbar-input-container">
                     <div></div>
                     <input id="search" value="" placeholder="액티비티 또는 지역명으로 검색하세요">
                  </div>
               </div>
               <div class="searchresult-container" >
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
            <a href="./order/couponinfo"> <img
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
                     <a href="./search/quickSearch?type=usim">
                     <div class="main-watem-container" style="background-image: url('https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15591018541748.png?s=330x233');">
                        <div class="main-watem-text">유심 & 와이파이</div>
                     </div>
                     </a>
                  </div>
                  <div class="swiper-slide watemlist-slide swiper-slide-visible swiper-slide-next" style="margin-right : 16px;">
                     <a href="./search/quickSearch?type=airport">
                     <div class="main-watem-container" style="background-image: url('https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15628256865214.png?s=330x233');">
                        <div class="main-watem-text">공항 이동수단</div>
                     </div>
                     </a>
                  </div>
                  <div class="swiper-slide watemlist-slide swiper-slide-visible" style="margin-right : 16px;">
                     <a href="./search/quickSearch?type=jr">
                     <div class="main-watem-container" style="background-image: url('https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15591018926570.png?s=330x233');">
                        <div class="main-watem-text">일본 교통패스</div>
                     </div>
                     </a>
                  </div>
                  <div class="swiper-slide watemlist-slide swiper-slide-visible" style="margin-right : 16px;">
                     <a href="./search/quickSearch?type=eurail">
                     <div class="main-watem-container" style="background-image: url('https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15591019070628.png?s=330x233');">
                        <div class="main-watem-text">유레일 패스</div>
                     </div>
                     </a>
                  </div>
               </div>
               <span class="swiper-notification" aria-live="assertive" aria-atomic="true"> </span>
            </div>
         </div>
         <div class="flex">
            <a href="./search/quickSearch?type=all" style="cursor: pointer;">
            <div class="main-itemsubbtn subbtn2">
               <div class="text text2">전체 보기</div>
            </div>
            </a>
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
               
               <c:forEach  items="${list}" var="vo" begin="0" end="12">
         
                  <div class="goodlist-slide swiper-slide swiper-slide-visible swiper-slide-active" style="margin-right: 18px;" onclick="location.href='goods/good_page?goods_num=${vo.goods_num}';">

                     <div class="good-card-wrapper swiper-slide onclick-cursor-pointer">
                        
                        <div class="good-card-background-image-cover" style="background-image: url('${vo.img}?s=266x175');">

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
                           <div class="good-card-original-price"><fmt:formatNumber type="currency" value="${(vo.price*rate)}" currencySymbol="${logo} "/></div>
                           <div class="good-card-price"><fmt:formatNumber type="currency" value="${(vo.price - (vo.price*vo.discount/100))*rate}" currencySymbol="${logo} "/></div>
                           <div class="good-card-coupon-text">${vo.discount}% 할인</div>
                           <div class="good-card-buy-cnt"><fmt:formatNumber type="number" value="${vo.sell}"/>예약</div>
                           
                        </div>
                        </a>
                     </div>
                  </div>

               </c:forEach>      
           
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
            <div class="main-itemtitle-title">이런 여행은 어때요1?</div>
            <div class="main-itemtitle-sub">와그 에디터가 추천하는 여행을 만나보세요</div>
         </div>
         <div class="swiper-list-container container4">
            <div class="swiper-container content popularTheme swiper-container-initialized swiper-container-horizontal">
               <div class="swiper-wrapper">
                  <c:forEach items="${Themelist}" var="theme" begin="0" end="2">
                  <div class="themelist-slide swiper-slide swiper-slide-visible swiper-slide-active" style="margin-right : 16px; cursor: pointer;"
                  	onclick="location.href='./goods/goods_themes?t_num=${theme.t_num}'">
                     <div class="theme-card-container">
                        <div class="theme-card-image" style="background-image: url('${theme.t_img}?s=445x228');">
                        </div>
                        <div class="theme-card-content">
                           <div class="theme-card-cc-category">${theme.t_subject}</div>
                           <div class="theme-card-cc-title">${theme.t_title}</div>
                           <div class="theme-card-cc-content">${theme.t_subtitle}</div>
                        </div>
                     </div>
                  </div>
                  </c:forEach>
                  
                  <!-- <div class="themelist-slide swiper-slide swiper-slide-visible swiper-slide-next" style="margin-right : 16px;">
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
                  </div> -->
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
      
      <form action="/p1/" method="post" id="KRWJPY">
      	<input type="text" class="KRWJPY" name="rate">
      	<input type="text" name="logo" value="¥">
      	<input type="text" name="text" value="JPY 일본 엔(¥)">
      </form>
      <form action="/p1/" method="post" id="KRWUSD">
      	<input type="text" class="KRWUSD" name="rate">
      	<input type="text" name="logo" value="$">
      	<input type="text" name="text" value="USD 미국 달러(US$)">
      </form>
      <form action="/p1/" method="post" id="KRWEUR">
      	<input type="text" class="KRWEUR" name="rate">
      	<input type="text" name="logo" value="€">
      	<input type="text" name="text" value="EUR 유로 (€)">
      </form>
       <form action="/p1/" method="post" id="KRWCNY">
      	<input type="text" class="KRWCNY" name="rate" value="1">
      	<input type="text" name="logo" value="¥">
      	<input type="text" name="text" value="CNY 중국 위안(¥)">
      </form>
      <form action="/p1/" method="post" id="KRWKRW">
      	<input type="text" class="KRWKRW" name="rate" value="1">
      	<input type="text" name="logo" value="₩">
      	<input type="text" name="text" value="KRW 대한민국 원(₩)">
      </form>
   </div>
</div>
   <script type="text/javascript">
  		
   
   
   	  window.onload = function(){
		$.ajax({
			type:"GET",
			url: "https://earthquake.kr:23490/query/KRWJPY,KRWUSD,KRWEUR,KRWCNY",
			dataType:'json',
			success:function(data){
				console.log(data);
				var KRWJPY = data.KRWJPY[0];
				var KRWUSD = data.KRWUSD[0];
				var KRWEUR = data.KRWEUR[0];
				var KRWCNY = data.KRWCNY[0];
				$(".KRWJPY").val(KRWJPY);
				$(".KRWUSD").val(KRWUSD);
				$(".KRWEUR").val(KRWEUR);
				$(".KRWCNY").val(KRWCNY);
			}
		});
   		};
   		
   		function KRWUSD() {
			$("KRWUSD").submit();
		}
		function KRWKRW() {
			$("KRWKRW").submit();
		}
   	  
      /* $(document).scroll(function() {
         console.log($(this).scrollTop());
      }); */
      
      
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
      $("#search").click(function(event) {
         
         $(this).attr("placeholder", "");
         $(".searchresult-container").addClass('searchresult-container-display');
         
         event.stopImmediatePropagation();
      });
      

      /* 블러하면 사라지기 */
      
      /* $("#search").blur(function() {
            
         if ($(this).attr("placeholder") == "") {
            $(this).attr("placeholder", "액티비티 또는 지역명으로 검색하세요");
         }
         $(".searchresult-container").css("display", "none");
         $(".searchresult-container").removeClass('searchresult-container-display');
         
      }); */
      
      /* 검색창 사라지기 */
      $("#body").click(function() {
         if ($("#search").attr("placeholder") == "") {
            $("#search").attr("placeholder", "액티비티 또는 지역명으로 검색하세요");
         }
         /* $(".searchresult-container").css("display", "none"); */
         $(".searchresult-container").removeClass('searchresult-container-display');
         //$(".popup-currency").removeClass('popup-currency-popup');
      });
      
      
      $("#search").keyup(function() {
         var search = $(this).val();
         $.get("./search?search="+search,function(data){
            data=data.trim();
            
            $(".searchresult-container").html(data);
         });
      })

      /* 검색창 호버? */
      $(".searchresult-container").on("mouseenter", ".searchresultitem-item",function(){
         $(this).toggleClass("mouseenter");
         $(this).children().css("color", "#d91c84");
      });
      
      $(".searchresult-container").on("mouseleave", ".searchresultitem-item",function(){
         $(this).toggleClass("mouseenter");
         $(this).children().css("color", "#333333");
      });
      
            
      /* $(".searchresultitem-item").mouseenter(function() {
         $(this).toggleClass("mouseenter");
         $(this).children().css("color", "#d91c84")
      });
      $(".searchresultitem-item").mouseleave(function() {
         $(this).toggleClass("mouseenter");
         $(this).children().css("color", "#333333");
      }); */
      
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
         event.stopImmediatePropagation();
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
   $("#ttse").change(function() {
      $(this).val("");
      return false;
   })
   </script>
</body>
</html>