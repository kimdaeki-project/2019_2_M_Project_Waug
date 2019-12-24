<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
 <script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="../resources/css/admin.css">
<link
	href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">

<style type="text/css">
a{
text-decoration: none;
}
a:hover {
	text-decoration: none;
	color: #ffffff;
}
.admin_a:hover{
	color: #2e6da3;
}

</style>
</head>
<body>
<div class="wrapper">
<c:import url="../layout/adminNAV.jsp"/>
<div class="mainView">
	<div class="width1600px" >
		<div class="row">
			<div class="col_4">
				<div id="admin_backImg_member"></div>
				member<br>
				<b>${topInfo[0]}</b>
			</div>
			<div class="col_4">
				<div id="admin_backImg_goods"></div>
				goods<br>
				<b>${topInfo[1]}</b>
			</div>
			<div class="col_4">
				<div id="admin_backImg_reservation"></div>
				reservation<br>
				<b>${topInfo[2]}</b>
			</div>
			<div class="col_4">
				<div id="admin_backImg_sales"></div>
				sales<br>
				<b>${topInfo[3]}</b>
			</div>
		</div>
		<div class="row">
			<div class="graph">
			<canvas id="myChart"></canvas> 
			</div>
		</div>
		<div class="row">
			<div class="col-lg-6">
			<h2>인기상품</h2>
				<ul class="list-group">
					 <c:forEach items="${goods5}" var="goods">
  						<li class="list-group-item"><a href="../goods/good_page?goods_num=${goods}" class="admin_a">${goods}</a></li>
  					</c:forEach> 
  					
  				</ul>
			</div>
			<div class="col-lg-6" >
			<h2>인기도시</h2>
				<ul class="list-group">
					<c:forEach items="${city5}" var="city">
  						<li class="list-group-item">${city}</li>
  					</c:forEach>
  				</ul>
			</div>
			
		</div>
	</div>
</div>
</div>

<input type="text" value="${res_4}" id="res_4" hidden="hidden">
<input type="text" value="${res_3}" id="res_3" hidden="hidden">
<input type="text" value="${res_2}" id="res_2" hidden="hidden">
<input type="text" value="${res_1}" id="res_1" hidden="hidden">
<input type="text" value="${res_0}" id="res_0"  hidden="hidden">

 <script type="text/javascript">
var cal=new Date();
 
var res_4=$('#res_4').val();
var res_3=$('#res_3').val();
var res_2=$('#res_2').val();
var res_1=$('#res_1').val();
var res_0=$('#res_0').val();
//ar tmpCal=new Date(cal.getFullYear(),cal.getMonth(),1);
 var ctx = document.getElementById('myChart').getContext('2d');
 var chart = new Chart(ctx, {
     // The type of chart we want to create
     type: 'line',

     // The data for our dataset
     data: {
         labels: [cal.getDate()-4, cal.getDate()-3, cal.getDate()-2, cal.getDate()-1, cal.getDate()-0],
         datasets: [{
             label: 'SALE',
             backgroundColor: 'rgba(236, 210, 227, 0.5)',
             borderColor: '#a21f6f',
             data: [res_4, res_3,res_2, res_1, res_0]
         }]
     },

     // Configuration options go here
     options: {}
 });
 </script>

</body>
</html>