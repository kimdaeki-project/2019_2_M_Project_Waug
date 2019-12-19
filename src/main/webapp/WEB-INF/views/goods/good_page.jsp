<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>goods_basic</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<!-- <link rel="stylesheet" href="resources/css/home.css"> -->
<link rel="stylesheet" href="../resources/css/goods.css">
<link rel="stylesheet" href="../resources/css/nav.css">
<link rel="stylesheet" href="../resources/css/CityList.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

</head>

<body>
<input type="text" disabled="disabled" name="goods_num" value="${goods_num}" id="goods_num">	
<c:import url="../layout/nav.jsp"/>
<c:import url="../layout/CityList.jsp"/>
<div class="good_contents_titles">

   <div class="good_container_flex">
   <div class="good_detail_info_wrapper">
      상품 옵션 / 프로그램
   </div>
</div>
</div>   
   <div class="good_img_wrapper">
      <div class="good_img_titleBox">
         <div class="good_btn_wishlist good_like"></div>
         
         <div class="good_img_title"><img src="${goods.img }" onclick="openModal();currentSlide(1)"></div>
        
      </div>
      <div class="good_img_divideBox">
      <div class="good_img_small_wrapper">
         <div class="good_img_small"><img src="${goods.img1 }" onclick="openModal();currentSlide(2)"></div>
         <div class="good_img_small"><img src="${goods.img2 }" onclick="openModal();currentSlide(3)"></div>      
      </div>
      <div class="good_img_small_wrapper">
        <div class="good_img_small"><img src="${goods.img3 }" onclick="openModal();currentSlide(4)"></div>
        <div class="good_img_small"><img src="${goods.img4 }" onclick="openModal();currentSlide(5)"></div> 
      </div>
      </div>
   </div>
   <div class="good_detail_wrapper">
      <div class="good_detailBox">
         <div class="good_info_wrapper">
         	<div class="good_info_padding">
         		<div class="good_info_area"><img class="good_icon" src="https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15674923909136.svg"/>${goods.location}</div>
         		<div class="good_title">${goods.title}</div>
         		<div class="good_category_wrapper">
         			<div class="good_category"><a href="#">${category}</a></div>
         		</div>
         		<div class="good_info">
         			<div class="good_info_nextdate">${goods.able} 부터 가능</div>
         			<div class="good_key_infoBox">
         				<div class="good_keyBox">
         					<img class="good_icon" src="https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15674927522196.svg" />
							<!-- 이용시간 -->${info.using_time }
         				</div>
         				<div class="good_keyBox">
         					<img class="good_icon" src="https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15674929816073.svg" />
         					<!-- 픽업 -->${info.pick_up }
         				</div>
         				<div class="good_keyBox">
         					<img class="good_icon" src="https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15674929156333.svg" />
         					<!-- 인원수 -->${info.people }
         				</div>
         				<div class="good_keyBox">
         					<img class="good_icon" src="https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15674928069478.svg" />
         					<!-- 바우처 -->${info.boucher}
         				</div>
         				<div class="good_keyBox">
         					<img class="good_icon" src="https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15674930838942.svg" />
         					<!-- 확정시간 -->${info.delivery_time }
         				</div>
         				<div class="good_keyBox">
         					<img class="good_icon" src="https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15674930325915.svg" />
         					<!-- 사용날짜 -->${info.duration }
         				</div>
         				<div class="good_keyBox">
         					<img class="good_icon" src="https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15674926699506.svg" />
         					<!-- 취소여부 -->${goods.cancel }
         				</div>
         				<div class="good_keyBox">
         					<img class="good_icon" src="https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15674928656190.svg" />
         					<!-- 언어선택 -->${info.language }
         				</div>
         			</div>
         			<c:if test="${goods.coupon ne null}">
         				<div class="good_couponBox">
	         				<div class="good_coupon">
	         					<div class="good_coupon_title">쿠폰</div>
	         					<div class="good_coupon_info">${goods.coupon}</div>
	         				</div>
         				</div>
         			</c:if>
         		</div>
         	</div>
         </div>
         <div class="good_info_wrapper">
         	<div class="good_bookBox">
         		<div class="good_bookInfo">
         			<div class="good_priceBox">₩ ${goods.price}</div>
         			<div class="good_reservationBox"><c:forEach begin="1" end="${review.rv_avg-(review.rv_avg%1)}">★</c:forEach> ${goods.sell} 예약</div>
         			<a href="../order/calendar?goods_num=${goods.goods_num}">
         			<div class="good_reservation_btn">예약하기</div>
         			</a>
         		</div>
         	</div>
         </div>
      </div>
   </div>
   <!-- container -->
   <div class="container">
   		<div class="good_container_flex">
   			<div class="good_detail_info_wrapper">
   				<div class="good_detail_infoBox">
   					<div class="good_detail_title">매력포인트</div>
   					<div id="charming">
