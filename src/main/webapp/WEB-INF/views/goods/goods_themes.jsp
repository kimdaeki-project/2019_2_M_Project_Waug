<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<title class="next-head">${ThemeVO.t_title}</title>
<link rel="shortcut icon" href="../resources/favicon-32x32.png"
	type="image/x-icon" />
<link rel="icon" href="/favicon.ico" type="image/x-icon">
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="../resources/css/theme.css">
<link rel="stylesheet" href="../resources/css/nav.css">
<link rel="stylesheet" href="../resources/css/CityList.css">
</head>
<body>
<c:import url="../layout/nav.jsp" />
<c:import url="../layout/CityList.jsp" />
	<div class="theme-header">
		<div class="theme-header-wrapper">
			<div class="theme-header-background-image pc" style="display=block; background: url('${ThemeVO.t_img}');">
			</div>
		<div class="theme-header-opacity">
		</div>
		<div class="theme-header-description">
			<div class="theme-header-title">${ThemeVO.t_title}
			</div>
		</div>
		</div>
	</div>
	<div class="theme-page-container">
		<div class="theme-goods-title-container">
			<div class="theme-goods-title">${ThemeVO.t_title}</div>
			<div class="theme-goods-sub-title">${ThemeVO.t_subtitle}</div>
		</div>
		
		
		<div class="theme-goods-list-container">
			<c:forEach items="${goodsVO}" var="vo">
				<div class="theme-goods-card-container" onclick="location.href='./good_page?goods_num=${vo.goods_num}'">
					<div class="theme-goods-card-content">
						<div class="theme-goods-card">
							<div class="good-card-wrapper onclick-cursor-pointer">
								<div class="good-card-background-image-cover" style="background-image: url('${vo.img}?s=370x244');">
									<div class="good-card-wish-btn onclick-cursor-pointer">
									</div>
								</div>
								<div class="good-card-text-wrapper">
									<div class="good-card-available-date">${vo.able}일 부터 사용가능
									</div>
									<div class="good-card-title">${vo.title}
									</div>
									<div class="good-card-original-price"><fmt:formatNumber type="currency" value="${vo.price}" currencySymbol="₩ "/>
									</div>
									<div class="good-card-price"><fmt:formatNumber type="currency" value="${(vo.price-vo.price*vo.discount/100)}" currencySymbol="₩ "/>
									</div>
									<div class="good-card-buy-cnt">20,254 예약
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
	<script type="text/javascript">
	/* 위시리스트 jquery */
	$(".good-card-wish-btn").click(function() {
		$(this).toggleClass("good-card-wish-btn-whis");
	});
	
	/* 모달 */
	// Get the modal
	var modal = document.getElementById("myModal");
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
		$(".continent-text").removeClass("active2");
		$(this).parent().parent().addClass("active-continent");
		$(this).parent().addClass("active2");
	});
	</script>
</body>
</html>