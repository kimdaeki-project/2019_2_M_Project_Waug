<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css"
	rel="stylesheet">
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
<script
	src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>

<!-- include summernote css/js -->
<link
	href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote.css"
	rel="stylesheet">
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote.js"></script>
<link rel="stylesheet" href="../resources/css/admin.css">
</head>
<body>
	<input type="text" id="getCity_num" value="${goodsVO2.city_num}"
		hidden="hidden">
	<input type="text" id="getTheme" value="${goodsVO2.t_num}"
		hidden="hidden">
	<input type="text" id="getCategory" value="${goodsVO2.cate_num}"
		hidden="hidden">
	<input type="text" id="getUsing_time" value="${info.using_time }"
		hidden="hidden">
	<input type="text" id="getPick_up" value="${info.pick_up }"
		hidden="hidden">
	<input type="text" id="getPeople" value="${info.people }"
		hidden="hidden">
	<input type="text" id="getBoucher" value="${info.boucher }"
		hidden="hidden">
	<input type="text" id="getDelivery_time" value="${info.delivery_time }"
		hidden="hidden">
	<input type="text" id="getDuration" value="${info.duration }"
		hidden="hidden">
	<input type="text" id="getCancel" value="${goodsVO2.cancel }"
		hidden="hidden">
	<input type="text" id="getLanguage" value="${info.language }"
		hidden="hidden">
	
	
	
	<form action="goods_update" method="post" enctype="multipart/form-data">
	<input type="text"  class="img" name="img" id="titleImg"
							style="width: 500px; height: 30px;" value="${goodsVO2.img}">
	<input type="text" class="img"  name="img1" id="getImg1" value="${goodsVO2.img1}">
	<input type="text" class="img"  name="img2" id="getImg2" value="${goodsVO2.img2}">
	<input type="text" class="img"  name="img3" id="getImg3" value="${goodsVO2.img3}">
	<input type="text" class="img"  name="img4" id="getImg4" value="${goodsVO2.img4}">

	goods_num : <input type="text" value="${goodsVO2.goods_num}" name="goods_num" readonly="readonly"><br>
		<select name="city_num" id="city_num">
			<option value="0">도시를 선택하세요</option>
			<c:forEach items="${cityar}" var="vo">
				<option value="${vo.city_num}">${vo.city_name}</option>
			</c:forEach>
		</select> <select name="t_num" id="t_num">
			<option value="0">테마를 선택하세요</option>
			<c:forEach items="${themear}" var="vo">
				<option value="${vo.t_num}">${vo.t_title}</option>
			</c:forEach>
		</select> <select name="cate_num" id="cate_num">
			<option value="0">카테고리를 선택하세요</option>
			<c:forEach items="${catear}" var="vo">
				<option value="${vo.cate_num}">${vo.cate_name}</option>
			</c:forEach>
		</select>
		<!-- 위에가 용주형꺼 -->
		<div class="good_img_wrapper">
			<div class="good_img_titleBox">
				<div class="good_img_title" id="img" style="display: block; width:1000px;  height: 534px; margin-left: 0px; background: url('${goodsVO2.img}');">

				</div>
			</div>
			<div class="good_img_divideBox">
				<div class="good_img_small_wrapper">
					<div class="good_img_small" id="img1" style="background-repeat: no-repeat; background-position: center; background: url('${goodsVO2.img1}');"></div>
					<div class="good_img_small" id="img2" style="background-repeat: no-repeat; background-position: center; background: url('${goodsVO2.img2}');"></div>
				</div>
				<div class="good_img_small_wrapper">
					<div class="good_img_small" id="img3" style="background-repeat: no-repeat; background-position: center; background: url('${goodsVO2.img3}');"></div>
					<div class="good_img_small" id="img4" style="background-repeat: no-repeat; background-position: center; background: url('${goodsVO2.img4}');"></div>
				</div>
			</div>
		</div>
		<div class="good_detail_wrapper">
			<div class="good_detailBox">
				<div class="good_info_wrapper">
					<div class="good_info_padding">
						<div class="good_info_area">Goods title</div>
						<div class="good_title">
							<input type="text" name="title" style="color: black"
								value="${goodsVO2.title}">
						</div>
						<div class="good_category_wrapper"></div>
						<div class="good_info">
							<div class="good_info_nextdate">
								사용가능날짜(able)<br> <input type="date" name="able" class="st"
									value="${goodsVO2.able}">
							</div>
							<div class="good_key_infoBox">
								<div class="good_keyBox">
									<img class="good_icon"
										src="https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15674927522196.svg" />
									<select name="using_time" class="st" id="using_time">
										<option value="0">이용시간을 선택하세요</option>
										<option value="1시간 이용">1시간 이용</option>
										<option value="2시간 이용">2시간 이용</option>
										<option value="3시간 이용">3시간 이용</option>
										<option value="4시간 이용">4시간 이용</option>
										<option value="5시간 이용">5시간 이용</option>
										<option value="6시간 이용">6시간 이용</option>
										<option value="7시간 이용">7시간 이용</option>
										<option value="8시간 이용">8시간 이용</option>
									</select>
								</div>
								<div class="good_keyBox">
									<img class="good_icon"
										src="https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15674929816073.svg" />
									<select name="pick_up" class="st" id="pick_up">
										<option value="0">픽업을 선택하세요</option>
										<option>호텔 픽업</option>
										<option>호텔 픽업</option>
									</select>
								</div>
								<div class="good_keyBox">
									<img class="good_icon"
										src="https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15674929156333.svg" />
									<select name="people" class="st" id="people">
										<option value="0">인원수를 선택하세요</option>
										<option>1명</option>
										<option>2명</option>
										<option>3명</option>
										<option>4명</option>
										<option>5명</option>
										<option>6명</option>
										<option>7명</option>
										<option>8명</option>
									</select>
								</div>
								<div class="good_keyBox">
									<img class="good_icon"
										src="https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15674928069478.svg" />
									<select name="boucher" class="st" id="boucher">
										<option value="0">바우처를 선택하세요</option>
										<option>모바일 바우처 사용</option>
									</select>
								</div>
								<div class="good_keyBox">
									<img class="good_icon"
										src="https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15674930838942.svg" />
									<select name="delivery_time" id="delivery_time" class="st">
										<option value="0">확정시간을 선택하세요</option>
										<option>1시간 내 확정</option>
										<option>2시간 내 확정</option>
										<option>4시간 내 확정</option>
										<option>6시간 내 확정</option>
										<option>12시간 내 확정</option>
										<option>24시간 내 확정</option>
										<option>48시간 내 확정</option>
									</select>
								</div>
								<div class="good_keyBox">
									<img class="good_icon"
										src="https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15674930325915.svg" />
									<select name="duration" id="duration" class="st">
										<option value="0">사용 날짜를 선택하세요</option>
										<option>지정일 사용</option>
										<option>지정일 사용</option>
									</select>
								</div>
								<div class="good_keyBox">
									<img class="good_icon"
										src="https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15674926699506.svg" />
									<select name="cancel" id="cancel" class="st">
										<option value="0">취소 가능 여부를 선택하세요</option>
										<option>취소 가능</option>
										<option>취소 불가</option>
									</select>
								</div>
								<div class="good_keyBox">
									<img class="good_icon"
										src="https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15674928656190.svg" />
									<select name="language" id="language" class="st">
										<option value="0">언어를 선택하세요</option>
										<option>영어</option>
										<option>한국어</option>
										<option>중국어</option>
										<option>일본어</option>
									</select>
								</div>
							</div>
								googleMap<br>
         					horizontal <input type="text" class="locationBox" name="horizontal" placeholder="ex)45.1423" value="${goodsVO2.horizontal}">	<br>
         					vertical <input type="text" class="locationBox" name="vertical" placeholder="ex)45.1423" value="${goodsVO2.vertical}">	

						</div>
					</div>
				</div>
				<div class="good_info_wrapper">
					<div class="good_bookBox">
						<div class="good_bookInfo">
							<div class="good_priceBox">
								<input type="text" name="price" placeholder="price" class="bk"
									value="${goodsVO2.price}">
							</div>
							<div class="good_reservationBox">
								<input type="text" name="discount" placeholder="discount"
									class="bk" value="${goodsVO2.discount}">
							</div>
							<div class="good_reservationBox">
								<input type="text" name="qtt" placeholder="qtt" class="bk"
									value="${goodsVO2.qtt}">
							</div>
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
						<div class="good_detail_title">매력포인트(ul 사용)</div>
						<!-- 매력포인트 -->
						<textarea id="point" name="charming">${goodsVO2.charming}</textarea>
					</div>
					<br>
					<br>
					<br>
					<div class="good_detail_infoBox optionbg">
						<div class="good_detail_title">상품 옵션</div>
						<div>
							<div class="good_option_wrapper">
								<div class="good_option_selectBox">바나힐 핑크 패키지 투어 (다낭 시내)</div>
								<div class="good_option_arrowBox">
									<div class="good_option_arrowIcon">
										<img
											src="https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15578832012811.svg"
											class="good_arrowIcon" />
									</div>
								</div>
							</div>
							<div class="good_option_wrapper">
								<div class="good_option_selectBox">바나힐 핑크 실속 투어 (다낭 시내)</div>
								<div class="good_option_arrowBox">
									<div class="good_option_arrowIcon">
										<img
											src=https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15578832012811.svg
											class="good_arrowIcon" />
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="good_detail_infoBox">
						<div class="good_detail_title">프로그램</div>

						<textarea id="program" name="program">
                  ${goodsVO2.program }
                  </textarea>


						<div class="good_detail_infoBox border-top">
							<div class="good_detail_title">포함사항(ul)</div>


							<textarea id="included" name="included">${goodsVO2.included}</textarea>

						</div>
						<div class="good_detail_infoBox border-top">
							<div class="good_detail_title">불포함 사항(ul)</div>
							<textarea id="not_included" name="not_included">${goodsVO2.not_included}</textarea>

						</div>
						<div class="good_detail_infoBox border-top">
							<div class="good_detail_title">사용 방법</div>
							<textarea id="how_to_use" name="how_to_use">${goodsVO2.how_to_use}</textarea>


						</div>
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



