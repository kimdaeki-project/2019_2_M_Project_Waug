<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style type="text/css">
  	#img{
  	width: 800px;
  	height: 400px;
  	margin-left: 116px;
  	margin-bottom: 20px;
  	display: block;
  	background-image: url("${dto.t_img}");
  	background-repeat: no-repeat;
  	background-position: center;
  	}
  </style>
</head>
<div class="container">
  <h2>Insert Theme</h2>
  <form class="form-horizontal" action="theme_update" method="post">
  	<input type="hidden" name="t_num" value="${dto.t_num}">
    <div class="form-group">
      <label class="col-sm-2 control-label">TITLE</label>
      <div class="col-sm-10">
        <input class="form-control" id="t_title" type="text" name="t_title" value="${dto.t_title}">
      </div>
    </div>
    <div class="form-group">
      <label class="col-sm-2 control-label">IMG</label>
      <div class="col-sm-10">
        <input class="form-control" id="t_img" type="text" name="t_img" value="${dto.t_img}" placeholder="테마대표이미지 주소를 입력하세요.">
      </div>
    </div>
    <div id="img">
    </div>
    <div class="form-group">
      <label class="col-sm-2 control-label">SUBTITLE</label>
      <div class="col-sm-10">
        <input class="form-control" id="t_subtitle" type="text" name="t_subtitle" value="${dto.t_subtitle}" placeholder="테마부제목을 입력하세요..">
      </div>
    </div>
    <div class="form-group">
      <label class="col-sm-2 control-label">SUBJECT</label>
      <div class="col-sm-10">
        <input class="form-control" id="t_subject" type="text" name="t_subject" value="${dto.t_subject}" placeholder="테마주제를 입력하세요.">
      </div>
    </div>
   		<button class="btn btn-primary" style="float: right;">테마수정</button>
  </form>
</div>
	<script type="text/javascript">
		
		$("#t_img").blur(function() {
			var url = $(this).val();
			
			$("#img").css({"background":"url("+url+")", 'background-repeat' : 'no-repeat', 'background-position':'center center'});
			$("#img").css("display","block");
			
		});
	</script>
</body>
</html>