<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>reservation basic</title>
	<link rel="stylesheet" type="text/css" href="../resources/css/order.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
<nav>nav</nav>
<div>
	<!-- modal -->
	<div id="reser_modal">
		<div class="reser_modal_wrapper">
			<span id="reser_modal_close">&times;</span>
			<div class="reser_modal_info">
				<div class="reser_modal_title">와그 핑크 바나힐 일일 투어 (다낭 출발)</div>
				<div class="reser_modal_option_selected">3.4 진에어</div>
				<div class="reser_modal_option_date">2019-12-03</div>
			</div>
			<button id="reservation_btn">예약하기</button>
		</div>
	</div>
	<!-- modal -->
	<div class="reser-flex-box">
		<div class="reser_title_wrapper">
			<div class="reser_title">
				와그 핑크 바나힐 일일 투어 (다낭 출발)
			</div>
		</div>
		<div class="reser_division">
			<div class="reser_cal_wrapper">
			<div class="reser_calBox">
				calendar 
			</div>
		</div>
		<div class="reser_option_wrapper">
			<div class="reser_option_title">
				select options
				<div class="reser_option_selected_date">2020-02-08</div>
				<div class="reser_option_list">
					<div class="reser_option_item">
						<div class="reser_option_item_title">바나힐 핑크 패키지 투어 (다낭 시내)</div>
						<div class="reser_option_item_price">34000</div>
					</div>
				</div>
			</div>
		</div>
		</div>
	</div>
</div>
<script type="text/javascript">
	//창띄우면 popup 숨기기
	$(window).ready(function(){
		$('.reser_modal').hide();
	});

	//show modal popup
	var item=document.getElementsByClassName("reser_option_item")[0];
	var modalBox=document.getElementById("reser_modal");
	var close=document.getElementById("reser_modal_close");
	//var span = document.getElementsByClassName("close")[0];

	//눌렀을 때 modal 띄우기
	item.onclick=function(){
		modalBox.style.display = "block";
	}

	//다른곳 눌렀을때 modal 닫기
	window.onclick=function(event){
		if(event.target==modalBox){
			modalBox.style.display="none";
		}
	}

	//x표시 눌렀을때 modal 닫기
	close.onclick=function(){
		modalBox.style.display="none";
	}

$('#reservation_btn').click(function(){
	location.href="./info";
})

	//modal 
	//https://www.w3schools.com/howto/tryit.asp?filename=tryhow_css_modal
</script>
</body>
</html>