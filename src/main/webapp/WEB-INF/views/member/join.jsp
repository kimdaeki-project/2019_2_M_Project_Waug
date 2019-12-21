<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width"/>
<meta name="google-signin-client_id" content="485790286218-oackp6vpu1235mcaj7n91r4fnd5kkkk1.apps.googleusercontent.com">
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<script src="https://apis.google.com/js/platform.js" async defer></script>
<script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v5.0&appId=2398490247082536&autoLogAppEvents=1"></script>
<c:import url="../layout/bootstrap.jsp"/>
<link href="../resources/css/all.css" rel="stylesheet"> 
<link href="../resources/css/member.css" rel="stylesheet"> 
<title>Insert title here</title>
<style type="text/css">


.fb_iframe_widget iframe {
    opacity: 0;
}
.fb_iframe_widget {
  background-image: url(https://www.waug.com/images/facebook.svg);
  background-repeat: no-repeat; 

}
#kakao-login-btn{
   opacity: 0;
   
}
.sns-login-kakao-logo{
   position: relative;
   cursor: pointer;
   left: -30px;
}

</style>
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

				
				<!-- 페이스북 -->	
				<div class="btn-login-sns-box login-form-box fb-login-button" data-width="" data-size="large" 
				data-button-type="login_with" data-auto-logout-link="false" data-use-continue-as="false"id="facebook_login">
					<div style="margin-top: 8px;  float: left; margin-left: 115px;">
						<fb:login-button scope="public_profile, email" onlogin="checkLoginState();" id="fb-btn" class="sns-login-facebook-logo">
						</fb:login-button> 
					</div>
					<span class="sns-login-text sns-login-text-facebook" style="float: left; margin-left: 5px;">회원가입</span>

				</div>
				<!-- 페이스북 끝-->
				<!-- 카카오 -->
				<div  class="btn-login-sns-box login-form-box panel-body" >

					<a id="kakao-login-btn"></a><img src="https://www.waug.com/images/kakao.svg" class="sns-login-kakao-logo">
					<span class="sns-login-text sns-login-text-kakao" style="position: relative; left: -30px;">회원가입</span>

				</div>
				<!-- 카카오 끝 -->
				<!-- 네이버 -->
				<div class="btn-login-sns-box login-form-box" id="naverIdlogin">
					<a id="naverIdLogin_loginButton" href="#">
					<img alt="" src="https://www.waug.com/images/naver.svg" class="sns-login-naver-logo">
					<span class="sns-login-text sns-login-text-facebook">회원가입</span>
					</a>
				</div>
				<!-- 구글 -->
				<div class="btn-login-sns-box login-form-box" id="google_login">
				<!-- <div class="g-signin2" data-onsuccess="onSignIn"></div> -->
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
		<a href="#" onclick="fb_login();"><img src="images/fb_login_awesome.jpg" border="0" alt=""></a>
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
		            console.log(res.properties.nickname);
		            console.log(res.kakao_account.email);
		       		 $.ajax({
			        	type: "GET",
			        	url:"./kakao",
			        	data:{
				        	nickname: res.properties.nickname,
				        	email:res.kakao_account.email
			        	}, 
			        	success : function(result)
			        	{
			        	  alert(res.properties.nickname+'회원님 환영합니다!');    
			        	},
			        	error: function(result) {
						  alert('이미 가입된 이메일입니다.');
						},
						complete : function() {
							location.href="../";
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
			$(".sns-login-kakao-logo").click(function() {
		         $("#kakao-login-btn").click();
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
	

		  function testAPI() {                      // Testing Graph API after login.  See statusChangeCallback() for when this call is made.
			    FB.api('/me', function(response) {
			      console.log('Successful login for: ' + response.name);

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
			        	},
			        	success : function(result)
			        	{
			        	  alert(response.name+'회원님 환영합니다!');    
			        	},
			        	error: function(result) {
						  alert('이미 가입된 이메일입니다.');
						},
						complete : function() {
							location.href="../";
						}
		       		 
			 
			        }); 
			    });
			  }

		 
		
	</script>
	
</body>
</html>