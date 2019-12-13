<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 

<!-- include summernote css/js -->
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote.js"></script>
<link rel="stylesheet" href="../resources/css/goods.css">
<style>
.st{
height: 20px;
color:black;
}
.bk{color:black;}
</style>
</head>
<body>
	<form action="goods_add" method="post" enctype="multipart/form-data">
	<select name="city_num">
		<option>도시를 선택하세요</option>
		<c:forEach items="${cityar}" var="vo">
			<option value="${vo.city_num}">${vo.city_name}</option>
		</c:forEach>
	</select>
	
	<select name="t_num">
		<option>테마를 선택하세요</option>
		<c:forEach items="${themear}" var="vo">
			<option value="${vo.t_num}">${vo.t_title}</option>
		</c:forEach>
	</select>
	
	<select name="cate_num">
		<option>카테고리를 선택하세요</option>
		<c:forEach items="${catear}" var="vo">
			<option value="${vo.cate_num}">${vo.cate_name}</option>
		</c:forEach>
	</select>
	
	<!-- 위에가 용주형꺼 -->
	<div class="good_img_wrapper">
      <div class="good_img_titleBox">
         
         <div class="good_img_title"></div>
        
      </div>
      <div class="good_img_divideBox">
      <div class="good_img_small_wrapper">
         <div class="good_img_small"><input type="file" name="file"></div>
         <div class="good_img_small"><input type="file" name="file"></div>      
      </div>
      <div class="good_img_small_wrapper">
        <div class="good_img_small">img 4<input type="file" name="file"></div>
        <div class="good_img_small">img 5<input type="file" name="file"></div> 
      </div>
      </div>
   </div>
   <div class="good_detail_wrapper">
      <div class="good_detailBox">
         <div class="good_info_wrapper">
         	<div class="good_info_padding">
         		<div class="good_info_area"><img class="good_icon" src="https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15674923909136.svg"/></img>다낭</div>
         		<div class="good_title" ><input type="text" name="title" style="color:black"></div>
         		<div class="good_category_wrapper">
         			<div class="good_category"><a href="#">조인 투어</a></div>
         			<div class="good_category"><a href="#">역사 & 문화 투어</a></div>
         			<input type="checkbox" name="category" value="">??
         			
         		</div>
         		<div class="good_info">
         			<div class="good_info_nextdate">내일부터 가능????</div>
         			<div class="good_key_infoBox">
         				<div class="good_keyBox">
         					<img class="good_icon" src="https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15674927522196.svg" />
         					<input type="text" name="using_time" placeholder="이용시간) 8시간 이용" class="st">
         				</div>
         				<div class="good_keyBox">
         					<img class="good_icon" src="https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15674929816073.svg" />
         					<input type="text" name="pick_up" placeholder="픽업)호텔 픽업" class="st">
         				</div>
         				<div class="good_keyBox">
         					<img class="good_icon" src="https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15674929156333.svg" />
         					<input type="text" name="people" placeholder="인원} 2명" class="st">
         				</div>
         				<div class="good_keyBox">
         					<img class="good_icon" src="https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15674928069478.svg" />
         					<input type="text" name="boucher" placeholder="바우처) 모바일 바우처 사용" class="st">
         				</div>
         				<div class="good_keyBox">
         					<img class="good_icon" src="https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15674930838942.svg" />
         					<input type="text" name="delivery_time" placeholder="확정) 48시간 내 확정" class="st">
         				</div>
         				<div class="good_keyBox">
         					<img class="good_icon" src="https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15674930325915.svg" />
         					<input type="text" name="duration" placeholder="사용날짜) 지정일사용" class="st">
         				</div>
         				<div class="good_keyBox">
         					<img class="good_icon" src="https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15674926699506.svg" />
         					<input type="text" name="cancel" placeholder="취소가능) 취소가능" class="st">
         				</div>
         				<div class="good_keyBox">
         					<img class="good_icon" src="https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15674928656190.svg" />
         					<input type="text" name="language" placeholder="언어) 영어" class="st">
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
         			<div class="good_priceBox"><input type="text" name="price" placeholder="price" class="bk"></div>
         			<div class="good_reservationBox"><input type="text" name="discount" placeholder="discount" class="bk"></div>
         			<div class="good_reservationBox"><input type="text" name="qtt" placeholder="qtt" class="bk"></div>
         			<div class="good_reservation_btn">등록하기</div>
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
   					<div class="good_detail_title">매력포인트(ul 사용)</div>							<!-- 매력포인트 -->
   					<textarea id="point" name="point"></textarea>
   				</div>
   				<br><br><br>
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
               
                  <textarea id="program" name="program"></textarea>
                  
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
                  <ul>
                     <li>오전 07:30 - 호텔 픽업 서비스</li> 
                     <li>오전 09:30 - 10:00 바나힐 도착 및 케이블카 탑승</li>
                     <li>오전 09:30 - 10:00 바나힐 도착 및 케이블카 탑승</li>
                     <li>오전 09:30 - 10:00 바나힐 도착 및 케이블카 탑승</li>
                  </ul>
               </div> -->
               <div class="good_detail_infoBox border-top">
                  <div class="good_detail_title">포함사항(ul)</div>
                  
                          
               <textarea id="included" name="included"></textarea>
              
                  <!-- <ul>
                     <li>유모차 대여</li>
                     <li>유모차 대여</li>
                     <li>유모차 대여</li>
                  </ul> -->
               </div>
               <div class="good_detail_infoBox border-top">
                  <div class="good_detail_title">불포함 사항(ul)</div>
                  <textarea id="not_included" name="not_included"></textarea>
                  <!-- <ul>
                     <li>유모차 대여</li>
                     <li>유모차 대여</li>
                     <li>유모차 대여</li>
                  </ul> -->
               </div>
               <div class="good_detail_infoBox border-top">
                  <div class="good_detail_title">사용 방법</div>
                   <textarea id="how_to_use" name="how_to_use"></textarea> 
                  <!-- <ul>
                     <li>이메일로 제공된 바우처 인쇄 혹은 모바일 바우처 사용</li>
                     <li>이메일로 제공된 바우처 인쇄 혹은 모바일 바우처 사용</li>
                  </ul> -->
                  
               </div>
   			</div>
   		</div>