//****************value check before submit****************
//city, theme, category values
var city_num=false;
var t_num=false;
var cate_num=false;
//info values
var using_time=false;
var pick_up=false;
var people=false;
var boucher=false;
var delivery_time=false;
var duration=false;
var cancel=false;
var language=false;
/* var subImg1=false;
var subImg2=false;
var subImg3=false;
var subImg4=false;

$('#subImg1').change(function() {
	subImg1=true;
});
$('#subImg2').change(function() {
	subImg2=true;
});
$('#subImg3').change(function() {
	subImg3=true;
});
$('#subImg4').change(function() {
	subImg4=true;
}); */

$('.good_reservation_btn').click(function(){

	if($('#using_time').val()!="0"){
		using_time=true;
	}
	if($('#pick_up').val()!="0"){
		pick_up=true;
	}
	if($('#people').val()!="0"){
		people=true;
	}
	if($('#boucher').val()!="0"){
		boucher=true;
	}
	if($('#delivery_time').val()!="0"){
		delivery_time=true;
	}
	if($('#duration').val()!="0"){
		duration=true;
	}
	if($('#cancel').val()!="0"){
		cancel=true;
	}
	if($('#language').val()!="0"){
		language=true;
	}
	if($('#city_num').val()!="0"){
		city_num=true;
	}
	if($('#t_num').val()!="0"){
		t_num=true;
	}
	if($('#cate_num').val()!="0"){
		cate_num=true;
	}
	
	// if all true >> submit()
	if(using_time&&pick_up&&people&&boucher&&delivery_time&&duration&&cancel&&language){
		alert('all true');
		$("form").submit();
	}
	else{
		alert("모두 입력해주세요");
	}
});
var getCity_num=$('#getCity_num').val();	
var getTheme=$('#getTheme').val();
var getCategory=$('#getCategory').val();
var getUsing_time=$('#getUsing_time').val();	//info down
var getPick_up=$('#getPick_up').val();
var getPeople=$('#getPeople').val();
var getBoucher=$('#getBoucher').val();
var getDelivery_time=$('#getDelivery_time').val();
var getDuration=$('#getDuration').val();
var getCancel=$('#getCancel').val();
var getLanguage=$('#getLanguage').val();	//info end------
$(window).ready(function() {
	
	$('#city_num').val(getCity_num);
	$('#t_num').val(getTheme);
	$('#cate_num').val(getCategory);
	
	$('#using_time').val(getUsing_time);
	$('#pick_up').val(getPick_up);
	$('#people').val(getPeople);
	$('#boucher').val(getBoucher);
	$('#delivery_time').val(getDelivery_time);
	$('#duration').val(getDuration);
	$('#cancel').val(getCancel);
	$('#language').val(getLanguage);
	
	
	
});
	/* //페이지 로딩이후 사진띄우기
	window.onload = function(){
		$(".img").each(function() {
			var image = $(this).val();
			var div = $(this).arrt('name');
			$("#"+div).css({"background":"url("+image+")", 'background-repeat' : 'no-repeat', 'background-position':'center center'});
		})
	}; */
	//사진 주소 입력시 사진 보여주기
	$(".img").change(function() {
		var image = $(this).val();
		alert(image);
		var div = $(this).attr('name');
		alert(div);
		$("#"+div).css({"background":"url("+image+")", 'background-repeat' : 'no-repeat', 'background-position':'center center'});
		
	});
	</script>
</body>
</html>