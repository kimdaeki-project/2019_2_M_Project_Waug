<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<c:import url="../layout/nav.jsp"/>
<c:import url="../layout/CityList.jsp"/>
<div id="reser_page_div">
	<!-- modal -->
	<form action="./" id = "formId" method="POST">
	<div id="reser_modal">
		<div class="reser_modal_wrapper">
			<span id="reser_modal_close">&times;</span>
			 <input type="hidden" name="goods_num" value="7" > 
			<div class="reser_modal_info">
				<div class="reser_modal_title">와그 핑크 바나힐 일일 투어 (다낭 출발)</div>
				<div class="reser_modal_option_selected"><!-- 3.4 진에어 --></div>
				<div class="reser_modal_option_date">2019-12-03</div>
			</div>
			<div class="reser_numberOfUserBox">
				<div class="reser_user_adult">성인</div>
				<div class="reser_user_number">
					<div class="user_num_controll" id="minus" onclick="minus()"> - </div>
					<div id="user_num_show">0</div>
					<div class="user_num_controll" id="plus" onclick="plus()"> + </div>
				</div>
			</div>
			<div class="reservation_btn_wrapper">
			<div id="reservation_users_order_total_price"></div>
				<button id="cart_btn" type="submit">장바구니</button>
				<button id="reservation_btn">예약하기</button>
			</div>
		</div>
	</div>
	</form>
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
				<div class="reser_cal_yearANDmonth">
				<b id="showYear"></b><b>년</b><b id="showMonth"></b><b>월</b>
				<span onclick="nextMonth()"><img src="https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15578832425605.svg"></span> 	<!-- left -->
				<span onclick="prevMonth()"><img src="https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15578832321432.svg"></span>
				</div>
				<div class="dayBox">
					<div class="day">일</div><div class="day">월</div><div class="day">화</div><div class="day">수</div><div class="day">목</div><div class="day">금</div><div class="day">토</div>
				</div>
				<div id="dateBox">
					<!-- 예시 -->
					<!-- <div class="date">1</div> -->
				</div> 
			</div>
		</div>
		<div class="reser_option_wrapper">
		
			<div class="reser_option_title">
				<!-- 날짜를 먼저 선택해주세요. -->
				<div class="reser_option_selected_date" >2020-02-08</div>
				<div class="reser_option_list">
					<div class="reser_option_item">
						<div class="reser_option_item_title">바나힐 핑크 패키지 투어 (다낭 시내)</div>
						<div class="reser_option_item_price">34000HHHHH</div>
					</div>
				</div>
			</div>
		</div>
		</div>
	</div>
