<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:import url="../layout/bootstrap.jsp"/>
<link href="../resources/css/mypage.css" rel="stylesheet"> 
<link href="../resources/css/area.css" rel="stylesheet"> 
<link rel="stylesheet" href="../resources/css/Footer.css">
<link rel="stylesheet" href="../resources/css/CityList.css">
<title>Insert title here</title>
</head>
<body>
<c:import url="../layout/nav.jsp"/>
<c:import url="../layout/CityList.jsp"/>

<div id="content">
	<div class="wrapper-page">
		<div class="row">
			<div class="wrapper-subheader headimage"></div>
		</div>
		<div class="container">
		
			<div class="row">
				<c:import url="./mylayout.jsp"/>
					<div id="sub-container" class="col-md-9">
						<h3 class="space-5" style="font-weight: bold;">Wish List</h3>
						
					<div class="row" >
					<c:forEach items="${list}" var="vo"> 
						<!-- goods 하나 -->
						<div class="good-card-box m-good-card col-md-6 item">
						<!-- 위시리스트 추가하트 -->
						<div class="good-wish" title="${vo.goods_num}"><img alt="하트" src="../resources/images/ic_active_wish.svg"></div>
						<!-- 상품사진 -->
						<div class="wish-good">
							<img data-lazy="https://d2mgzmtdeipcjp.cloudfront.net/files/good/2019/11/28/15749047613780.png?s=366x240" 
							class="good-photo lazy" 
							src="${vo.img}" 
							style="display: block;">
						</div>
						<!-- 상품설명 -->
						<div class="good-info-content-box">
							<div class="today-use">오늘부터 사용 가능</div>
							<span class="good-title">${vo.title}</span>
							<div class="good-original-price">${vo.price}</div>
							<div class="good-discount-price">${vo.discount}</div>
							<div class="good-booked">47 예약</div>
						</div>
						</div>
						<!-- goods 하나 끝 -->
					</c:forEach> 
						
					</div>
				</div>
				</div>
			</div>
		</div>
	</div>
	<!-- footer -->
	<c:import url="../layout/Footer.jsp"/>
	<script type="text/javascript">
	window.onload = function() {
		var loca = $(location).attr('href');
		loca = loca.substring(23);

		$(".layout").each(function() {
			if($(this).attr("id") == loca){
				$(this).css('color', '#d91c84');
			}
		});
	}
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
	
	
	$(".good-wish").click(function() {
		//$(this).toggleClass("good-card-wish-btn-whis");
		var goods_num = $(this).attr("title");
		
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
			window.location.reload();
	});
	
	</script>
</body>
</html>