<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<style type="text/css">
*{
	font-family: 'Noto Sans KR', sans-serif;
}
#content{
	width: 100%;
	height: 622px;
	padding-bottom: 260px;
}
.wrapper-page{
width: 100%;
height: 362px;
padding-top: 50px;
}
.container{
	width: 1170px;
	height: 312px;
	margin: auto;
	padding: 0px 15px 0px 15px;
}
.findpwd-content{
width: 570px;
height: 198px;
margin: 57px 85px 57px 285px;
}
.page-title h3{
	font-size: 24px;
	font-weight: bold;
	margin-top: 0px;
	margin-bottom: 0px;
}
.page-title p{
	font-size: 13px;
	margin-top: 5px;
	margin-bottom: 5px;
}
.form-horizontal{
	width: 570px;
	height: 144px;
}
#btn_new_pwd{
	width: 68px;
	height: 34px;
	padding: 8px 22px 8px 22px;
	background: linear-gradient(45deg,rgb(245,3,100) 1%, rgb(172,66,169) 100%);
	color: #ffffff;
	font-size: 13px;
}
</style>
</head>
<body>
<div id="content">
        <div class="wrapper-page">
            <div class="container">
                <div class="findpwd-content">
                    <div class="page-title">
                        <h3>비밀번호 재설정</h3>
                        <p class="desc" style="margin:5px 0;">신규 비밀번호를 입력해 주세요.</p>
                    </div>
                    <div class="form-horizontal">
                    	<form action="password" method="post" id="password">
                    	<input type="hidden" name="m_pk" value="${member.m_pk}">
                        <div class="form-group">
                            <label for="mem_newpwd" class="col-md-3 control-label">신규 비밀번호</label>
                            <div class="col-md-9">
                                <input id="mem_newpwd" type="password" name="pw" placeholder="새 비밀번호(6자 이상 ~12자 이하)" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="mem_newpwd2" class="col-md-3 control-label">비밀번호 확인</label>
                            <div class="col-md-9">
                                <input id="mem_newpwd2" type="password" placeholder="비밀번호를 다시 입력해주세요." required="" class="form-control">
                            </div>
                        </div>
                    	</form>

                        <button id="btn_new_pwd" type="button" class="btn btn-form-submit" data-token="8d6becc80c706dfa365075046615e8fe">설정</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
<script type="text/javascript">
$("#btn_new_pwd").click(function() {
	var pw = $("#mem_newpwd").val();
	var pw2 = $("#mem_newpwd2").val();
	
	if(pw == pw2){
		if(pw.length >5 && pw.length<13){
			$("#password").submit();
		}else{
			alert('비밀번호는 6자~12자 사이로 해주세요');
		}
	}else{
		alert('비밀번호가 일치하지 않습니다.');
	}
	
});

</script>
</body>
</html>