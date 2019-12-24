<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="${pageContext.request.contextPath}/resources/css/good_nav.css" rel="stylesheet"> 
<link href="${pageContext.request.contextPath}/resources/css/all.css" rel="stylesheet"> 
<link href="${pageContext.request.contextPath}/resources/css/CityList.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<title>Insert title here</title>
</head>
<body>
	<div class="nav-container">
		<div class="nav-wrapper nav-transparent-wrapper">
			<div class="nav-content">
				<div class="nav-logo-container">
					<div class="nav-logo">
						<a href="${pageContext.request.contextPath}"><img class="logo" alt="logo" src="https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15680246797940.svg"></a>
					</div>
					
					<div id="myBtn" class="nav-more-city nav-sub-menu-item" style="cursor: pointer; color: white;">다른 도시 보기
						<img src="https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15680884125981.svg" class="more-icon">
					</div>
							
					<div class="popup-city">
						<div class="popup-background">
							<div class="continent-tap">
							</div>
						</div>
					</div>	
				</div>
		
				<div class="nav-sub-menu-wrapper">
					<div id="change" class="nav-sub-menu-item onclick-cursor-pointer">KRW 대한민국 원(￦)
					<img src="https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15680884125981.svg" class="more-icon">
					</div>
				<c:if test="${not empty sessionScope.memberVO}">
					<c:choose>
						<c:when test="${memberVO.m_pk eq 'w_b@b.com'}">
							<div class="nav-my-page nav-sub-menu-item onclick-cursor-pointer"><a href="${pageContext.request.contextPath}/admin/admin_main">관리자페이지</a></div>
						</c:when>
						<c:otherwise>
							<div class="nav-my-page nav-sub-menu-item onclick-cursor-pointer"><a href="${pageContext.request.contextPath}/my/mypage">내 정보</a></div>
							<div class="nav-cart nav-sub-menu-item onclick-cursor-pointer"><a href="${pageContext.request.contextPath}/my/cart">장바구니</a></div>
						</c:otherwise>
					</c:choose>
					
					<div class="nav-logout-btn nav-sub-menu-item onclick-cursor-pointer"><a href="${pageContext.request.contextPath}/member/logout">로그아웃</a></div>
				</c:if>
				<c:if test="${empty sessionScope.memberVO}">
					<div class="nav-login-btn nav-sub-menu-item onclick-cursor-pointer"><a href="${pageContext.request.contextPath}/member/login">로그인</a></div>
				</c:if>
				</div>
			</div>
		</div>
	
	</div>
	<script type="text/javascript">
	
	/* city list 모달 */
    // Get the modal
    var modal = document.getElementById("myModal");
    // Get the button that opens the modal
    var btn = document.getElementById("myBtn");
    // When the user clicks the button, open the modal 
    btn.onclick = function() {
       modal.style.display = "block";
    }
    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function(event) {
       if (event.target == modal) {
          modal.style.display = "none";
       }
    }
    $(".con").click(function() {
       $(".continent-item").removeClass("active-continent");
       $(".continent-text").removeClass("active");
       $(this).parent().parent().addClass("active-continent");
       $(this).parent().addClass("active");
    });
	
	
	</script>
</body>
</html>