<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../resources/css/quickSearch.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
<c:import url="../layout/nav.jsp"/>
<c:import url="../layout/CityList.jsp"/>

<div class="travel_main" style="background-image: url(https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15591018541748.png?s=1680x640);">
	<div class="travel_main_cover" style="background-image: url(https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15602446750719.png);">
		<div class="travel_category_container">
			<!-- test -->
			<ul class="travel_category_ul nav nav-tabs">
				<!-- tab1 -->
				<label for="li_all" ></label>
				<a href="#all" data-toggle="tab" class="active">
					<li class="travel_category_li travel_category_li_first active" id="li_all">
						전체
					</li>	
				</a>
				<!-- tab2 -->
				<label for="li_usimANDwifi" ></label>
				<a href="#usimANDwifi" data-toggle="tab">
					<li class="travel_category_li" id="li_usimANDwifi">
						유심&와이파이
					</li>
				</a>
				<!-- tab3 -->
				<label for="li_airport_Transportation"></label>
				<a href="#airport_Transportation" data-toggle="tab">
					<li class="travel_category_li" id="li_airport_Transportation">
						공항 이동수단
					</li>
				</a>
				<!-- tab4 -->
				<label for="li_japenPath" ></label>
				<a href="#japenPath" data-toggle="tab">
					<li class="travel_category_li" id="li_japenPath">
						일본 교통패스
					</li>
				</a>
				<!-- tab5 -->
				<label for="li_UrailPath"></label>
				<a href="#UrailPath" data-toggle="tab">
					<li class="travel_category_li travel_category_li_last" id="li_UrailPath">
						유레일 패스
					</li>
				</a>
			</ul>
			<div class="tab-content">
				<!-- test -->
				<div id="all" class="tab-pane fade in active">
					<div class="travel_category_title">전체</div>
					<div class="travel_category_subtitle">어디로 떠나시나요?</div>
					<div class="travel_category_select_wrapper">
						<div class="travel_category_selectBox_lg">여행지 선택</div>
					</div>
					
					<div class="travel_item_container">
						<div class="travel_item_list_title">유심&와이파이</div>
						<div>
							<!-- item list -->
							<c:forEach items="${quickGoods_usim}" var="vo">
							<div class="travel_items">
								<div class="travel_item_img"><img src="${vo.img}"></div>
								<div class="travel_item_infoBox">
									<div class="travel_item_info">
										<div class="travel_item_info_ableDate">내일부터 사용 가능</div>
										<div class="travel_item_info_title">${vo.title}</div>
										<div class="travel_item_info_sub_title">수령장소</div>
										<div class="travel_item_info_sub_text">인천공항, 김해공항, 김포공항</div>
									</div>
									<div class="travel_item_priceBox">
										<div class="travel_item_priceBox_wrapper">
											<div class="travel_item_origin_price">₩ ${vo.price}</div>
											<div class="travel_item_price">₩ ${vo.discount}</div>
										</div>
									</div>
								</div> 
							</div>
							</c:forEach>
							<!-- more Box -->
							<div class="travel_moreBox_wrapper">더보기</div>
						</div>
					</div>
					<div class="travel_item_container" style="margin-top: 20px;">
						<div class="travel_item_list_title">공항 이동수단</div>
						<div>
							<!-- item list -->
							<c:forEach items="${quickGoods_airport}" var="vo">
							<div class="travel_items">
								<div class="travel_item_img"><img src="${vo.img}"></div>
								<div class="travel_item_infoBox">
									<div class="travel_item_info">
										<div class="travel_item_info_ableDate">내일부터 사용 가능</div>
										<div class="travel_item_info_title">${vo.title}</div>
										<div class="travel_item_info_sub_title">수령장소</div>
										<div class="travel_item_info_sub_text">인천공항, 김해공항, 김포공항</div>
									</div>
									<div class="travel_item_priceBox">
										<div class="travel_item_priceBox_wrapper">
											<div class="travel_item_origin_price">₩ ${vo.price}</div>
											<div class="travel_item_price">₩ ${vo.discount}</div>
										</div>
									</div>
								</div> 
							</div>
							</c:forEach>
							<!-- more Box -->
							<div class="travel_moreBox_wrapper">더보기</div>
						</div>
					</div>
					<div class="travel_item_container" style="margin-top: 20px;">
						<div class="travel_item_list_title">일본 교통패스</div>
						<div>
							<!-- item list -->
							<c:forEach items="${quickGoods_jr}" var="vo">
							<div class="travel_items">
								<div class="travel_item_img"><img src="${vo.img}"></div>
								<div class="travel_item_infoBox">
									<div class="travel_item_info">
										<div class="travel_item_info_ableDate">내일부터 사용 가능</div>
										<div class="travel_item_info_title">${vo.title}</div>
										<div class="travel_item_info_sub_title">수령장소</div>
										<div class="travel_item_info_sub_text">인천공항, 김해공항, 김포공항</div>
									</div>
									<div class="travel_item_priceBox">
										<div class="travel_item_priceBox_wrapper">
											<div class="travel_item_origin_price">₩ ${vo.price}</div>
											<div class="travel_item_price">₩ ${vo.discount}</div>
										</div>
									</div>
								</div> 
							</div>
							</c:forEach>
							<!-- more Box -->
							<div class="travel_moreBox_wrapper">더보기</div>
						</div>
					</div>
					<div class="travel_item_container" style="margin-top: 20px;">
						<div class="travel_item_list_title">유레일 패스</div>
						<div>
							<!-- item list -->
							<c:forEach items="${quickGoods_eurail}" var="vo">
							<div class="travel_items">
								<div class="travel_item_img"><img src="${vo.img}"></div>
								<div class="travel_item_infoBox">
									<div class="travel_item_info">
										<div class="travel_item_info_ableDate">내일부터 사용 가능</div>
										<div class="travel_item_info_title">${vo.title}</div>
										<div class="travel_item_info_sub_title">수령장소</div>
										<div class="travel_item_info_sub_text">인천공항, 김해공항, 김포공항</div>
									</div>
									<div class="travel_item_priceBox">
										<div class="travel_item_priceBox_wrapper">
											<div class="travel_item_origin_price">₩ ${vo.price}</div>
											<div class="travel_item_price">₩ ${vo.discount}</div>
										</div>
									</div>
								</div> 
							</div>
							</c:forEach>
							<!-- more Box -->
							<div class="travel_moreBox_wrapper">더보기</div>
						</div>
					</div>
					

					
					
				</div>
				<div id="usimANDwifi" class="tab-pane fade">
					<div class="travel_category_title">유심&와이파이</div>
					<div class="travel_category_subtitle">전세계 어디서나 데이터 및 통화 서비스를 이용하세요.</div>
					<div class="travel_category_select_wrapper">
						<div class="travel_category_selectBox">d123d</div>
						<div class="travel_selectBox_next"></div>
						<div class="travel_category_selectBox">dd</div>
					</div>
					
					<div class="travel_item_container">
						<div class="travel_item_list_title">유심&와이파이</div>
						<div>
							<!-- item list -->
							<c:forEach items="${quickGoods_usim}" var="vo">
							<div class="travel_items">
								<div class="travel_item_img"><img src="${vo.img}"></div>
								<div class="travel_item_infoBox">
									<div class="travel_item_info">
										<div class="travel_item_info_ableDate">내일부터 사용 가능</div>
										<div class="travel_item_info_title">${vo.title}</div>
										<div class="travel_item_info_sub_title">수령장소</div>
										<div class="travel_item_info_sub_text">인천공항, 김해공항, 김포공항</div>
									</div>
									<div class="travel_item_priceBox">
										<div class="travel_item_priceBox_wrapper">
											<div class="travel_item_origin_price">₩ ${vo.price}</div>
											<div class="travel_item_price">₩ ${vo.discount}</div>
										</div>
									</div>
								</div> 
							</div>
							</c:forEach>
							<!-- more Box -->
							<div class="travel_moreBox_wrapper">더보기</div>
						</div>
					</div>
				</div>
				
				<div id="airport_Transportation" class="tab-pane fade">
					<div class="travel_category_title">공항 이동수단</div>
					<div class="travel_category_subtitle">빠르고 편리한 이동으로 여행을 가볍게 시작해보세요.</div>
					<div class="travel_category_select_wrapper">
						<div class="travel_category_selectBox">여행지 선택</div>
						<div class="travel_selectBox_next"></div>
						<div class="travel_category_selectBox">픽업, 샌딩 장소 선택</div>
					</div>
					
					<div class="travel_item_container">
						<div class="travel_item_list_title">공항 이동수단</div>
						<div>
							<!-- item list -->
							<c:forEach items="${quickGoods_airport}" var="vo">
							<div class="travel_items">
								<div class="travel_item_img"><img src="${vo.img}"></div>
								<div class="travel_item_infoBox">
									<div class="travel_item_info">
										<div class="travel_item_info_ableDate">내일부터 사용 가능</div>
										<div class="travel_item_info_title">${vo.title}</div>
										<div class="travel_item_info_sub_title">수령장소</div>
										<div class="travel_item_info_sub_text">인천공항, 김해공항, 김포공항</div>
									</div>
									<div class="travel_item_priceBox">
										<div class="travel_item_priceBox_wrapper">
											<div class="travel_item_origin_price">₩ ${vo.price}</div>
											<div class="travel_item_price">₩ ${vo.discount}</div>
										</div>
									</div>
								</div> 
							</div>
							</c:forEach>
							<!-- more Box -->
							<div class="travel_moreBox_wrapper">더보기</div>
						</div>
					</div>
					
					
					
				</div>
				<div id="japenPath" class="tab-pane fade">
					<div class="travel_category_title" >일본 교통패스</div>
					<div class="travel_category_subtitle">나에게 맞는 교통패스로 일본 여행을 즐기세요.</div>
					<div class="travel_category_select_wrapper">
						<div class="travel_category_selectBox">여행지 선택</div>
						<div class="travel_selectBox_next"></div>
						<div class="travel_category_selectBox">사용일수 선택</div>
					</div>
					<div class="travel_item_container">
						<div class="travel_item_list_title">일본 교통패스</div>
						<div>
							<!-- item list -->
							<c:forEach items="${quickGoods_jr}" var="vo">
							<div class="travel_items">
								<div class="travel_item_img"><img src="${vo.img}"></div>
								<div class="travel_item_infoBox">
									<div class="travel_item_info">
										<div class="travel_item_info_ableDate">내일부터 사용 가능</div>
										<div class="travel_item_info_title">${vo.title}</div>
										<div class="travel_item_info_sub_title">수령장소</div>
										<div class="travel_item_info_sub_text">인천공항, 김해공항, 김포공항</div>
									</div>
									<div class="travel_item_priceBox">
										<div class="travel_item_priceBox_wrapper">
											<div class="travel_item_origin_price">₩ ${vo.price}</div>
											<div class="travel_item_price">₩ ${vo.discount}</div>
										</div>
									</div>
								</div> 
							</div>
							</c:forEach>
							<!-- more Box -->
							<div class="travel_moreBox_wrapper">더보기</div>
						</div>
					</div>
					
				</div>
				<div id="UrailPath" class="tab-pane fade">
					<div class="travel_category_title">유레일 패스</div>
					<div class="travel_category_subtitle">편리한 예약으로 유럽의 여러 나라를 여행하세요.</div>
					<div class="travel_category_select_wrapper">
						<div class="travel_category_selectBox_lg">여행지 선택</div>
					</div>
					
					
					
					<div class="travel_item_container">
						<div class="travel_item_list_title">유레일 패스</div>
						<div>
							<!-- item list -->
							<c:forEach items="${quickGoods_eurail}" var="vo">
							<div class="travel_items">
								<div class="travel_item_img"><img src="${vo.img}"></div>
								<div class="travel_item_infoBox">
									<div class="travel_item_info">
										<div class="travel_item_info_ableDate">내일부터 사용 가능</div>
										<div class="travel_item_info_title">${vo.title}</div>
										<div class="travel_item_info_sub_title">수령장소</div>
										<div class="travel_item_info_sub_text">인천공항, 김해공항, 김포공항</div>
									</div>
									<div class="travel_item_priceBox">
										<div class="travel_item_priceBox_wrapper">
											<div class="travel_item_origin_price">₩ ${vo.price}</div>
											<div class="travel_item_price">₩ ${vo.discount}</div>
										</div>
									</div>
								</div> 
							</div>
							</c:forEach>
							<!-- more Box -->
							<div class="travel_moreBox_wrapper">더보기</div>
						</div>
					</div>
					
					
					
					
				</div>
				<!-- test -->
			</div>
	</div>
	</div>
</div>
<!-- modals - total area -->
<div class="travel_modal_totalArea">
	<div>
		<div class="travel_modal_totalArea_nav">
			<span>X</span>
		</div>
	</div>
</div>
<!-- modals - sub area -->
<!-- modas ......and more....... -->
<!-- item - travel_item_container -->




<script type="text/javascript">
	//w3schools : tab
	//https://www.w3schools.com/howto/tryit.asp?filename=tryhow_js_tabs

	//더보기 눌렀을때
	$('.travel_moreBox_wrapper').click(function(){
		alert('더보기');
	})

	/////////////////////////////////////////////////////////////////////////////////////////////modals
	//modal 띄우기 함수들...
	function modal_for_all(){
		$('.travel_modal_totalArea').css("display","block");
		
	}

	//modal for 전체
	$('#travel_modal_for_all').click(function(e){
		modal_for_all();
		$('.travel_modal_totalArea_nav>span').click(function(){
			$('.travel_modal_totalArea').css("display","none");
		});
	});
</script>
</body>
</html>