<!--    						<ul class="good_ul"> -->
   							${goods.charming}
<!--    						</ul> -->
   					</div>
   				</div>
   				<div class="good_detail_infoBox">
   					<div class="good_detail_title">이용 후기</div>
   					<div class="good_comentBox">
   						<div class="good_coment_rate">${review.rv_avg}</div>
   						<div class="good_coment_rateInfo">
   							<div class="good_coment_star"><c:forEach begin="1" end="${review.rv_avg-(review.rv_avg%1)}">★</c:forEach></div>
   							<div class="good_coment_count">후기 ${review.rv_total}개</div>
   						</div>

   					</div>
   					<div class="good_coment_sample">
   						<div class="good_coment_sampleInfo">
   							<p class="good_coment_sample_user">${review2.rv_writer}</p><p class="good_coment_sample_date">${review2.rv_reg_date}</p>
   						</div>
   						<div class="good_coment_star"><c:forEach begin="1" end="${review2.rv_score}">★</c:forEach></div>
   						<div class="good_coment_text">${review2.rv_contents}</div>
   					</div>
   					<div class="good_container_btn" style="cursor: pointer;" onclick="location.href='../reviews/review_list';">모든 후기 보러가기</div>
   				</div>
   				<div class="good_detail_infoBox optionbg">
                  <div class="good_detail_title">상품 옵션</div>
                  <div>
                     <div class="good_option_wrapper">
                        <div class="good_option_selectBox">바나힐 핑크 패키지 투어 (다낭 시내)</div>
                        <div class="good_option_arrowBox">
                           <div class="good_option_arrowIcon">
                              <img src="https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15578832012811.svg" class="good_arrowIcon"/>
                           </div>
                        </div>
                     </div>
                     <div class="good_option_wrapper">
                        <div class="good_option_selectBox">바나힐 핑크 실속 투어 (다낭 시내)</div>
                        <div class="good_option_arrowBox">
                           <div class="good_option_arrowIcon">
                              <img src=https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15578832012811.svg class="good_arrowIcon"/>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="good_detail_infoBox">
                  <div class="good_detail_title">프로그램</div>
                  <div id="program">${goods.program}</div>
                  <!-- <p>2019년 핫한 여행 관광지로 떠오른 베트남에도 핑크 버스가 드디어 상륙! 그 중에서도 다낭의 필수 관광지인 바나힐로 핑크 버스투어와 함께 편하게 떠나보세요. 바나힐은 매년 150만 명의 여행객이 방문하는 곳으로 추아산의 정상에 위치해 있답니다. 바나힐 어드벤처에 가기 위해서는 케이블카에 반드시 탑승해야해요. 세계에서 두 번째로 긴 5,800m의 케이블카를 타고 멋진 전망을 감상해보세요. 특히 케이블카에서 보는 안개가 덮힌 다낭의 모습은 정말 아름다워요.</p>
                  <p>바나힐 역에 도착하면 알록달록한 꽃으로 둘러 쌓인  27m 높이의 불상을 만날 수 있어요. 또한 패밀리 엔터테인먼트 센터(FEC), 링엄사, 프렌치 빌리지, 르 자뎅 다무르, 묘비 사원, 린추아린투 사원, 알파인 코스터 등 다양한 볼거리가 있어요. 와그에서 새롭게 준비한 와그 핑크 바나힐 일일 투어를 예약하고 모두 즐겨보세요.</p>
                  <p><img src="15734565973785.png"></p>
                  <span class="mark">▲</span><span>드디어 베트남에도 와그 핑크 버스 투어가 상륙했어요!</span>
                  <div class="subtitle">선택 가능 옵션</div>
                  <div class="subtitle">1. 바나힐 핑크 패키지 투어 :</div>
                  <p>
                     왕복 호텔 픽업
                     <br>바나힐 입장권(어트랙션, 케이블카 포함)
                     <br>아라팡 레스토랑에서 점심 식사 (현지식 뷔페)
                     <br>영어 가이드
                     <br>생수 1병
                  </p>
                  <div class="subtitle">2. 바나힐 핑크 실속 투어 :</div>
                  <p>
                     왕복 호텔 픽업
