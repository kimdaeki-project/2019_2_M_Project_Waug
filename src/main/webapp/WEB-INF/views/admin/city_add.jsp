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
</head>
<body>
<h1>도시 추가 페이지</h1>




<div class="container">

  <form action="./city_add" method="POST">
    <div class="form-group">
    
      <label for="usr">대륙:</label>
      	<select id="continents" name="continents">
      		<option value="a">대륙</option>
      		<option value="동아시아">동아시아</option>
      		<option value="southeast_asia">동남아시아</option>
      		<option value="southwest_asia">서남아시아</option>
      		<option value="europe">유럽</option>
      		<option value="america">아메리카</option>
      		<option value="oceania">오세아니아</option>
      		<option value="africa">아프리카</option>
      	</select>

	<label for="usr">나라:</label>
	<select id = "nation" name="nation">
			<option>나라</option>
	</select>

      <label for="usr">도시:</label>
      <input type="text" class="form-control" id="city_name" name="city_name">
      <label for="usr">도시이미지1:</label>
      <input type="text" class="form-control" id="usr" name="city_img">
      <label for="usr">도시이미지2:</label>
      <input type="text" class="form-control" id="usr" name="city_img2">
    </div>
  	<button type="submit">확인</button>
  </form>
</div>

<script type="text/javascript">

	$('#continents').change(function() {
		
	 	var continents= $(this).val(); 
		

		$.get("./city_add2?continents="+continents, function(data) {
			data = data.trim();
			$("#nations").html(data);
		});
	});
	


</script>



</body>
</html>