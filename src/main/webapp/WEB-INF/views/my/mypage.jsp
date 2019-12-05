<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:import url="../layout/bootstrap.jsp"/>
<link href="../resources/css/mypage.css" rel="stylesheet"> 
<link rel="stylesheet" href="../resources/css/Footer.css">
<link rel="stylesheet" href="../resources/css/CityList.css">
<title>Insert title here</title>
</head>
<body>
<c:import url="../layout/nav.jsp"/>
<c:import url="../layout/CityList.jsp"/>
<div id="content">
	<div class="wrapper-page">
		<div class="row">
			<div class="wrapper-subheader headimage"></div>
		</div>
		<div class="container">
		
			<div class="row">
			
				<c:import url="./mylayout.jsp"></c:import>
				
				<!-- 메인컨텐츠 시작 -->
				<div id="sub-container" class="col-md-9">
					<h3 class="space-5" style="font-weight: bold;">여행자 정보 등록</h3>
					<form id="frm-profile">
						<div class="mypage-picture row">
							<img src="https://d2mgzmtdeipcjp.cloudfront.net/files/member/profile.png" class="user-picture">
							<button type="button" data-toggle="modal" data-target="#modal-set-profile-img" class="btn btn-sm btn-default title">사진 변경</button>
						</div>
						<div class="row">
							<div class="col-md-3">
								<label class="title">이름</label>
								<input type="text" id="name" value="최혜현" class="form-control" required="required">
							</div>			
						</div>
						<div class="row">
							<div class="col-md-3">
								<label class="title">영문 성</label>
								<input type="text" id="e_last_name" name="e_last_name" class="form-control" required="required">
							</div>
							<div class="col-md-3">
								<label class="title">영문 이름</label>
								<input type="text" id="e_first_name" name="e_first_name" class="form-control" required="required">
							</div>
						</div>
						<div class="row">
							<div class="col-md-6">
								<label class="title">이메일</label>
								<input type="email" id="email" name="email" class="form-control" required="required">
							</div>
						</div>
						<div class="row">
							<div class="col-md-6">
								<label class="title">휴대전화번호</label>
								<input type="tel" id="tel" name="tel" class="form-control" required="required">
							</div>
						</div>
						<div class="row">
							<div class="col-md-2">
								<button type="submit" id="btn" class="btn btn-form-submit form-control" style="margin-bottom: 40px;">저장</button>
							</div>
						
						</div>
					</form>
					<div class="row">
						<div class="col-md-6">
							<div data-toggle="modal" data-target="#modal-out-aggrement" class="btn-out" style="cursor: pointer; color: lightgrey; text-decoration: underline; text-align: center;">회원 탈퇴</div>
						</div>
					</div>
				</div>
				<!-- 메인컨텐츠 끝-->
			</div>
			<!-- 전체row끝 -->
		
			<!-- 사진 등록 modal -->
			<div class="modal" id="modal-set-profile-img">
			
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
					<button type="button" class="close btn-pop-close" data-dismiss="modal" aria-label="Close">x</button>
						<h4 class="text-center" style="font-weight: bold;">내 이미지 설정</h4>
						
					</div>
					<div class="modal-body">
						<form id="frm-profile-img">
							<div class="file-wrapper">
								<label class="btn-form-submit outline white-text" for="file_add" style="margin-bottom: 15px;">사진 선택</label>
								<input id="file_add" class="btn-form-submit outline white-text" type="file" name="profile_img">
							</div>
						</form>
						<button id="btn_profile_img_init_update" type="button" class="btn-form-submit outline white-text">기본이미지</button>
					
					</div>
				
				</div>
				
			</div>
			</div>
			<!--사진등록 modal끝 -->
			
			
			<!-- 회원탈퇴 modal -->
			<div class="modal" id="modal-out-aggrement">
			
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
					<button type="button" class="close btn-pop-close" data-dismiss="modal" aria-label="Close">x</button>
						<h4 class="text-center" style="font-weight: bold;">회원 탈퇴</h4>
						
					</div>
					<div class="modal-body">
						
							<div style="font-size: 13px; ">탈퇴 후에는 "chlgpgus57@naver.com"으로 다시 가입할 수 없으며 아이디와 데이터는 복구할 수 없습니다.</div>
							<label>
								
								<div style="margin-top: 10px;">
									<input type="checkbox">
									<p style="float: right; margin-left: 5px;">안내 사항을 모두 확인하였으며, 이에 동의합니다.</p>
								</div>
							</label>
							<div style="margin-left: 340px;">
								<button style="margin-left: auto;" id="btn-out-accept" type="button" class="btn-form-submit outline2 white-text">확인</button>
								<button style="margin-left: 10px;" data-dismiss="modal" type="button" class="btn-form-submit outline2 white-text">다음에 할게요!</button>
								
							</div>
						
					
					</div>
				
				</div>
				
			</div>
			</div>
			<!--사진등록 modal끝 -->
		
		</div>
		<!-- content끝 -->	
	</div>
	<!-- wrapper-page끝 -->

	<!-- footer -->
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

</div>
		
</body>
</html>