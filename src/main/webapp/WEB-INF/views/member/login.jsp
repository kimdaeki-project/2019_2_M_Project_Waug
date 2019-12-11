<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:import url="../layout/bootstrap.jsp"/>
<link href="../resources/css/all.css" rel="stylesheet"> 
<link href="../resources/css/member.css" rel="stylesheet"> 
<title>Insert title here</title>
</head>
<body>
<c:import url="../layout/nav.jsp"/>
	<div id="wrapper">
		<div class="login-content-box">
			<div class="login-content-info">
				<div class="login-content-top-box">
					<div class="login-title-text">로그인</div>
				</div>
				<div class="login-waug-email-box">
					<form action="login" method="POST">
						<input type="email" class="login-form-box" placeholder="이메일 주소" required="required" name="email">
						<input type="password" class="login-form-box" placeholder="비밀번호" required="required" name="pw">
						<button type="submit" class="btn-join login-form-box login-form-btn" >로그인</button>
					</form>
					<div class="form-inline login-rememberme login-sub-text">
						<div style="width: 15px; margin-right: 2px; margin-top: 1px;">
							<input id="autologin" type="checkbox" class="check-box-align" style="margin-top: 3px;">
						</div>
						<div class="auto-login-align-box">자동로그인</div>
						<div class="login-sub-text auto-login-align-box">
							<span style="paggind: 0 5px;">·</span>
							<a id="forgetpwd" data-toggle="modal" data-target="#forget_pwd" name="btn-find-pwd" class="underline">비밀번호 찾기</a>
						</div>
					</div>
					
				</div>
				<div class="login-sns-or-box">
					<hr class="login-sns-or-border"><span class="login-sns-or-text">or</span><hr class="login-sns-or-border">
				</div>		
				<div class="btn-login-sns-box login-form-box" id="facebook_login">
					<img alt="" src="https://www.waug.com/images/facebook.svg" class="sns-login-facebook-logo">
					<span class="sns-login-text sns-login-text-facebook">로그인</span>
				</div>
				<div class="btn-login-sns-box login-form-box" id="kakao_login">
					<img alt="" src="https://www.waug.com/images/kakao.svg" class="sns-login-kakao-logo">
					<span class="sns-login-text sns-login-text-kakao">로그인</span>
				</div>
				<div class="btn-login-sns-box login-form-box" id="naver_login">
					<img alt="" src="https://www.waug.com/images/naver.svg" class="sns-login-naver-logo">
					<span class="sns-login-text sns-login-text-facebook">로그인</span>
				</div>
				<div class="btn-login-sns-box login-form-box" id="google_login">
					<img alt="" src="https://www.waug.com/images/google.svg" class="sns-login-google-logo">
					<span class="sns-login-text sns-login-text-facebook">로그인</span>
				</div>
				<div class="sign-up-box">
					<span class="login-sub-text">아직 와그의 멤버가 아니세요?</span>
					<a class="sign-up underline login-sub-text text-highlight" href="./join" style="text-decoration: none;">회원가입</a>
				</div>			
			</div>
		</div>
	</div>

	<!-- 비밀번호찾기 모달 -->
	<div id="forget_pwd" class="modal in" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="login-container">
			<div class="login-content-box" style="background: none;">
				<div class="modal-content wrapper-sign wrapper-find-pwd pwd-content-box">
					<button type="button" class="login-modal-close-btn global-modal-cancel-btn" data-dismiss="modal" aria-label="Close">
						<img src="https://www.waug.com/images/close.svg" class="global-modal-cancel-ic">
					</button>
					<div class="modal-body">
						<p class="notice pwd-notice">가입하셨던 이메일 주소를 입력하시면 비밀번호 재설정 URL을 전송해드립니다.</p>
						<input type="email" class="login-form-box" placeholder="이메일 주소">
						<button type="button" class="btn btn-find-pwd login-form-box">비밀번호 재설정 URL 보내기</button>
					</div>
				</div>
			</div>
		</div>
	
	
	</div>
	
</body>
</html>