</div>
<script type="text/javascript">

	$("#cart_btn").click(function() {
		
		$("#formId").attr("action","../my/cart");
		
	});



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
	
	function showModal(event,year,month,date){
		
		event.stopPropagation();
		modalBox.style.display = "block";
		/* <div class="reser_modal_info">
			<div class="reser_modal_title">와그 핑크 바나힐 일일 투어 (다낭 출발)</div>
			<div class="reser_modal_option_selected"><!-- 3.4 진에어 --></div>
			<div class="reser_modal_option_date">2019-12-03</div>
		</div> */
		$('.reser_modal_option_date').html(year+"-"+month+"-"+date);
		
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
	//0이면

		location.href="./info";

})

	var cal=new Date();

	function makeCalendar(){
		$('#showMonth').html(cal.getMonth()+1);
		$('#showYear').html(cal.getFullYear());
		$("#dateBox").html("");
		var tmpCal=new Date(cal.getFullYear(),cal.getMonth(),1);
		var firstDay=tmpCal.getDate();
		var tmpCal2=new Date(cal.getFullYear(),cal.getMonth()+1,0);
		var lastDay=tmpCal2.getDate();
		for(var i=0;i<tmpCal.getDay();i++){
			makeblank();
		}
		for(var i=1;i<lastDay+1;i++){
			makeDate(i);
		}
	}
	
	function makeblank(){
		var divDt=document.createElement("div");
		divDt.innerHTML="";
		divDt.className+="date";
		document.getElementById("dateBox").appendChild(divDt);
	}
	function makeDate(n){
		var divDt=document.createElement("div");
		divDt.innerHTML=n;
		divDt.className+="date";
		//add event
		//element.addEventListener(event, function, useCapture)
		//divDt.addEventListener("click",addActiveClass());
		document.getElementById("dateBox").appendChild(divDt);
		//$(selector).on(event,childSelector,data,function,map)
		$('.reser_calBox').on("click", ".date",function(){
			$('.date').removeClass("date-active");
			$(this).addClass("date-active");
			var tmp=$(this).html();
			choosedDate(tmp);	
		});
	}

	function prevMonth(){
		cal=new Date(cal.getFullYear(),cal.getMonth()-1,cal.getDate());
		makeCalendar();
	}

	function nextMonth(){
		cal=new Date(cal.getFullYear(),cal.getMonth()+1,cal.getDate());
		makeCalendar();
	}
	//window.ready
	$(window).ready(makeCalendar());
	
	//날짜를 먼저 선택해주세요
	if($('.date').hasClass("date-active")==false){
		//reser_option_title
		$('.reser_option_title').html("날짜를 먼저 선택해주세요");
	}
	
	//onclick  class add
	 $('.date').click(function(){
		//alert($('.date').hasClass("date-active"));
		$('.date').removeClass("date-active");
		$(this).addClass("date-active");
		var tmp=$(this).html();
		choosedDate(tmp);
	}); 
	
	function addActiveClass(){
		$('.date').removeClass("date-active");
		$(this).addClass("date-active");
		var tmp=$(this).html();
		choosedDate(tmp);
	} 
	
	function choosedDate(n){
		var year=$('#showYear').html();
		var month=$('#showMonth').html();
		var date=n;
		console.log("choosedDate test year : "+year);
		console.log("choosedDate test month : "+month);
		console.log("choosedDate test date : "+date);
		fillDate(year,month,date);
	}
	
	function fillDate(year,month,date){
		$('.reser_option_selected_date').remove();
		$('.reser_option_title').html("옵션을 선택해주세요");
		var selected_date=document.createElement("div");
		selected_date.innerHTML=year+"-"+month+"-"+date;
		
		selected_date.className+="reser_option_selected_date";
		console.log(selected_date)
		
		$('.reser_option_wrapper').append(selected_date);
		fillOption(year,month,date);
		event.stopPropagation();								
	}
	
	function fillOption(year,month,date){
		$('.reser_option_list').remove();
		event.stopPropagation();
		//var divDt=document.createElement("div");
		//divDt.innerHTML=n;
		//divDt.className+="date";
		//document.getElementById("dateBox").appendChild(divDt);
		var reser_option_list=document.createElement("div");
		var reser_option_item=document.createElement("div");
		var reser_option_item_title=document.createElement("div");	//바나힐 핑크 패키지 투어 (다낭 시내)
		var reser_option_item_price=document.createElement("div");	//34000
		reser_option_item_title.innerHTML="바나힐 핑크 패키지 투어 (다낭 시내)";
		reser_option_item_price.innerHTML="34000";
		
		reser_option_list.className+="reser_option_list";
		reser_option_item.className+="reser_option_item";
		reser_option_item_title.className+="reser_option_item_title";
		reser_option_item_price.className+="reser_option_item_price";
		
		$('.reser_option_wrapper').append(reser_option_list);
		$('.reser_option_list').append(reser_option_item);
		$('.reser_option_item').append(reser_option_item_title);
		$('.reser_option_item').append(reser_option_item_price);
		
		//$('.reser_calBox').on("click", ".date",function(){
		console.log(" **************fillOption()**************");
			console.log("year : "+year);
			console.log("month : "+month);
			console.log("date : "+date);
		$('.reser_option_list').on("click",".reser_option_item",function(){
			console.log("event : "+event);
			console.log("year : "+year);
			console.log("month : "+month);
			console.log("date : "+date);
			showModal(event,year,month,date)});
		}
		/////////////////////////////////////////////////////////////////////////
		//$('.reser_option_list').on("click",".reser_option_item",showModal(event,year,month,date));
		//}
		///////////////////////////////////////////////////////////////////////////
		/* $(document).on("click", '.topic-btn', {'param': 10}, function(event){
		     displayGIF(event.data.param);
		}); */
		
		//<div class="user_num_controll" id="minus"> - </div>
		//<div id="user_num_show">0</div>
		//<div class="user_num_controll" id="plus"> + </div>
		
		function minus(){
			var curNum=0;
			 curNum=$('#user_num_show').html();
			if(curNum<=0){
				$('#user_num_show').html("0");
			}else{
				curNum--;
			}
			$('#user_num_show').html(curNum);
			showTotalPrice();
		}
		
		function plus(){
			var curNum=$('#user_num_show').html();
			curNum++;
			$('#user_num_show').html(curNum);
			showTotalPrice();
		}
		
		function showTotalPrice(){
			var people=$('#user_num_show').html();
			var price=$('.reser_option_item_price').html();
			var totalPrice=people*price;
			var commaNum=numberWithCommas(totalPrice);
			$('#reservation_users_order_total_price').html(commaNum);
			console.log("commaNum type : "+typeof commaNum);
		}
	
		function numberWithCommas(x) {
		    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
		}
</script>
</body>
</html>