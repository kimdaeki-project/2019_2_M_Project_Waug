<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="${pageContext.request.contextPath}/resources/css/nav.css" rel="stylesheet"> 
<link href="${pageContext.request.contextPath}/resources/css/order.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/CityList.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/Footer.css" rel="stylesheet">
<c:import url="../layout/bootstrap.jsp"/>
<title>Insert title here</title>
<style type="text/css">
 a{
 	text-decoration: none;
 }

</style>
</head>
<body>
<c:import url="../layout/nav.jsp"/>
<c:import url="../layout/CityList.jsp"/>
	<div id = "event-wrapper">
		<div id= "event-content">
			<img src="https://d2mgzmtdeipcjp.cloudfront.net/files/banner/2019/11/29/15750359129781.png">
			<div class="event-content-button-content" style="cursor: default; display: block;position: relative;">
				<img alt="" src="https://d2mgzmtdeipcjp.cloudfront.net/files/banner/2019/11/29/15750348009422.png">
				<a class="event-content-button" href="../my/couponAdd?c_code=88COUPON" style="height: 100%; left: 56.2%; top: 0%; width: 7.5%; position: absolute; cursor: pointer;"></a>
			</div>
			<img alt="" src="https://d2mgzmtdeipcjp.cloudfront.net/files/banner/2019/11/29/15750348127949.png">
		
			<div class="event-content-button-content" style="cursor: default; display: block;position: relative;">
				<img alt="" src="https://d2mgzmtdeipcjp.cloudfront.net/files/banner/2019/11/29/15750348305813.png">
				<a class="event-content-button" href="../my/couponAdd?c_code=11COUPON" style="height: 100%; left: 56.2%; top: 0%; width: 7.5%; position: absolute; cursor: pointer;"></a>
			</div>
			<img alt="" src="https://d2mgzmtdeipcjp.cloudfront.net/files/banner/2019/11/29/15750348127949.png">
			<div style="background-color: #ECECEC; padding-bottom: 50px;">
				<p style="text-align: center; color: gray;">※ 일부 상품은 쿠폰 적용에서 제외 될 수 있습니다.</p>
			</div>
			
		
		</div>
		
	</div>
	<c:import url="../layout/Footer.jsp"/>
<script type="text/javascript">

/* 모달 */
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