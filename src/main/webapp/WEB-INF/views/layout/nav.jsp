<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="../resources/css/nav.css" rel="stylesheet"> 
<link href="../resources/css/all.css" rel="stylesheet"> 
<c:import url="../layout/bootstrap.jsp"/>
<title>Insert title here</title>
</head>
<body>
	<div class="nav-container">
		<div class="nav-wrapper nav-transparent-wrapper">
			<div class="nav-content">
				<div class="nav-logo-container">
					<div class="nav-logo">
						<a href="../"><img class="logo" alt="logo" src="https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15504566986967.png"></a>
					</div>
					
					<div class="nav-more-city nav-sub-menu-item"><a>다른 도시 보기</a></div>		
					
					<div class="popup-city">
						<div class="popup-background">
							<div class="continent-tap">
								
							
							
							</div>
						</div>
					
					
					</div>	
				</div>
		
				<div class="nav-sub-menu-wrapper">
					<div id="change" class="nav-sub-menu-item onclick-cursor-pointer">KRW 대한민국 원(\)</div>
				
					<div class="nav-my-page nav-sub-menu-item onclick-cursor-pointer"><a href="../member/mypage">내 정보</a></div>
					<div class="nav-cart nav-sub-menu-item onclick-cursor-pointer"><a>장바구니 (0)</a></div>
					<div class="nav-logout-btn nav-sub-menu-item onclick-cursor-pointer"><a>로그아웃</a></div>
					<div class="nav-login-btn nav-sub-menu-item onclick-cursor-pointer">로그인</div>

				</div>
			</div>
		</div>
	
	</div>
	
	
</body>
</html>