<br>바나힐 입장권(어트랙션, 케이블카 포함)
<br>영어 가이드
                  </p>
                  <div class="subtitle">투어 일정</div>
                  <ul class="infoUl">
                     <li>오전 07:30 - 호텔 픽업 서비스</li> 
                     <li>오전 09:30 - 10:00 바나힐 도착 및 케이블카 탑승</li>
                     <li>오전 09:30 - 10:00 바나힐 도착 및 케이블카 탑승</li>
                     <li>오전 09:30 - 10:00 바나힐 도착 및 케이블카 탑승</li>
                  </ul> -->
               </div>
               <div class="good_detail_infoBox border-top">
                  <div class="good_detail_title setCss">포함사항</div>
                  <div id="included">${goods.included}</div>
                  <!-- <ul class="infoUl">
                     <li>유모차 대여</li>
                     <li>유모차 대여</li>
                     <li>유모차 대여</li>
                  </ul> -->
               </div>
               <div class="good_detail_infoBox border-top">
                  <div class="good_detail_title setCss">불포함 사항</div>
                  <div id="not_included">${goods.not_included}</div>
                  <!-- <ul class="infoUl">
                     <li>유모차 대여</li>
                     <li>유모차 대여</li>
                     <li>유모차 대여</li>
                  </ul> -->
               </div>
               <div class="good_detail_infoBox border-top">
                  <div class="good_detail_title setCss">사용 방법</div>
                  <div id="how_to_use">${goods.how_to_use}</div>
                  <!-- <ul class="infoUl">
                     <li>이메일로 제공된 바우처 인쇄 혹은 모바일 바우처 사용</li>
                     <li>이메일로 제공된 바우처 인쇄 혹은 모바일 바우처 사용</li>
                  </ul>
                  <div class="subtitle">미팅포인트 :</div>
                  <p>
                     투숙하는 호텔 로비에서 진행해요.
                  </p> -->
               </div>
               <div class="good_detail_infoBox border-top">
                  <div class="good_detail_title setCss">꼭 알아두세요</div>
                  <div id="remember">${goods.remember}</div>
                  <!-- <ul class="infoUl">
                     <li>예약 확정 바우처를 받기 전까지는 예약 확정이 아닙니다.</li>
                  </ul> -->
               </div>
              
              
               <!-- <div class="good_detail_infoBox border-top">
                  <div class="good_detail_title setCss">자주 묻는 질문</div>   
               </div>
               <div class="good_detail_infoBox border-top">
                  <div class="good_detail_title setCss">환불 규정</div>   
               </div> -->
               
               
   			</div>
   		</div>
   </div>
   <div class="mean_less_div">
      <div id="map"></div>
      
   </div>
   <div class="good_recomend_wrapper border-top">
     
      <a href="#" style="text-align: center;"><h1 style="font-size: 40px;">GO UP</h1></a>
      
   </div>
   
   <!--  -->
   <div id="myModal1" class="modal">
  <span class="close cursor" onclick="closeModal()" style="color: white;">&times;</span>
  <div class="modal-content">

    <div class="mySlides" style="width: 100%;">
      <img src="${goods.img }">
    </div>

    <div class="mySlides" style="width: 100%;">
      <img src="${goods.img1 }">
    </div>

    <div class="mySlides" style="width: 100%;">
      <img src="${goods.img2 }">
    </div>
    
    <div class="mySlides" style="width: 100%;">
      <img src="${goods.img3 }">
    </div>
    
    <div class="mySlides" style="width: 100%;">
      <img src="${goods.img4 }">
    </div>
    
    <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
    <a class="next" onclick="plusSlides(1)">&#10095;</a>


    <div class="column" style="float: left;">
      <img class="demo cursor" src="${goods.img }" style="height: 130px;" onclick="currentSlide(1)">
    </div>
    <div class="column" style="float: left;">
      <img class="demo cursor" src="${goods.img1 }" style="height: 130px;" onclick="currentSlide(2)">
    </div>
    <div class="column" style="float: left;">
      <img class="demo cursor" src="${goods.img2}" style="height: 130px;"  onclick="currentSlide(3)">
    </div>
    <div class="column" style="float: left;">
      <img class="demo cursor" src="${goods.img3 }" style="height: 130px;" onclick="currentSlide(4)">
    </div>
    <div class="column" style="float: left;">
      <img class="demo cursor" src="${goods.img4 }" style="height: 130px;" onclick="currentSlide(5)">
    </div>
  </div>