</div>	



</form>

	<script type="text/javascript">
	<!------------------------------ AJAX 자바스크립트방식 ----------------------- -->
		var options = $('#options').html();
		$('options').empty();
		var count = 0;
		//카테고리 ajax
		$("#cloth").change(function() {
			//1. XMLHttpRequest 객체 생성
			var xmlhttp;
			if (window.XMLHttpRequest) {
				xmlhttp = new XMLHttpRequest();
			} else {
				xmlhttp = new ActiveXObject("Microsoft.XMLHTTP")
			}
			//2. 요청 정보 작성	
			xmlhttp.open("GET", "./selectCloth?kind=" + $("#cloth").val());
			//3. 요청 전송
			xmlhttp.send();
			//4. 결과 처리
			xmlhttp.onreadystatechange = function() {
				if (this.readyState == 4 && this.status == 200) {
					$('#kind').html(this.responseText);
				}
			}
		});
		//섬머노트
		$("#pro_contents").summernote({
			height : 120,
		});
		$("#pro_warning").summernote({
			height : 120,
		});
		
	/* 밑에 내꺼 */
	//섬머노트
$("#point").summernote({
	placeholder: '매력 포인트 (ul로 작성)',
	height : 300
});

//program
$('#program').summernote({
	placeholder: 'program info',
    tabsize: 5,
    height: 700
});

//included
$('#included').summernote({
	placeholder: ' included',
	tabsize: 5,
	height : 300
});

//not_included
$('#not_included').summernote({
	placeholder: 'not_included',
	tabsize: 5,
	height : 300
});

//how_to_use
$('#how_to_use').summernote({
	placeholder: '사용방법, 미팅 포인트, 등등',
	
	height : 300
});

$('.good_reservation_btn').click(function(){
	$("form").submit();
 });

	</script>

</body>
</html>