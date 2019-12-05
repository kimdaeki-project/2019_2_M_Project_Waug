<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:import url="../layout/bootstrap.jsp"/>
<link href="../resources/css/mypage.css" rel="stylesheet"> 
<link href="../resources/css/all.css" rel="stylesheet"> 
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
				
				<div class="col-md-9" id= "sub-container">
					<h3 class="space-5" style="font-weight: bold;">구매내역</h3>
					<div class="row">
						<div class="item-booking">
							<div class="booking-img">
								<img src="https://d2mgzmtdeipcjp.cloudfront.net/files/good/2019/07/04/15622127704142.png?s=280x184">
							</div>
							<div class="booking-sum">
								<span class="booking-status status-done">예약완료</span>
								<h5 class="booking-header">보홀 발리카삭 & 버진 스노쿨링 투어</h5>
								<ul>
									<li>2019-01-30</li>
									<li>B코스 어쭈구쩌주꾸주주</li>
								</ul>
							</div>
							<div class="booking-arrow"></div>
													
						</div>
					</div>
					<!-- paging 시작 -->
					<div class="row">
						<div class="page-navigation">
							<div class="btn-group">
								<a class="btn">≪</a>
								<a class="btn">＜</a>
								<a class="btn active" id="pagenum">1</a>
								<a class="btn">＞</a>
								<a class="btn">≫</a>
							</div>
						</div>
					</div>
					<!-- paging 끝 -->
				</div>
			</div>
		</div>
		</div>
		</div>	
	<!-- footer -->
	<c:import url="../layout/Footer.jsp"/>
	<script type="text/javascript">
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
	</script>
</body>
</html>