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

<h3>도시 추가, 리스트</h3>
  <form action="./city_add" method="POST" class="form-horizontal">
    <div class="form-group col-md-10" >
    
      <label for="usr" class="control-label col-sm-2">대륙:</label>
      <div class="col-sm-10">
      	<select id="continents" name="continents" class="form-control">
      		<option value="a">대륙</option>
      		<option value="동아시아">동아시아</option>
      		<option value="동남아시아">동남아시아</option>
      		<option value="서남아시아">서남아시아</option>
      		<option value="유럽">유럽</option>
      		<option value="아메리카">아메리카</option>
      		<option value="오세아니아">오세아니아</option>
      		<option value="아프리카">아프리카</option>
      	</select>
	</div>
	<label for="usr" class="col-sm-2 control-label">나라:</label>
	<div class="col-sm-10">
	<select id = "nation" name="nation" class="form-control">
			<option>나라</option>
	</select>
	</div>

      <label for="usr"class="col-sm-2 control-label">도시:</label>
      <div class="col-sm-10">
      <input type="text" class="form-control" id="city_name" name="city_name" required="required" placeholder="도시 이름을 입력 해 주세요">
      <div>
      	<p id="city_result"></p>
      </div>
      </div>
      
      <label for="usr" class="col-sm-2 control-label">도시이미지1:</label>
      <div class="col-sm-10">
      <input type="text" class="form-control vertical-center" id="usr" name="city_img" placeholder="이미지 url을 입력 해 주세요" required="required">
     </div>
 
      <label for="usr" class="col-sm-2 control-label">도시이미지2:</label>
      <div class="col-sm-10">
      <input type="text" class="form-control vertical-center" id="usr" name="city_img2" placeholder="이미지 url을 입력 해 주세요" required="required">
   	  	  <button type="submit" class="btn btn-default" style="float: right;">확인</button>
   	  </div>	
  
   
    </div>
  
  </form>
</div>

<div class="container">
  <h3>도시목록</h3>
          
  <table class="table table-striped">
    <thead>
      <tr>
        <th>대륙</th>
        <th>나라</th>
        <th>도시</th>
        <th>이미지1</th>
        <th>이미지2</th>
      </tr>
    </thead>
    <tbody>
      <c:forEach items="${list}" var="vo">
      <tr>
        <td>${vo.continents}</td>
        <td>${vo.nation}</td>
        <td>${vo.city_name}</td>
        <td><img alt="" src="${vo.city_img}" style="width: auto; height: 30px;"></td>
        <td><img alt="" src="${vo.city_img2}" style="width: auto; height: 30px;"> </td>
      </tr>
      </c:forEach>
    </tbody>
  </table>
</div>
</div>
</div>

<script type="text/javascript">

	$('#continents').change(function() {
		
	 	var continents= $(this).val(); 
		

		$.get("./city_add2?continents="+continents, function(data) {
			data = data.trim();
			$("#nation").html(data);
		});
	});
	
	var check_city=false;

	$("#city_name").blur(function() {
		var city_name = $("#city_name").val();
		if($(this).val()!= ""){
			
			$.get("./check_city?city_name="+city_name,function(data){
				
				data=data.trim();
			
				if(data ==1){
					$("#city_result").html("이미 존재하는 도시입니다.");
					$("#city_name").val("");
					$("#city_result").attr('class', 'b');
					$("#city_name").focus();
					check_city=true;
					
				}else{
					$("#city_result").html("등록 가능한 도시입니다");
					$("#city_result").attr('class', 'a');
					check_city=false;
				}
			});
		}
	});
</script>



</body>
</html>