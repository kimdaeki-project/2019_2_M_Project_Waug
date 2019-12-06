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
					<div class="login-title-text">회원가입</div>
				</div>
				<div class="login-waug-email-box">
					<form action="join" method="POST">
						<input type="email" class="login-form-box" placeholder="이메일" required="required" name="email">
						<input id="pw" type="password" class="login-form-box" placeholder="비밀번호(영문, 숫자, 특수문자 8자리이상)" required="required" name="pw">
						<input id="pw2" type="password" class="login-form-box" placeholder="비밀번호 확인" required="required" name="pw2">
						<input type="text" class="login-form-box" placeholder="이름" required="required" name="name">								
					
						<div style="margin-top: -10px">
							<div style="width: 15px; margin-right: 2px; margin-top: 1px;">
								<input id="autologin" type="checkbox" class="check-box-align" style="margin-top: 3px;">
							</div>
							<div class="sign-up-event-agree-text login-sub-text">이벤트 및 뉴스레터를 이메일로 받아 보겠습니다.</div>
						</div>
						<button type="submit" class="btn btn-join login-form-box login-form-btn">회원가입</button>			
					</form>
					
					
				</div>
				<div class="login-sns-or-box">
					<hr class="login-sns-or-border"><span class="login-sns-or-text">or</span><hr class="login-sns-or-border">
				</div>		
				<div class="btn-login-sns-box login-form-box" id="facebook_login">
					<img alt="" src="https://www.waug.com/images/facebook.svg" class="sns-login-facebook-logo">
					<span class="sns-login-text sns-login-text-facebook">회원가입</span>
				</div>
				<div class="btn-login-sns-box login-form-box" id="kakao_login">
					<img alt="" src="https://www.waug.com/images/kakao.svg" class="sns-login-kakao-logo">
					<span class="sns-login-text sns-login-text-kakao">회원가입</span>
				</div>
				<div class="btn-login-sns-box login-form-box" id="naver_login">
					<img alt="" src="https://www.waug.com/images/naver.svg" class="sns-login-naver-logo">
					<span class="sns-login-text sns-login-text-facebook">회원가입</span>
				</div>
				<div class="btn-login-sns-box login-form-box" id="google_login">
					<img alt="" src="https://www.waug.com/images/google.svg" class="sns-login-google-logo">
					<span class="sns-login-text sns-login-text-facebook">회원가입</span>
				</div>
				<div style="margin-top: -14px">
					<div class="sign-up-check-box">
						<input id="join-agree" type="checkbox" style="margin-top: 17px;">
					</div>
					<div class="sign-up-event-agree-text login-sub-text" style="padding: 15px 5px 0px 5px;">회원가입을 함으로써 와그의 <span class="text-highlight">이용약관</span>
						, <span class="text-highlight">개인정보보호정책</span> 에 동의하시게 됩니다.</div>
				</div>			
			</div>
		</div>
	</div>

	<script type="text/javascript">
		$("#pw").value
	
	</script>
	
</body>
</html>