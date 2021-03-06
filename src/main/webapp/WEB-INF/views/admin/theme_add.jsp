<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="../resources/css/admin.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="wrapper">
<c:import url="../layout/adminNAV.jsp"/>
<div class="mainView col-md-10">
	<div class="width1600px">
  <h3>테마 추가</h3>
  <form class="form-horizontal" action="theme_add" method="post">
    <div class="form-group col-md-10">
      <label class="col-sm-2 control-label">TITLE</label>
      <div class="col-sm-10">
        <input class="form-control" id="t_title" type="text" name="t_title" placeholder="테마제목을 입력하세요.">
      </div>
    </div>
    <div class="form-group col-md-10">
      <label class="col-sm-2 control-label">IMG</label>
      <div class="col-sm-10">
        <input class="form-control" id="t_img" type="text" name="t_img" placeholder="테마대표이미지 주소를 입력하세요.">
      </div>
    </div>
    <div id="img">
    </div>
    <div class="form-group col-md-10">
      <label class="col-sm-2 control-label">SUBTITLE</label>
      <div class="col-sm-10">
        <input class="form-control" id="t_subtitle" type="text" name="t_subtitle" placeholder="테마부제목을 입력하세요..">
      </div>
    </div>
    <div class="form-group col-md-10">
      <label class="col-sm-2 control-label">SUBJECT</label>
      <div class="col-sm-10">
        <input class="form-control" id="t_subject" type="text" name="t_subject" placeholder="테마주제를 입력하세요.">
      </div>
     
    </div>
   	<div class="form-group col-md-10">
   	 <button class="btn btn-default" style="float: right; margin-right: 15px;">테마등록</button>
   	 </div>
  </form>
</div>
</div>
</div>
	<script type="text/javascript">
		
		$("#t_img").change(function() {
			var url = $(this).val();
			
			$("#img").css({"background":"url("+url+")", 'background-repeat' : 'no-repeat', 'background-position':'center center'});
			$("#img").css("display","block");
			
		});
	</script>
</body>
</html>