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
			<h1>Theme List</h1>
		</div>
		
		<table class="table"  >
			<thead >
				<tr class="info">
					<th><input type="checkbox" id="checkAll"></th>
					<th>이미지</th>
					<th>테마명</th>
					<th>소제목</th>
					<th>주제</th>
				</tr>

			</thead>

			<tbody>

				<c:forEach items="${list}" var="vo">
					<tr class="warning">
						<td><input type="checkbox" class="productCheck product" value=""></td>
						<td><img src="${vo.t_img}" style="width: 200px; height: 130px;"></td>
						<td>${vo.t_title}</td>
						<td>${vo.t_subtitle}</td>
						<td>${vo.t_subject}</td>

						<td><input type="button" value="정보 수정" ></td>
					</tr>
				</c:forEach>

			</tbody>
		</table>
				<div style="margin-top: 30px; margin-bottom: 100px;">
					<button class="btn btn-primary" onclick="location.href='./theme_add'" style="float: right;">상품 등록</button>
					<button class="btn btn-danger" id="pro_del" style="float: right;">상품 삭제</button>
				</div>
				
	</div>



</body>
</html>