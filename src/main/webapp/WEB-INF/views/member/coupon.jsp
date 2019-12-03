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
						<h3 class="space-5" style="font-weight: bold;">내 쿠폰</h3>
						
						<div class="row">
							<a class="btn col-xs-6 tab btn-my-coupon-list active">사용 가능 쿠폰(
								<span>3</span>
								)
							</a>	
							<a class="btn col-xs-6 tab btn-my-coupon-list active">사용/만료 쿠폰(
								<span>1</span>
								)
							</a>	
						</div>
						<form action="">
							<div class="row box-gray">
								<div class="col-xs-10">
									<input type="text" placeholder="쿠폰 코드를 입력해주세요." class="form-control" required="required">
								</div>
								<div class="col-xs-2">
									<button type="submit" id="btn-form-submit"class="form-control" style="white-space: nowrap;">쿠폰등록</button>
								</div>
							</div>
						</form>
						<div class="row">
							<table class="table-hover mypage-list">
								<thead>
									<tr>
										<th>쿠폰명</th>
										<th>쿠폰코드</th>
										<th>할인금액</th>
										<th>유효기간</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="col-xs-3 text-center">바티칸 투어 추가 할인</td>
										<td class="col-xs-2 text-center">VATICAN</td>
										<td class="col-xs-2 text-center">30% 할인</td>
										<td class="col-xs-3 text-center">2019.12.31까지</td>
									</tr>
								</tbody>
							</table>
						</div>
					<!-- paging 시작 -->
					<div class="row">
						<div class="page-navigation">
							<div class="btn-group">
								<a class="btn">≪</a>
								<a class="btn">＜</a>
								<a class="btn active" id="pagenum">1</a>
								<a class="btn">＞</a>
								<a class="btn">≫</a>
							</div>
						</div>
					</div>
					<!-- paging 끝 -->
					<div>
					※사용/만료 쿠폰은 사용 완료일 또는 유효기간 종료일로부터 6개월 후 까지 노출됩니다.
					</div>
					</div>

			</div>
		</div>
		</div>
		</div>	

</body>
</html>