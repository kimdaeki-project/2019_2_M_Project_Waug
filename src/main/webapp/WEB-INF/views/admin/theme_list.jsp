<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="../resources/css/admin.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="wrapper">
<c:import url="../layout/adminNAV.jsp"/>
<div class="mainView col-md-10">
	<div class="col-md-10 container">
		<h3>테마 리스트</h3>
		<form action="theme_delete" method="post" id="delete">	
		<table class="table table-striped"  >
			<thead >
				<tr>
					<th><input type="checkbox" id="checkAll"></th>
					<th>이미지</th>
					<th>테마명</th>
					<th>소제목</th>
					<th>주제</th>
					<th>정보 수정</th>
				</tr>

			</thead>

			<tbody>

				<c:forEach items="${list}" var="vo">
					<tr class="odd">
						<td><input type="checkbox" class="productCheck product" name="t_num" value="${vo.t_num}"></td>
						<td><img src="${vo.t_img}" style="width: 200px; height: 130px;"></td>
						<td>${vo.t_title}</td>
						<td>${vo.t_subtitle}</td>
						<td>${vo.t_subject}</td>
						<td><input type="button" value="정보 수정" class="btn btn-default" onclick="location.href='./theme_update?t_num=${vo.t_num}'"></td>
					</tr>
				</c:forEach>

			</tbody>
		</table>
		</form>
				<div style="margin-top: 30px; margin-bottom: 100px;">
					<button class="btn btn-primary" onclick="location.href='./theme_add'" style="float: right;">상품 등록</button>
					<button class="btn btn-danger" id="pro_del" style="float: right;">상품 삭제</button>
				</div>
				
	</div>
	</div>
	</div>
<script type="text/javascript">
$('#checkAll').click(function(){
	var all=$(this).is(':checked');
	$('.productCheck').prop("checked", all);
});


$('#pro_del').click(function(){
	$('#delete').submit();
});

$('.productCheck').click(function() {
	var ck= true;
	$('.productCheck').each(function() {
	
		if(!$(this).prop("checked")){
			ck=false;
		}
	});

	$('#checkAll').prop("checked",ck);	
});

</script>


</body>
</html>