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
<link rel="stylesheet" href="resources/css/goods.css">
<link rel="stylesheet" href="resources/css/nav.css">
<link rel="stylesheet" href="resources/css/CityList.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
<c:import url="./layout/nav.jsp"/>
<c:import url="./layout/CityList.jsp"/>
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
         
         <div class="good_img_title"><img src="https://d2mgzmtdeipcjp.cloudfront.net/files/good/2019/11/11/15734582161481.png?s=1024x587" onclick="openModal();currentSlide(1)"></div>
        
      </div>
      <div class="good_img_divideBox">
      <div class="good_img_small_wrapper">
         <div class="good_img_small"><img src="https://d2mgzmtdeipcjp.cloudfront.net/files/good/2019/11/13/15736270782979.png?s=450x295" onclick="openModal();currentSlide(2)"></div>
         <div class="good_img_small"><img src="https://d2mgzmtdeipcjp.cloudfront.net/files/good/2019/11/11/15734568736898.png?s=450x295" onclick="openModal();currentSlide(3)"></div>      
      </div>
      <div class="good_img_small_wrapper">
        <div class="good_img_small"><img src="https://d2mgzmtdeipcjp.cloudfront.net/files/good/2019/11/11/15734557918090.png?s=450x295" onclick="openModal();currentSlide(4)"></div>
        <div class="good_img_small"><img src="https://d2mgzmtdeipcjp.cloudfront.net/files/good/2019/11/11/15734568736875.jpg?s=450x295" onclick="openModal();currentSlide(5)"></div> 
      </div>
      </div>
   </div>
   <div class="good_detail_wrapper">
      <div class="good_detailBox">
         <div class="good_info_wrapper">
         	<div class="good_info_padding">
         		<div class="good_info_area"><img class="good_icon" src="https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15674923909136.svg"/></img>다낭</div>
         		<div class="good_title">12와그 핑크 바나힐 일일 투어 (다낭 출발)</div>
         		<div class="good_category_wrapper">
         			<div class="good_category"><a href="#">조인 투어</a></div>
         			<div class="good_category"><a href="#">역사 & 문화 투어</a></div>
         		</div>
         		<div class="good_info">
         			<div class="good_info_nextdate">내일부터 가능</div>
         			<div class="good_key_infoBox">
         				<div class="good_keyBox">
         					<img class="good_icon" src="https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15674927522196.svg" />8시간이용
         				</div>
         				<div class="good_keyBox">
         					<img class="good_icon" src="https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15674929816073.svg" />8시간이용
         				</div>
         				<div class="good_keyBox">
         					<img class="good_icon" src="https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15674929156333.svg" />8시간이용
         				</div>
         				<div class="good_keyBox">
         					<img class="good_icon" src="https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15674928069478.svg" />8시간이용
         				</div>
         				<div class="good_keyBox">
         					<img class="good_icon" src="https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15674930838942.svg" />8시간이용
         				</div>
         				<div class="good_keyBox">
         					<img class="good_icon" src="https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15674930325915.svg" />8시간이용
         				</div>
         				<div class="good_keyBox">
         					<img class="good_icon" src="https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15674926699506.svg" />8시간이용
         				</div>

         			</div>
         			<div class="good_couponBox">
         				<div class="good_coupon">
         					<div class="good_coupon_title">title</div>
         					<div class="good_coupon_info">information</div>
         				</div>
         			</div>
         		</div>
         	</div>
         </div>
         <div class="good_info_wrapper">
         	<div class="good_bookBox">
         		<div class="good_bookInfo">
         			<div class="good_priceBox">₩ 45,900</div>
         			<div class="good_reservationBox">★★★★★ 848 예약</div>
         			<div class="good_reservation_btn">예약하기</div>
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
   					<div>
   						<ul class="good_ul">
   							<li>와그가 직접 기획하고 만든 투어로 타 투어와 퀄리티 직접 비교는 불가!</li>
                        <li>와그가 직접 기획하고 만든 투어로 타 투어와 퀄리티 직접 비교는 불가!</li>
   						</ul>
   					</div>
   				</div>
   				<div class="good_detail_infoBox">
   					<div class="good_detail_title">이용 후기</div>
   					<div class="good_comentBox">
   						<div class="good_coment_rate">5.0</div>
   						<div class="good_coment_rateInfo">
   							<div class="good_coment_star">★★★★★</div>
   							<div class="good_coment_count">후기 20개</div>
   						</div>

   					</div>
   					<div class="good_coment_sample">
   						<div class="good_coment_sampleInfo">
   							<p class="good_coment_sample_user">안태*</p><p class="good_coment_sample_date">19.2.23</p>
   						</div>
   						<div class="good_coment_star">★★★★★</div>
   						<div class="good_coment_text">너무 즐거운시간이고 기분좋은 여행이었습니다</div>
   					</div>
   					<div class="good_container_btn">모든 후기 보러가기</div>
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
                  <p>2019년 핫한 여행 관광지로 떠오른 베트남에도 핑크 버스가 드디어 상륙! 그 중에서도 다낭의 필수 관광지인 바나힐로 핑크 버스투어와 함께 편하게 떠나보세요. 바나힐은 매년 150만 명의 여행객이 방문하는 곳으로 추아산의 정상에 위치해 있답니다. 바나힐 어드벤처에 가기 위해서는 케이블카에 반드시 탑승해야해요. 세계에서 두 번째로 긴 5,800m의 케이블카를 타고 멋진 전망을 감상해보세요. 특히 케이블카에서 보는 안개가 덮힌 다낭의 모습은 정말 아름다워요.</p>
                  <p>바나힐 역에 도착하면 알록달록한 꽃으로 둘러 쌓인  27m 높이의 불상을 만날 수 있어요. 또한 패밀리 엔터테인먼트 센터(FEC), 링엄사, 프렌치 빌리지, 르 자뎅 다무르, 묘비 사원, 린추아린투 사원, 알파인 코스터 등 다양한 볼거리가 있어요. 와그에서 새롭게 준비한 와그 핑크 바나힐 일일 투어를 예약하고 모두 즐겨보세요.</p>
                  <p><img src="15734565973785.png"></p>
                  <span class="mark">▲</span><span>드디어 베트남에도 와그 핑크 버스 투어가 상륙했어요!</span>
                  <div class="subtitle">선택 가능 옵션</div>
                  <p>
                     <strong>1. 바나힐 핑크 패키지 투어 :</strong>
                     <br>왕복 호텔 픽업
                     <br>바나힐 입장권(어트랙션, 케이블카 포함)
                     <br>아라팡 레스토랑에서 점심 식사 (현지식 뷔페)
                     <br>영어 가이드
                     <br>생수 1병
                  </p>
                  <p>
                     <strong>2. 바나힐 핑크 실속 투어 :</strong>
                     <br>왕복 호텔 픽업
