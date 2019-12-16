<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="../resources/css/mypage.css" rel="stylesheet"> 
<c:import url="../layout/bootstrap.jsp"/>
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
						<h3 class="space-5" style="font-weight: bold;">내 쿠폰</h3>
						
						<div class="row">
							<div class="row">
							<div class="nav nav-tabs" style="padding-right:0;">
							   <a data-toggle="tab" href="#menu1"">
							   <div id="coupon1" class="btn-my-coupon-list tab active-continent">
							   사용 가능 쿠폰(3)
							   </div>
							   </a>
							   <a data-toggle="tab" href="#menu2"">
							   <div id="coupon2" class="btn-my-coupon-list tab">
							   사용/만료 쿠폰(1)
							   </div>
							   </a>
							</div>
							</div>
							<div class="tab-content">
							    <div id="menu1" class="tab-pane fade in active">
							      
							     				<form action="">
													<div class="row box-gray">
														<div class="col-xs-10">
															<input type="text" placeholder="쿠폰 코드를 입력해주세요." class="form-control" required="required">
														</div>
														<div class="col-xs-2">
															<button type="submit" id="btn-form-submit"class="form-control" style="white-space: nowrap;">쿠폰등록</button>
														</div>
													</div>
												</form>
												<div class="row">
													<table class="table-hover mypage-list">
														<thead>
															<tr>
																<th>쿠폰명</th>
																<th>쿠폰코드</th>
																<th>할인금액</th>
																<th>유효기간</th>
															</tr>
														</thead>
														<tbody>
															<tr>
																<td class="col-xs-3 text-center">바티칸 투어 추가 할인</td>
																<td class="col-xs-2 text-center">VATICAN</td>
																<td class="col-xs-2 text-center">30% 할인</td>
																<td class="col-xs-3 text-center">2019.12.31까지</td>
															</tr>
														</tbody>
													</table>
												</div>
											
							      
							    </div>
							    <div id="menu2" class="tab-pane fade">
							   		<div class="row">
							   			<table class="table-hover mypage-list">
							   				<thead>
							   					<tr>
							   						<th>쿠폰명</th>
							   						<th>쿠폰코드</th>
							   						<th>할인금액</th>
							   						<th>유효기간</th>
							   						<th class="coupon-status">상태</th>
							   					</tr>
							   				</thead>
							   				<tbody>
							   					<tr>
							   						<td class="col-xs-3 text-center">회원가입 쿠폰</td>
							   						<td class="col-xs-2 text-center"><s>RHRHRH23423</s></td>
							   						<td class="col-xs-2 text-center">￦1,000 할인</td>
							   						<td class="col-xs-3 text-center">2019.02.13 20:00</td>
							   						<td class="col-xs-2 text-center">기간만료</td>
							   					</tr>
							   				</tbody>
							   			</table>
							   		</div>			
							    </div>
								<!-- menu2끝 -->
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
					
					
					<div>
					※사용/만료 쿠폰은 사용 완료일 또는 유효기간 종료일로부터 6개월 후 까지 노출됩니다.
					</div>
					
								
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
	
	
	$(".btn-my-coupon-list").click(function() {
		$(".btn-my-coupon-list").removeClass("active-continent");
	 	$(this).addClass("active-continent");
	});
	
	$(".con").click(function() {
		$(".continent-item").removeClass("active-continent");
		$(".continent-text").removeClass("active");
		$(this).parent().parent().addClass("active-continent");
		$(this).parent().addClass("active");
	});
	</script>


	

	

</body>
</html>