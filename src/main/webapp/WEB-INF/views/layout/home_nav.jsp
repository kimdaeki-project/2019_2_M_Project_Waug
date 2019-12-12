<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="${pageContext.request.contextPath}/resources/css/homenav.css" rel="stylesheet"> 
<link href="${pageContext.request.contextPath}/resources/css/all.css" rel="stylesheet"> 
<link href="${pageContext.request.contextPath}/resources/css/CityList.css" rel="stylesheet">
<title>Insert title here</title>
</head>
<body>
	<div class="nav-container">
		<div class="nav-wrapper">
			<div class="nav-content">
				<div class="nav-logo-container">
					<div class="nav-logo">
						<a href="${pageContext.request.contextPath}">
						<img class="logo" alt="logo" src="https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15680246797940.svg">
						</a>
					</div>
					
				</div>
		
				<div class="nav-sub-menu-wrapper">
					<div id="change" class="nav-sub-menu-item onclick-cursor-pointer">KRW 대한민국 원(￦)
					<img src="https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15680884125981.svg" class="more-icon more-icon-toggle">
					</div>
				<c:if test="${not empty sessionScope.memberVO}">
					<div class="nav-my-page nav-sub-menu-item onclick-cursor-pointer"><a href="${pageContext.request.contextPath}/my/mypage">내 정보</a></div>
					<div class="nav-cart nav-sub-menu-item onclick-cursor-pointer"><a href="${pageContext.request.contextPath}/my/cart">장바구니</a></div>
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
    
    $(document).scroll(function(){
        if($(document).scrollTop()<650){
           $('.nav-wrapper').removeClass('nav_toggle');
           $('.logo').attr("src","https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15680246797940.svg");
           $('.more-icon').attr("src","https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15680884125981.svg");
        }
        else{
           $('.nav-wrapper').addClass('nav_toggle');
           console.log("yyyyyyyyyyyyyyy");	
           $('.logo').attr("src","https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15504566986967.png");
           $('.more-icon').attr("src","https://d2mgzmtdeipcjp.cloudfront.net/files/upload/15680884525623.svg");

        }
     });
	
	</script>
</body>
</html>