<br>바나힐 입장권(어트랙션, 케이블카 포함)
<br>영어 가이드
                  </p>
                  <div class="subtitle">투어 일정</div>
                  <ul class="infoUl">
                     <li>오전 07:30 - 호텔 픽업 서비스</li> 
                     <li>오전 09:30 - 10:00 바나힐 도착 및 케이블카 탑승</li>
                     <li>오전 09:30 - 10:00 바나힐 도착 및 케이블카 탑승</li>
                     <li>오전 09:30 - 10:00 바나힐 도착 및 케이블카 탑승</li>
                  </ul>
               </div>
               <div class="good_detail_infoBox border-top">
                  <div class="good_detail_title">포함사항</div>
                  <ul class="infoUl">
                     <li>유모차 대여</li>
                     <li>유모차 대여</li>
                     <li>유모차 대여</li>
                  </ul>
               </div>
               <div class="good_detail_infoBox border-top">
                  <div class="good_detail_title">불포함 사항</div>
                  <ul class="infoUl">
                     <li>유모차 대여</li>
                     <li>유모차 대여</li>
                     <li>유모차 대여</li>
                  </ul>
               </div>
               <div class="good_detail_infoBox border-top">
                  <div class="good_detail_title">사용 방법</div>
                  <ul class="infoUl">
                     <li>이메일로 제공된 바우처 인쇄 혹은 모바일 바우처 사용</li>
                     <li>이메일로 제공된 바우처 인쇄 혹은 모바일 바우처 사용</li>
                  </ul>
                  <div class="subtitle">미팅포인트 :</div>
                  <p>
                     투숙하는 호텔 로비에서 진행해요.
                  </p>
               </div>
               <div class="good_detail_infoBox border-top">
                  <div class="good_detail_title">꼭 알아두세요</div>
                  <ul class="infoUl">
                     <li>예약 확정 바우처를 받기 전까지는 예약 확정이 아닙니다.</li>
                  </ul>
               </div>
               <div class="good_detail_infoBox border-top">
                  <div class="good_detail_title">자주 묻는 질문</div>   
               </div>
               <div class="good_detail_infoBox border-top">
                  <div class="good_detail_title">환불 규정</div>   
               </div>
   			</div>
   		</div>
   </div>
   <div class="mean_less_div">
      <h1>구글api,추천 액티비티</h1>
      
   </div>
   <div class="good_recomend_wrapper border-top">
     
      <a href="#" style="text-align: center;"><h1 style="font-size: 40px;">GO UP</h1></a>
      
   </div>
   
   <!--  -->
   <div id="myModal" class="modal">
  <span class="close cursor" onclick="closeModal()" style="color: white;">&times;</span>
  <div class="modal-content">

    <div class="mySlides" style="width: 100%;">
      <img src="https://d2mgzmtdeipcjp.cloudfront.net/files/good/2019/11/11/15734582161481.png?s=1024x587">
    </div>

    <div class="mySlides" style="width: 100%;">
      <img src="https://d2mgzmtdeipcjp.cloudfront.net/files/good/2019/11/13/15736270782979.png?s=450x295">
    </div>

    <div class="mySlides" style="width: 100%;">
      <img src="https://d2mgzmtdeipcjp.cloudfront.net/files/good/2019/11/11/15734568736898.png?s=450x295">
    </div>
    
    <div class="mySlides" style="width: 100%;">
      <img src="https://d2mgzmtdeipcjp.cloudfront.net/files/good/2019/11/11/15734557918090.png?s=450x295">
    </div>
    
    <div class="mySlides" style="width: 100%;">
      <img src="https://d2mgzmtdeipcjp.cloudfront.net/files/good/2019/11/11/15734568736875.jpg?s=450x295">
    </div>
    
    <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
    <a class="next" onclick="plusSlides(1)">&#10095;</a>


    <div class="column" style="float: left;">
      <img class="demo cursor" src="https://d2mgzmtdeipcjp.cloudfront.net/files/good/2019/11/11/15734582161481.png?s=1024x587" style="height: 130px;" onclick="currentSlide(1)">
    </div>
    <div class="column" style="float: left;">
      <img class="demo cursor" src="https://d2mgzmtdeipcjp.cloudfront.net/files/good/2019/11/13/15736270782979.png?s=450x295" style="height: 130px;" onclick="currentSlide(2)">
    </div>
    <div class="column" style="float: left;">
      <img class="demo cursor" src="https://d2mgzmtdeipcjp.cloudfront.net/files/good/2019/11/11/15734568736898.png?s=450x295" style="height: 130px;"  onclick="currentSlide(3)">
    </div>
    <div class="column" style="float: left;">
      <img class="demo cursor" src="https://d2mgzmtdeipcjp.cloudfront.net/files/good/2019/11/11/15734557918090.png?s=450x295" style="height: 130px;" onclick="currentSlide(4)">
    </div>
    <div class="column" style="float: left;">
      <img class="demo cursor" src="https://d2mgzmtdeipcjp.cloudfront.net/files/good/2019/11/11/15734568736875.jpg?s=450x295" style="height: 130px;" onclick="currentSlide(5)">
    </div>
  </div>
</div>
   <!--  -->
   
   
<script type="text/javascript">
function openModal() {
	  document.getElementById("myModal").style.display = "block";
	}

	function closeModal() {
	  document.getElementById("myModal").style.display = "none";
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

  

   $('.good_reservation_btn').click(function(){
      alert('book clicked!!');
   });

   

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
   })
   
   
   
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