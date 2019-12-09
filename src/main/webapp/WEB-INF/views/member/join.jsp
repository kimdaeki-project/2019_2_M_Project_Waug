<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width"/>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
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
				<!-- 페이스북 -->
				<span id="status" value="checking..."> </span>
				<fb:login-button scope="public_profile, email" onlogin="checkLoginState();"></fb:login-button>
				<div class="login-sns-or-box">
					<hr class="login-sns-or-border"><span class="login-sns-or-text">or</span><hr class="login-sns-or-border">
				</div>		
				<div class="btn-login-sns-box login-form-box fb-login-button" data-width="" data-size="large" data-button-type="login_with" data-auto-logout-link="false" data-use-continue-as="false"id="facebook_login">
					<img alt="" src="https://www.waug.com/images/facebook.svg" class="sns-login-facebook-logo" onclick="nightDayHandler(this);">
			
					<span class="sns-login-text sns-login-text-facebook">회원가입</span>
					<div id="fb-root" style="margin-top: -35px; margin-left: 70px; opacity: 0;">
						<div class="fb-login-button" data-width="" data-size="large" data-button-type="login_with" data-auto-logout-link="false" data-use-continue-as="false"></div>
						<script async defer crossorigin="anonymous" src="https://connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v5.0&appId=2398490247082536&autoLogAppEvents=1"></script>
					</div>
				</div>
				<!-- 페이스북 끝-->
				<!-- 카카오 -->
				<div  class="btn-login-sns-box login-form-box panel-body" >
					<a id="kakao-login-btn"><img alt="" src="https://www.waug.com/images/kakao.svg" class="sns-login-kakao-logo"></a>
					<span class="sns-login-text sns-login-text-kakao">회원가입</span>
				</div>
				<!-- 카카오 끝 -->
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
		/* 	  카카오 로그인 api */
		 //<![CDATA[
		    // 사용할 앱의 JavaScript 키를 설정해 주세요.
		    Kakao.init('f963d6e33ad4fdf2e7520855d50041bd');
		    // 카카오 로그인 버튼을 생성합니다.
		    Kakao.Auth.createLoginButton({
		      container: '#kakao-login-btn',
		      success: function(authObj) {
		        // 로그인 성공시, API를 호출합니다.
		        Kakao.API.request({
		          url: '/v2/user/me',
		          success: function(res) {
		            console.log(JSON.stringify(res));
		            console.log(res.nickname);
		       		 $.ajax({
			        	type: "GET",
			        	url:"./kakao",
			        	data:{
				        	nickname: res.nickname,
				        	email:res.email
			        	}
			        });
		          },
		          fail: function(error) {
		            alert(JSON.stringify(error));
		          }
		        });
		      },
		      fail: function(err) {
		        alert(JSON.stringify(err));
		      }
		    });
		  //]]>	

		/* 페이스북 로그인 api */
		 function statusChangeCallback(response) {  // Called with the results from FB.getLoginStatus().
			    console.log('statusChangeCallback');
			    console.log(response);                   // The current login status of the person.
			    if (response.status === 'connected') {   // Logged into your webpage and Facebook.
			      testAPI();  
			    
			    } else {                                 // Not logged into your webpage or we are unable to tell.
			      document.getElementById('status').innerHTML = 'Please log ' +
			        'into this webpage.';
			    }
			  }
					
		
		  function checkLoginState() {
			  FB.getLoginStatus(function(response) {
			    statusChangeCallback(response);
			  });
			  
			}
		  
		  window.fbAsyncInit = function() {
			    FB.init({
			      appId      : '2398490247082536',
			      cookie     : true,                     // Enable cookies to allow the server to access the session.
			      xfbml      : true,                     // Parse social plugins on this webpage.
			      version    : 'v5.0'           // Use this Graph API version for this call.
			    });


			    FB.getLoginStatus(function(response) {   // Called after the JS SDK has been initialized.
			      statusChangeCallback(response);        // Returns the login status.
			    });
			  };


		  (function(d, s, id){
		     var js, fjs = d.getElementsByTagName(s)[0];
		     if (d.getElementById(id)) {return;}
		     js = d.createElement(s); js.id = id;
		     js.src = "https://connect.facebook.net/en_US/sdk.js";
		     fjs.parentNode.insertBefore(js, fjs);
		   }(document, 'script', 'facebook-jssdk'));
	
		  FB.getLoginStatus(function(response) {
			    statusChangeCallback(response);
			    console.log(response);
			});
		  

		  function testAPI() {                      // Testing Graph API after login.  See statusChangeCallback() for when this call is made.
			    console.log('Welcome!  Fetching your information.... ');
			    FB.api('/me', function(response) {
			      console.log('Successful login for: ' + response.name);
			      document.getElementById('status').innerHTML =
			        'Thanks for logging in, ' + response.name + '!';
			    });
			    FB.api('/me?fields=id,name,email', function(response) {
			    	 console.log(response);
			    	 console.log(response.name);
			    	 //location.href="facebook?name="+response.name;
			 $.ajax({
			        	type: "GET",
			        	url:"./facebook",
			        	data:{
				        	name: response.name,
				        	email:response.email
			        	}
			        }); 
			    });
			  }

		 
		
	</script>
	
</body>
</html>