</div>
   <!--  -->
<script>
      var map;
      function initMap() {
    	var uluru = {lat:${goods.horizontal}, lng: ${goods.vertical}};
    	var map = new google.maps.Map(
    		document.getElementById('map'), {zoom: 16, center: uluru});
    		// The marker, positioned at Uluru
    		var marker = new google.maps.Marker({position: uluru, map: map});
     	 }
</script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBOARpuS-ZWgj5gXhzLHOQTQ1-swU_VrFo&callback=initMap"
    async defer></script>   
   
<script type="text/javascript">
function openModal() {
	  document.getElementById("myModal1").style.display = "block";
	}

	function closeModal() {
	  document.getElementById("myModal1").style.display = "none";
	}

	var slideIndex = 1;
	showSlides(slideIndex);

	function plusSlides(n) {
	  showSlides(slideIndex += n);
	}

	function currentSlide(n) {
	  showSlides(slideIndex = n);
	}

	function showSlides(n) {
	  var i;
	  var slides = document.getElementsByClassName("mySlides");
	  var dots = document.getElementsByClassName("demo");
	  if (n > slides.length) {slideIndex = 1}
	  if (n < 1) {slideIndex = slides.length}
	  for (i = 0; i < slides.length; i++) {
	      slides[i].style.display = "none";
	  }
	  for (i = 0; i < dots.length; i++) {
	      dots[i].className = dots[i].className.replace(" active", "");
	  }
	  slides[slideIndex-1].style.display = "block";
	  dots[slideIndex-1].className += " active";
	}
  /* ddddddddddddddddddddddddddddd */
  
   $(document).scroll(function(){
	  
      if($(document).scrollTop()>1050){
         $('.good_bookBox').addClass('good_bookBox_toggle');
         $('.good_reservation_btn').addClass('good_reservation_btn_fixed');
      }
      else{
         $('.good_bookBox').removeClass('good_bookBox_toggle');
         $('.good_reservation_btn').removeClass('good_reservation_btn_fixed');
      }
   });

   $(document).scroll(function(){
      if($(document).scrollTop()>600){
         $('.good_bookBox').addClass('good_bookBox_fixed');
      }
      else{
         $('.good_bookBox').removeClass('good_bookBox_fixed');
      }
    });  

  
/* 
   $('.good_reservation_btn').click(function(){
      alert('book clicked!!');
      location.href='../order/calendar?goods_num='+$('#goods_num').val();
      // $("#w3s").attr("href", "https://www.w3schools.com/jquery/");
      // onclick="location.href='goods';"
   });
 */
   

   //스크롤 내리면 tabs보이기
   $(document).scroll(function(){
      if($(this).scrollTop()<1200){
    	$('.good_contents_titles').hide();
      }
      else{
    	  $('.good_contents_titles').show();
      }
   })

   //창 켜졌을때, good_contents_titles 숨겨놓기
   $(window).ready(function(){
     $('.good_contents_titles').hide();
   
     //자식태그에 클래스 붙여주기
   	$('#charming>ul').addClass("good_ul");
	$('blockquote>p').addClass("subtitle");
	$('.setCss>ul').addClass("infoUl");
	$('#not_included').addClass("infoUl");
	$('#included').addClass("infoUl");
	$('#how_to_use').addClass("infoUl");
	$('#remember').addClass("infoUl");
	$('#program').addClass("infoUl");

   });
   
   
   // Get the modal
		var modal = document.getElementById("myModal1");
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
   
   
   
   
   
   
   		/* 위시리스트 jquery */
		$(".good_like").click(function() {
			$(this).toggleClass("good_liked");
		});
   		
 </script> 	
</body>
</html>