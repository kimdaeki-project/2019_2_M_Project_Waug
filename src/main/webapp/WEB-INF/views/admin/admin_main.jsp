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
 <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
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

</style>
</head>
<body>
<div class="wrapper">
<c:import url="../layout/adminNAV.jsp"/>
<div class="mainView" style="background:tomato;">
	<div class="width1600px" style="border:1px solid gold;">
		<div class="row">
			<div class="col_4 gold">
				<div id="admin_backImg_member"></div>
				member<br>
				<b>number of member</b>admin_backImg_goods
			</div>
			<div class="col_4">
				<div id="admin_backImg_goods"></div>
				goods<br>
				<b>number of goods</b>
			</div>
			<div class="col_4">
				<div id="admin_backImg_reservation"></div>
				reservation<br>
				<b>number of reservation</b>
			</div>
			<div class="col_4">
				<div id="admin_backImg_sales"></div>
				sales<br>
				<b>number of sales</b>
			</div>
		</div>
		<div class="row">
			<div class="graph">
				another row here!!!
				 <div id="curve_chart" style="width: 900px; height: 500px"></div>
			</div>
		</div>
	</div>
</div>
</div>

<p>http://thememinister.com/adminpage/theme/adminpage_rtl_v1.0/index.html</p>
<input type="text" value="${res_4}" id="res_4">
<input type="text" value="${res_3}" id="res_3">
<input type="text" value="${res_2}" id="res_2">
<input type="text" value="${res_1}" id="res_1">
<input type="text" value="${res_0}" id="res_0" >

 
<script type="text/javascript">
var res_4=$('#res_4').val();
var res_3=$('#res_3').val();
var res_2=$('#res_2').val();
var res_1=$('#res_1').val();
var res_0=$('#res_0').val();

      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Year', 'Sales', 'Expenses'],
          ['20',  1000,      400],
          ['21',  1170,      460],
          ['22',  660,       1120],
          ['24',  1030,      540]
        ]);

        var options = {
          title: 'Company Performance',
          curveType: 'function',
          legend: { position: 'bottom' }
        };

        var chart = new google.visualization.LineChart(document.getElementById('curve_chart'));

        chart.draw(data, options);
      }
    </script>
</body>
</html>