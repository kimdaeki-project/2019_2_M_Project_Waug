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
	
	<div class="col-md-10">
	<h3>상품 리스트</h3>
	<form action="goods_delete" method="post" id="delete">	
		<table class="table table-striped"  >
			<thead >
				<tr>
					<th>NO</th>
					<th>상품번호<input type="checkbox" id="checkAll"></th>
					<th>이미지</th>
					<th>상품명</th>
					<th>도시</th>
					<th>테마</th>
					<th>카테고리</th>
					<th>가격</th>
					<th>할인</th>
					<th>수량</th>
					<th>수정</th>
				</tr>

			</thead>

			<tbody>

				<c:forEach items="${list}" var="vo" varStatus="status">
					<tr>
						<td>${status.count}</td>
						<td><input type="checkbox" class="productCheck" value="${vo.goods_num}" name="goods_num">${vo.goods_num}</td>
						<td><img src="${vo.img}" style="width: 200px; height: 130px;"></td>
						<td>${vo.title}</td>
						<td>${vo.city_name}</td>
						<td>${vo.t_title}</td>
						<td>${vo.cate_name}</td>
						<td>${vo.price}</td>
						<td>${vo.discount}</td>
						<td>${vo.qtt}</td>
						<td><input type="button" value="정보 수정" onclick="location.href='./goods_update?goods_num=${vo.goods_num}'" ></td>
					</tr>
				</c:forEach>

			</tbody>
		</table>
</form>
		<div >
			<form action="./goods_list" id="frm">
				<input type="hidden" id="curPage" value="1" name="curPage">
				<select id="kind" name="kind">
					<option id="good" value="good">상품명</option>
					<option id="city" value="city">도시</option>
					<option id="theme" value="theme">테마</option>
					<option id="cate" value="cate">카테고리</option>
				</select> 
				
				<input type="text" id="search" name="search" value="${pager.search}">
				
				<button>검색</button>
			</form>
		</div>

		<div style="margin: auto;">
			<ul class="pagination">
				<c:if test="${pager.curBlock gt 1}">
					<li><span class="list" id="${pager.startNum-1}">이전</span></li>
				</c:if>
				<c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
					<li><span class="list" id="${i}">${i}</span></li>
				</c:forEach>
				<c:if test="${pager.curBlock ne pager.totalBlock}">
					<li><span class="list" id="${pager.lastNum+1}">다음</span></li>
				</c:if>
			</ul>
		</div>
					<button class="btn btn-default" onclick="location.href='./goods_add'">상품 등록</button>
					<button class="btn btn-danger" id="pro_del">상품 삭제</button>
				
	</div>
</div>
</div>
	<script type="text/javascript">
	var kind = '${pager.kind}';
	if(kind==''){
		kind='good';
	}
	$("#"+kind).prop("selected", true);
	

	$(".list").click(function() {
		$("#curPage").val($(this).attr("id"))
		$("#frm").submit();
	});
	

	
	
	//전체 체크시
	$('#checkAll').click(function(){
		var all=$(this).is(':checked');
		$('.productCheck').prop("checked", all);
	});
	
	$('#pro_del').click(function(){
		$('#delete').submit();
	})
	
	//전체 체크 감지해서 해제
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