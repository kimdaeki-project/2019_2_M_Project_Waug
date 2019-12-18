<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:import url="../layout/bootstrap.jsp"/>
<link href="../resources/css/mypage.css" rel="stylesheet"> 
<link rel="stylesheet" href="../resources/css/Footer.css">
<link rel="stylesheet" href="../resources/css/CityList.css">
<title>Insert title here</title>
<script type="text/javascript">

</script>
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
		<form action="cartDel" method="post">		
			<div class="row">
				<c:import url="./mylayout.jsp"/>
					<div id="sub-container" class="col-md-9">
						<h3 class="space-5" style="font-weight: bold;">장바구니</h3>
						
						<div class="row" style="margin-left: 0">
							<p style="display: block;">* 예약일 만료/판매 종료/매진 상품에 해당되는 경우 장바구니에서 자동으로 삭제됩니다.</p>
							<table class="table-hover mypage-list">
								<thead>
									<tr>
										<th colspan="3">상품${vo.cart_num}</th>
										<th class="col-xs-2">사용 예정일</th>
										<th class="col-xs-4">옵션 및 수량</th>
										<th class="col-xs-2">비용</th>
									</tr>
								
								</thead>

								<tbody>
								<c:if test="${not empty list}">
									<c:forEach items="${list}" var="vo">
									<tr>
										<td class="text-center">
											<input type="hidden" name="goods_num" value="${vo.goods_num}">
											<div class="i-checks">
												<label>
													<div id="cart_idx" class="icheckbox_flat-pink each-div">
														<input class="m" type="checkbox" value="${vo.cart_num}" name="cart_num" style="opacity:0; width: 100%; height: 100%;">
														<div></div> 
													</div>
												</label>
											</div>
										</td>
										<td class="col-xs-2 text-center">
											<a href="../goods/good_page">
												<div style="background-image:url('${vo.img}'); width: 170px; height: 100px; background-size: cover; background-position: center;"></div>
											</a>
										</td>
										<td class="col-xs-2 text-center">
											<a href="../goods/good_page">
												${vo.title}
											</a>
										</td>
										<td class="text-center">${vo.o_date2}<br>${vo.o_time}</td>
										<td>
											<div>${vo.title} 성인</div>
											<div>￦  ${vo.price} x ${vo.o_people}</div>
											
										</td>
										<td class="text-center"><input type="hidden" name ="price" value="가격">￦ ${cartSum}</td>
										
									</tr>
									</c:forEach>
								</c:if>
								<c:if test="${empty list}">
									 <tr>
										<td class="text-center" colspan="6">장바구니에 상품이 없습니다.</td>
									</tr> 
								</c:if>	
								</tbody>
								
							</table>
							<!-- 테이블 끝 -->
							<div class="text-right">
								<div class="order-total-price" >
									총
									<span>￦ ${cartSum}</span>
								</div>
								<div class="i-checks select-all">
									<label>
									<div style=" padding-top: 1px; float: left;">전체 선택 / 해제</div>
									<div id="check_box" class="icheckbox_flat-pink all-div">
										<input id="check_box_input" type="checkbox" style="opacity:0; width: 100%; height: 100%;">
									</div>
									</label>
								
								</div>
							</div>
							
							<div class="form-button-wrapper">
								<button type="submit" class="btn-form-cancel">선택 삭제 ${cartCount}</button>
								<button type="button" class="btn-form-submit">선택 구매</button>
							</div>
							
							
						</div>
					</div>
			</div>
			</form>
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
	
	//체크 ,삭제
	var check = true;
	$('#check_box_input').click(function() {
		$('.m').prop("checked",check);
		check= !check;
	});
	
	
	$('.m').click(function() {
		var ck= true;
		$('.m').each(function() {
		
			if(!$(this).prop("checked")){
				ck=false;
			}
		});
	
		$('#check_box_input').prop("checked",ck);	
	});
	


	$('.all-div').click(function() {

		$('.icheckbox_flat-pink').toggleClass('check-img');
		
	
	});

	
	$('.each-div').click(function() {
		
		$(this).toggleClass('check-img');
		 $('.each-div').each(function() {
		
			if(!$(this).hasClass('check-img')){
				chk = $('.all-div').addClass('check-img');
			}
		});
	
		$('.all-div').toggleClass('check-img'); 
	});
	
	
	
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