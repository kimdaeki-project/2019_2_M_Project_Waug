<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:import url="../layout/bootstrap.jsp"/>
<link href="../resources/css/mypage.css" rel="stylesheet"> 
<title>Insert title here</title>
</head>
<body>
<c:import url="../layout/nav.jsp"/>


<div id="content">
	<div class="wrapper-page">
		<div class="row">
			<div class="wrapper-subheader headimage"></div>
		</div>
		<div class="container">
		
			<div class="row">
				<c:import url="./mylayout.jsp"/>
					<div id="sub-container" class="col-md-9">
						<h3 class="space-5" style="font-weight: bold;">장바구니</h3>
						
						<div class="row" style="margin-left: 0">
							<p style="display: block;">* 예약일 만료/판매 종료/매진 상품에 해당되는 경우 장바구니에서 자동으로 삭제됩니다.</p>
							<table class="table-hover mypage-list">
								<thead>
									<tr>
										<th colspan="3">상품</th>
										<th class="col-xs-2">사용 예정일</th>
										<th class="col-xs-4">옵션 및 수량</th>
										<th class="col-xs-2">비용</th>
									</tr>
								
								</thead>
								<tbody>
									<tr>
										<td class="text-center" colspan="6">장바구니에 상품이 없습니다.</td>
									</tr>
								</tbody>
							</table>
							<!-- 테이블 끝 -->
							<div class="text-right">
								<div class="order-total-price" >
									총
									<span>￦ 0</span>
								</div>
								<div class="i-checks select-all">
									<label>
									<div style="padding-top: 1px; float: left;">전체 선택 / 해제</div>
									<div id="check_box" class="icheckbox_flat-pink">
										<input type="checkbox" style="opacity: 0; width: 100%; height: 100%;">
									</div>
									</label>
								
								</div>
							</div>
							
							<div class="form-button-wrapper">
								<button type="button" class="btn-form-cancel">선택 삭제</button>
								<button type="button" class="btn-form-submit">선택 구매</button>
							</div>
							
							
						</div>
					</div>
			</div>
		</div>
		</div>
		</div>	

	<script type="text/javascript">
		$("#check_box").click(function() {
			
			$(".icheckbox_flat-pink").toggleClass("check-img");
		});
	</script>
</body>
</html>