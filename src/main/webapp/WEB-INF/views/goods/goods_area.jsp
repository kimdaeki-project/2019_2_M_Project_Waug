<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:import url="../layout/bootstrap.jsp"></c:import>
<style type="text/css">
#wrapper{
	width: 100%;


	border: 10px solid pink;	
}

#wrapper_page{
	
}

.wrapper-header{
	width:100%;
	border: 10px solid blue;
	background-image: url("https://d2mgzmtdeipcjp.cloudfront.net/files/main/2018/07/15/15316446659344.png?s=1900x450");
}
.container{
	width: 1170px;
	background-color:yellow;
	margin-left: auto;
	margin-right: auto;
	
}
.theme_box{
	width: 33.3%;
	padding: 12px;
	border: 1px solid red;

}

.theme_info_box{
	
}
.row{
	clear: both;
	margin-left: -15px;
	margin-right: -15px;
	border: 1px solid black;
	background-color: grey;
	
}
.row_title_margin{
	margin-top: 70px;
	margin-bottom: 30px;
	
}
.good_card_box{
	
	float: left;
	background-color:green;
	width: 25%;
	padding: 8px 12px 12px 12px;


}
.area_goods_space{
	float: right;
	width: 66.6666667%;
	background-color: purple;
}
.m_good_card_box{
	
	max-width: 360px;
}

.catecory-nav{
	width: 25%;
}
</style>
<title>select_area_page</title>
</head>
<body>
	<div id = "wrapper">
		<main>
			<div id="wrapper_page">
				<div class="wrapper-header"><img alt="서울사진" src="url(https://d2mgzmtdeipcjp.cloudfront.net/files/main/2018/07/15/15316446659344.png?s=1900x450"></div>
			
				<div class="container">
					<div class="row row_title row_title_margin">
						<div>추천테마</div>
						<p>어쭈구저쭈구어쭈구저쭈구어쭈구저쭈구어쭈구저쭈구어쭈구저쭈구어쭈구저쭈구</p>
					</div>
					
							<!-- 추천테마 -->
						<div class="row">	
							<div style="display: flex; position: relative; margin-bottom: 30px;">
							<div class="theme_box">
								<img alt="" src="">
								<div class="theme_info_box">
									<div class="head"></div>
									<div class="good_theme_title"></div>
									<div class="good_default_text"></div>
								</div>
							</div>
							<div class="theme_box">
								<img alt="" src="">
								<div class="theme_info_box">
									<div class="head"></div>
									<div class="good_theme_title"></div>
									<div class="good_default_text"></div>
								</div>
							</div>
							<div class="theme_box">
								<img alt="" src="">
								<div class="theme_info_box">
									<div class="head"></div>
									<div class="good_theme_title"></div>
									<div class="good_default_text"></div>
								</div>
							</div>
							</div>
						</div>	
						<!-- 추천테마끝 -->
				
				<div class="row row_title row_title_margin">
					<div>새로운여행</div>
					<p>어쭈구저쭈구어쭈구저쭈구어쭈구저쭈구어쭈구저쭈구어쭈구저쭈구어쭈구저쭈구</p>
				</div>
				
				<!-- 새로운여행 시작 -->
				<div class="row">	

					<div class="good_card_box col-md-3">
						<!-- 위시리스트 추가하트 -->
						<div id="good_wish_img"><img alt="하트" src=""></div>
						<!-- 상품사진 -->
						<div>
							<img alt="" src="">
						</div>
						<!-- 상품설명 -->
						<div class="good_info_content_box">
							<div>오늘부터사용가능</div>
							<span>title</span>
							<div class="original">원래가격</div>
							<div class="discount">할인된가격</div>
							<div class="book">예약현황</div>
						</div>
					</div>
					
					<div class="good_card_box col-md-3">
						<!-- 위시리스트 추가하트 -->
						<div id="good_wish_img"><img alt="하트" src=""></div>
						<!-- 상품사진 -->
						<div>
							<img alt="" src="">
						</div>
						<!-- 상품설명 -->
						<div class="good_info_content_box">
							<div>오늘부터사용가능</div>
							<span>title</span>
							<div class="original">원래가격</div>
							<div class="discount">할인된가격</div>
							<div class="book">예약현황</div>
						</div>
					</div>
					
					<div class="good_card_box col-md-3">
						<!-- 위시리스트 추가하트 -->
						<div id="good_wish_img"><img alt="하트" src=""></div>
						<!-- 상품사진 -->
						<div>
							<img alt="" src="">
						</div>
						<!-- 상품설명 -->
						<div class="good_info_content_box">
							<div>오늘부터사용가능</div>
							<span>title</span>
							<div class="original">원래가격</div>
							<div class="discount">할인된가격</div>
							<div class="book">예약현황</div>
						</div>
					</div>
					
					<div class="good_card_box col-md-3">
						<!-- 위시리스트 추가하트 -->
						<div id="good_wish_img"><img alt="하트" src=""></div>
						<!-- 상품사진 -->
						<div>
							<img alt="" src="">
						</div>
						<!-- 상품설명 -->
						<div class="good_info_content_box">
							<div>오늘부터사용가능</div>
							<span>title</span>
							<div class="original">원래가격</div>
							<div class="discount">할인된가격</div>
							<div class="book">예약현황</div>
						</div>
					</div>
				</div>
				<!-- 새로운여행 끝-->	
				
				<!-- 특별한 여행 시작 -->
				<div class="row">
					
						<!-- 카테고리시작 -->
						<div class="col-md-3 category-nav sticky" style="position: absolute; top: auto; background-color: blue; height: 200px;"></div>
						
						<!-- 카테고리끝 -->
					
					
						<!-- 아이템들만 감싸는 div -->
						<div class="items_wrapper area_goods_space col-md-offset-1 col-md-8">
						
							<div class="good_card_box m_good_card_box col-md-6 item">
								<!-- 위시리스트 추가하트 -->
								<div id="good_wish_img"><img alt="하트" src=""></div>
								<!-- 상품사진 -->
								<div>
									<img alt="" src="">
								</div>
								<!-- 상품설명 -->
								<div class="good_info_content_box ">
									<div>오늘부터사용가능</div>
									<span>title</span>
									<div class="original">원래가격</div>
									<div class="discount">할인된가격</div>
									<div class="book">예약현황</div>
								</div>
							</div>
							
							<div class="good_card_box m_good_card_box col-md-6 item">
								<!-- 위시리스트 추가하트 -->
								<div id="good_wish_img"><img alt="하트" src=""></div>
								<!-- 상품사진 -->
								<div>
									<img alt="" src="">
								</div>
								<!-- 상품설명 -->
								<div class="good_info_content_box">
									<div>오늘부터사용가능</div>
									<span>title</span>
									<div class="original">원래가격</div>
									<div class="discount">할인된가격</div>
									<div class="book">예약현황</div>
								</div>
							</div>
							
						</div>
						<!-- 아이템들만 감싸는 div 끝-->
						
				
				
				
				
				
				</div>	
				<!-- 특별한 여행 끝 -->	
					
					
					
				</div>
				<!-- container div 끝 -->
							
			</div>
			<!-- wrap_page 끝 -->
		
		</main>
	


	</div>
</body>
</html>