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
	<form action="info" id = "formId" method="POST">
	<div id="reser_modal">
		<div class="reser_modal_wrapper">
			<span id="reser_modal_close">&times;</span>
			 <input type="hidden" name="goods_num" value="${goods.goods_num}" > 
			<div class="reser_modal_info">
				<div class="reser_modal_tile">${goods.title}</div>
				<div class="reser_modal_option_selected"><!-- 3.4 진에어 --></div>
				<div class="reser_modal_option_date">2019-12-03</div>
			</div>
		
		
			<select class="credit_select" id="checkOptionTime" name="o_time">

						<option value="0" >시간을 선택해 주세요</option>
					<c:forEach  var="i" begin="1" end="23">
						<option>${i}:00~${i+1}:00</option>
					</c:forEach>

			</select>
			<br><br>
			<div class="reser_numberOfUserBox">
				<div class="reser_user_adult">성인</div>
				<div class="reser_user_number">
					<div class="user_num_controll" id="minus" onclick="minus()"> - </div>
					<div id="user_num_show"></div>
					<div class="user_num_controll" id="plus" onclick="plus()"> + </div>
				</div>
			</div>
			<div class="reservation_btn_wrapper">
			<div id="reservation_users_order_total_price">TOTAL PRICE</div>
				<input type="button"  id="cart_btn" value="장바구니">
				<input type="button"   id="reservation_btn" value="예약하기">
			</div>
		</div>
	</div>
	<input type="text" id="people" name="o_people" value="0" hidden="hidden">
	<input type="text" id="people_forInfo" name="people" hidden="hidden">
	<!-- modal -->
	<div class="reser-flex-box">
		<div class="reser_title_wrapper">
			<div class="reser_title">
				${goods.title}
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
				<div class="reser_option_selected_date" >2020-02-08aaa</div>
				<input type="text" value="">
				<div class="reser_option_list">
					<div class="reser_option_item">
						<div class="reser_option_item_title">${goods.title}</div>
						<div class="reser_option_item_price">34000HHHHHaaa</div>
					</div>
				</div>
			</div>
		</div>
		</div>
	</div>
	<input type="text" value="${goods.goods_num}" id="goodsNum" name="goods_num" hidden="hidden">
	<input type="text" value="${goods.title}" id="goodsTitle" name="title" hidden="hidden">
	<input type="text" value="${goods.discount}" id="goodsPrice" name="discount" hidden="hidden">
	<input type="date" value="${goods.able}" id="goodsAble" name="able" hidden="hidden">
	<input type="date" id="date1" name="o_date">
<!-- 	<input type="text" id="time1" name="o_time"> -->
	</form>
</div>


<script type="text/javascript">
	//장바구니에 상품넣기
	$("#cart_btn").click(function() {
		$("#formId").attr("action","../my/cart");
		$("#formId").submit();
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
		document.getElementById("date1").value = year+"-"+month+"-"+date;
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
		reser_option_item_title.innerHTML=$('#goodsTitle').val();
		reser_option_item_price.innerHTML=$('#goodsPrice').val();;
		
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
			 curNum=$('#people').val();
			if(curNum<=0){
				$('#people').val(0);				///문제될시 타입 확인
			}else{
				curNum--;
			}
			$('#people').val(curNum);
			$('#user_num_show').html($('#people').val());
			showTotalPrice();
		}
		
		function plus(){
			var curNum=$('#people').val();
			curNum++;
			$('#people').val(curNum);
			$('#user_num_show').html($('#people').val());
			showTotalPrice();
		}
		
		function showTotalPrice(){
			var people=$('#people').val();
			var price=$('#goodsPrice').val();
			var totalPrice=people*price;
			var commaNum=numberWithCommas(totalPrice);
			$('#people_forInfo').val(people);
			$('#reservation_users_order_total_price').html(commaNum);
			console.log("commaNum type : "+typeof commaNum);
		}
	
		function numberWithCommas(x) {
		    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
		}
		//flag check
		var checkPeople=false;		
		var checkOptionTime=false;
		
		
		
		$('#reservation_btn').click(function(){
			console.log($('#checkOptionTime').val());
			console.log("typeof"+typeof $('#checkOptionTime').val());
			console.log("############################");
			console.log($('#people').val());
		
			if($('#checkOptionTime').val()!="0"){
				checkOptionTime=true;
			}
			if($('#people').val()!=0){
				checkPeople=true;
			}
			if(checkOptionTime&&checkPeople){
				$("#formId").submit();
			}
			else{
				alert('모두 선택해 주세요');
			}
		});
</script>
</body>
</html>