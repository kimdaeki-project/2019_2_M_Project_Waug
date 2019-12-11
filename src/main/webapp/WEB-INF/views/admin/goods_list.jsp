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
</head>
<body>

	<div class="container">
		
		<div class="jumbotron page-header">
			<h1>Goods List</h1>
		</div>
		
		<table class="table"  >
			<thead >
				<tr class="info">
					
					<th><input type="checkbox" id="checkAll"></th>
					<th>이미지</th>
					<th>상품명</th>
					<th>도시</th>
					<th>테마</th>
					<th>가격</th>
					<th>할인</th>
					<th>수량</th>
					<th>수정</th>
				</tr>

			</thead>

			<tbody>

				
					<tr class="warning">
						<td><input type="checkbox" class="productCheck product" value=""></td>
						<td></td>
						<td><a href="./productSelect?pro_num="></a></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td><input type="button" value="정보 수정" ></td>
					</tr>

				

			</tbody>
		</table>

		<div >
			<form action="./productList" id="frm">
				<input type="hidden" id="curPage" value="1" name="curPage">
				<select id="kind" name="kind">
					<option id="kt" value="kt">상품</option>
					<option id="kw" value="kw">도시</option>
					<option id="kc" value="kc">테마</option>
				</select> 
				
				<input type="text" id="search" name="search" value="">
				
				<button>검색</button>
			</form>
		</div>

		<div >
			<ul class="pagination">
				
					<li><span id="" class="list">이전</span></li>
				
				
					<li><span id="" class="list"></span></li>
				
				
			</ul>
		</div>
					<button class="btn btn-primary" onclick="location.href='./goods_add'">상품 등록</button>
					<button class="btn btn-danger" id="pro_del">상품 삭제</button>
				
	</div>
	<script type="text/javascript">
	  	
	 	
	  </script>


</body>
</html>