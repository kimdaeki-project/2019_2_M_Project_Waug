<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 
<c:import url="../layout/bootstrap.jsp"/>
<style type="text/css">
	.b{
		color: red;
	}
	.a{
		color: blue;
	}
</style>
</head>
<body>
<h1 style="text-align: center;">도시 추가 페이지</h1>




<div class="container">

  <form action="./city_add" method="POST">
    <div class="form-group">
    
      <label for="usr">대륙:</label>
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

	<label for="usr">나라:</label>
	<select id = "nation" name="nation" class="form-control">
			<option>나라</option>
	</select>

      <label for="usr">도시:</label>
      <input type="text" class="form-control" id="city_name" name="city_name" required="required" placeholder="도시 이름을 입력 해 주세요">
      <div>
      	<p id="city_result"></p>
      </div>
      <label for="usr">도시이미지1:</label>
      <input type="text" class="form-control" id="usr" name="city_img" placeholder="이미지 url을 입력 해 주세요" required="required">
      <label for="usr">도시이미지2:</label>
      <input type="text" class="form-control" id="usr" name="city_img2" placeholder="이미지 url을 입력 해 주세요" required="required">
    </div>
  	<button type="submit" class="btn btn-default" style="float: right;">확인</button>
  </form>
</div>

<div class="container">
  <h2>도시리스트</h2>
          
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