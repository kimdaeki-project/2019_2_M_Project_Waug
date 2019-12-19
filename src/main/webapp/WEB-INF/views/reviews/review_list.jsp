<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link
	href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="../resources/css/review.css">
<link rel="stylesheet" href="../resources/css/Footer.css">
<link rel="stylesheet" href="../resources/css/CityList.css">
</head>
<body>

	<c:import url="../layout/nav.jsp"></c:import>

	<div id="content">
		<div class="wrapper-page no-header">
			<div class="container">
				<!--  comment list begin  -->
				<div class="row reivew-list-content-box" id="comment_space">
					<div class="page-title review-title-text">
						<h3>이용 후기</h3>
					</div>
					<div class="add-list">
						<c:forEach items="${list}" var="dto">
							<div id="comment${dto.rv_num}" class="item-comment clearfix">
								<div class="comment-content">
									<div class="star-score-space">
								<span class="comment-list-mem-id star-score-sort"> ${dto.rv_writer} </span>
								<span class="star-score-sort">
									<div
										class="rating-container rating-xxs rating-animate rating-disabled star-float">
										<div class="rating-stars">
											<span class="empty-stars"><span class="star"><i
													class="glyphicon glyphicon-star" style="font-weight: 100;"
													aria-hidden="true"></i></span><span class="star"><i
													class="glyphicon glyphicon-star" style="font-weight: 100;"
													aria-hidden="true"></i></span><span class="star"><i
													class="glyphicon glyphicon-star" style="font-weight: 100;"
													aria-hidden="true"></i></span><span class="star"><i
													class="glyphicon glyphicon-star" style="font-weight: 100;"
													aria-hidden="true"></i></span><span class="star"><i
													class="glyphicon glyphicon-star" style="font-weight: 100;"
													aria-hidden="true"></i></span></span><span class="filled-stars"
												style="width: 100%;"><c:forEach begin="1" end="${dto.rv_score}"><span class="star"><i
													class="glyphicon glyphicon-star" style="font-weight: 100;"
													aria-hidden="true"></i></span></c:forEach></span> <input value="${dto.rv_score}"
												class="rating rating-input" data-show-clear="false"
												data-show-caption="false" data-size="xxs"
												data-readonly="true" readonly="readonly">
										</div>
									</div>
								</span> <span class="star-score-sort"> (${dto.rv_score}/5) </span> <span
									class="comment-list-title" style="float: right;">${dto.rv_reg_date}</span>
							</div>
							<p class="comment_msg" >${dto.rv_contents}
							</p>
								<c:forEach items="${dto.images}" var="image">
									<c:if test="${not empty image.img_name}">
										<img src="../resources/images/reviews/${image.img_name}" style="width: 74px; height: 74px;" class="tttt" id="${image.img_name}">
									</c:if>
								</c:forEach>
								
							<!-- if 작성자 아니면 안보이게 해야함 -->
							<div class="comment-list-button-wrapper">
								<c:if test="${memberVO.m_pk eq 'w_a@a.com'}">
								<!-- 관리자만 보이게 -->
								<button value="${dto.rv_num}"data-goodidx="${dto.goods_num}"
									data-idx="${dto.rv_num}" data-toggle="modal"
									data-target="#modal-reply"
									class="btn btn-review-reply outline btn-sm" type="button">답변</button>
								<!-- 관리자만 보이게 -->	
								</c:if>
							<c:if test="${dto.email eq memberVO.m_pk}">
								<button name="btn-review-update" data-goodidx="${dto.goods_num}"
									data-idx="${dto.rv_num}" data-toggle="modal"
									data-target="#modal-update"
									class="btn btn-review-update outline btn-sm" type="button" value="${dto.rv_num}">수정</button>
								<button value="${dto.rv_num}" type="button"
									class="btn btn-review-delete outline btn-sm">삭제</button>
							</c:if>
							</div>
							<!-- 여기까지 if문으로 감싸기 -->
						</div>
					</div>
					<c:if test="${dto.rv_ex eq 1}">
					<div style="position: relative; padding-bottom: 20px; margin-top: -16px;">
             		   <div class="waug-comment-box">
                   		 <span style="font-weight: bold;">${dto.rv_aname}</span>
                   			 <span style="margin-left: 4px; color: #aaa;">${dto.rv_adate}</span>
                    			<p class="comment_msg">${dto.rv_acontents}
								</p>
                		</div>
           			 </div>
					</c:if>
					</c:forEach>
					</div>
					<!--  ************************************리뷰 쓰기*****************************************  -->
					<div class="modal fade" id="modal-review" tabindex="-1"
						role="dialog" aria-hidden="true" aria-labelledby="modal-review">
						<div class="modal-dialog">

							<div class="modal-content">
								<div class="modal-header">이용 후기</div>
								<div class="modal-body" style="padding-bottom: 45px;">
									<a href="../good/?idx=107382">
										<div
											style="background-image: url(https://d2mgzmtdeipcjp.cloudfront.net/files/good/2019/07/05/15623120666396.png); width: 160px; height: 105px; background-size: cover; background-position: center; float: left; margin-right: 10px; margin-bottom: 20px;"></div>
									</a>
									<form action="review_write" method="post" class="review-form">
									<input type="hidden" name="goods_num" value="${param.goods_num}">
									<!-- rv_writer 멤버session에서 받아와야함-->
										<input type="hidden" name="rv_writer" value="${memberVO.name}" style="display: none;">
										<input type="hidden" name="email" value="${memberVO.m_pk}">
									<!-- 이 2개 -->
									<div class="pull-left">
										<div class="row">
										<!-- 상품에 따라 바뀌게 해야함 -->
											<h5 class="title comment-write-title">대만 이지카드 (국내 공항 수령)</h5>
										</div>
										<div class="form-group" style="margin-left: 10px;" >
											<div class="center comment-write-starspace">
												<div
													class="rating-container rating-md rating-animate star-float">
													<div class="rating2" >
														<label> <input type="radio" name="rv_score" value="1" />
															<span class="icon">★</span>
														</label> <label> <input type="radio" name="rv_score"
															value="2" /> <span class="icon">★</span> <span
															class="icon">★</span>
														</label> <label> <input type="radio" name="rv_score"
															value="3" /> <span class="icon">★</span> <span
															class="icon">★</span> <span class="icon">★</span>
														</label> <label> <input type="radio" name="rv_score"
															value="4" /> <span class="icon">★</span> <span
															class="icon">★</span> <span class="icon">★</span> <span
															class="icon">★</span>
														</label> <label> <input type="radio" name="rv_score"
															value="5" checked="checked"/> <span class="icon">★</span> <span
															class="icon">★</span> <span class="icon">★</span> <span
															class="icon">★</span> <span class="icon">★</span>
														</label>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="form-group">
										<textarea id="comment_write_msg" class="form-control"
											style="height: 246px;"
											placeholder="해당 상품은 어땠나요? 여러분의 이야기를 들려주세요." name="rv_contents"></textarea>
									</div>
									<div class="img_input_wrapper">
									</div>
									</form><!-- form 원래 끝나는 위치 -->
									<div class="form-group comment-write-btn-wrapper2">
										<div class="camera">
											<form id="frm-review-file" method="post" enctype="multipart/form-data" class="test">
												<label for="input_comment_img_new"> <img
													style="padding-top: 17px; width: 62px; padding-left: 11px;"
													src="https://www.waug.com/images/ic_comment_camera_web.svg"> <input
													type="file" name="file" id="input_comment_img_new" class="hide input_comment_img_new" accept=".jpg, .gif, .png, .jpeg">
												</label>
											</form>
										</div>

									</div>
									<div class="comment-write-img" >
										<div  id="preview-img" class="comment-img-list">
											<!-- append 위치 -->
										</div>
									</div>
									<div class="form-group comment-write-btn-wrapper">
										<div class="write" style="float: right;">
											<label id="btn_comment_write">
												<button id="btn-comment-submit" type="button"
													class="btn-form-submit" style="font-size: 12px;">확인</button>
											</label>
										</div>
										<div class="cancel" style="float: right;">
											<button id="btn-comment-cancel" type="button"
												class="btn-form-cancel"
												style="font-size: 12px; margin-right: 10px;"
												data-dismiss="modal">취소</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					
					<!-- **************************************리뷰수정*********************************** -->
					<div class="modal fade" id="modal-update" tabindex="-1"
						role="dialog" aria-hidden="true" aria-labelledby="modal-review">
						<div class="modal-dialog">

							<div class="modal-content">
								<div class="modal-header">후기 수정</div>
								<div class="modal-body" style="padding-bottom: 45px;">
									<a href="../good/?idx=107382">
										<div
											style="background-image: url(https://d2mgzmtdeipcjp.cloudfront.net/files/good/2019/07/05/15623120666396.png); width: 160px; height: 105px; background-size: cover; background-position: center; float: left; margin-right: 10px; margin-bottom: 20px;"></div>
									</a>
									<form action="review_update" method="post" class="review-form2">
									<input type="hidden" name="goods_num" value="${param.goods_num}">
									<!-- rv_writer 멤버session에서 받아와야함-->
										<input type="hidden" name="rv_num" class="update_rv_num">
										<input type="text" name="rv_writer" value="pyj" style="display: none;">
										<input type="hidden" name="email" value="pyj9088@gmail.com">
									<!-- 이 2개 -->
									<div class="pull-left">
										<div class="row">
										<!-- 상품에 따라 바뀌게 해야함 -->
											<h5 class="title comment-write-title">대만 이지카드 (국내 공항 수령)</h5>
										</div>
										<div class="form-group" style="margin-left: 10px;" >
											<div class="center comment-write-starspace">
												<div
													class="rating-container rating-md rating-animate star-float">
													<div class="rating2" >
														<label> <input type="radio" name="rv_score" value="1"  class="radiostar"/>
															<span class="icon">★</span>
														</label> <label> <input type="radio" name="rv_score"
															value="2" class="radiostar"/> <span class="icon">★</span> <span
															class="icon">★</span>
														</label> <label> <input type="radio" name="rv_score"
															value="3"  class="radiostar"/> <span class="icon">★</span> <span
															class="icon">★</span> <span class="icon">★</span>
														</label> <label> <input type="radio" name="rv_score"
															value="4"  class="radiostar"/> <span class="icon">★</span> <span
															class="icon">★</span> <span class="icon">★</span> <span
															class="icon">★</span>
														</label> <label> <input type="radio" name="rv_score"
															value="5"  class="radiostar" checked="checked"/> <span class="icon">★</span> <span
															class="icon">★</span> <span class="icon">★</span> <span
															class="icon">★</span> <span class="icon">★</span>
														</label>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="form-group">
										<textarea id="comment_write_msg2" class="form-control"
											style="height: 246px;"
											placeholder="해당 상품은 어땠나요? 여러분의 이야기를 들려주세요." name="rv_contents"></textarea>
									</div>
									<div class="img_input_wrapper2">
									</div>
									</form>
									<div class="form-group comment-write-btn-wrapper2">
										<div class="camera">
											<form id="frm-review-file" method="post" enctype="multipart/form-data" class="test">
												<label for="input_comment_img_new2"> 
													<img style="padding-top: 17px; width: 62px; padding-left: 11px;" src="https://www.waug.com/images/ic_comment_camera_web.svg">
													<input type="file" id="input_comment_img_new2" name="file" class="hide input_comment_img_new2" accept="image/*">
												</label>
											</form>
										</div>
									</div>
									<div class="comment-write-img">
										<div id="preview-img1" class="comment-img-list">
										<!-- append 위치 -->
										</div>
									</div>
									<div class="form-group comment-write-btn-wrapper">
										<div class="write" style="float: right;">
											<label id="btn_comment_write">
												<button id="btn-update-submit" type="button"
													class="btn-form-submit" style="font-size: 12px;">수정</button>
											</label>
										</div>
										<div class="cancel" style="float: right;">
											<button id="btn-comment-cancel" type="button"
												class="btn-form-cancel"
												style="font-size: 12px; margin-right: 10px;"
												data-dismiss="modal">취소</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- *****************************************관리자 답변달기********************************* -->
					<div class="modal fade" id="modal-reply" tabindex="-1"
						role="dialog" aria-hidden="true" aria-labelledby="modal-review">
						<div class="modal-dialog">

							<div class="modal-content">
								<div class="modal-header">답변 달기</div>
								<div class="modal-body" style="padding-bottom: 45px;">
									<a href="../good/?idx=107382">
										<div
											style="background-image: url(https://d2mgzmtdeipcjp.cloudfront.net/files/good/2019/07/05/15623120666396.png); width: 160px; height: 105px; background-size: cover; background-position: center; float: left; margin-right: 10px; margin-bottom: 20px;"></div>
									</a>
									<form action="review_reply" method="post" class="review-form3">
									<input type="hidden" name="goods_num" value="${param.goods_num}">
									<!-- rv_writer 멤버session에서 받아와야함-->
										<input type="hidden" name="rv_num" class="update_rv_num">
										<input type="text" name="rv_writer" value="pyj" style="display: none;">
										<input type="hidden" name="email" value="pyj9088@gmail.com">
									<!-- 이 2개 -->
									<div class="pull-left">
										<div class="row">
										<!-- 상품에 따라 바뀌게 해야함 -->
											<h5 class="title comment-reply-title">대만 이지카드 (국내 공항 수령)</h5>
										</div>
										<div class="form-group" style="margin-left: 10px;" >
											<div class="center comment-write-starspace">
												<div
													class="rating-container rating-md rating-animate star-float">
													<div class="rating3" >
														<label> <input type="radio" name="rv_score" value="1"  class="radiostar2" onclick="return(false);"/>
															<span class="icon">★</span>
														</label> <label> <input type="radio" name="rv_score"
															value="2" class="radiostar2" onclick="return(false);"/> <span class="icon">★</span> <span
															class="icon">★</span>
														</label> <label> <input type="radio" name="rv_score"
															value="3"  class="radiostar2" onclick="return(false);"/> <span class="icon">★</span> <span
															class="icon">★</span> <span class="icon">★</span>
														</label> <label> <input type="radio" name="rv_score"
															value="4"  class="radiostar2" onclick="return(false);"/> <span class="icon">★</span> <span
															class="icon">★</span> <span class="icon">★</span> <span
															class="icon">★</span>
														</label> <label> <input type="radio" name="rv_score"
															value="5"  class="radiostar2"  onclick="return(false);"/> <span class="icon">★</span> <span
															class="icon">★</span> <span class="icon">★</span> <span
															class="icon">★</span> <span class="icon">★</span>
														</label>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="form-group">
										
										<div id="comment_write_msg3" style="width: 395px;"></div>
										<textarea class="form-control"
											style="height: 254px;"
											placeholder="관리자의 답변을 작성해주세요." name="rv_acontents"></textarea>
									</div>
									</form>
									
									<div class="comment-write-img">
										<div class="comment-img-list" >
										</div>
									</div>
									<div class="form-group comment-write-btn-wrapper">
										<div class="write" style="float: right;">
											<label id="btn_comment_write">
												<button id="btn-reply-submit" type="button"
													class="btn-form-submit" style="font-size: 12px;">답변</button>
											</label>
										</div>
										<div class="cancel" style="float: right;">
											<button id="btn-comment-cancel" type="button"
												class="btn-form-cancel"
												style="font-size: 12px; margin-right: 10px;"
												data-dismiss="modal">취소</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- ******************************************************************************************** -->
					<!-- <div class="modal fade" id="modal-review-image" tabindex="-1"
						role="dialog" aria-hidden="true"
						aria-labelledby="modal-review-image"></div> -->
					<!--  review modal end  -->
				</div>
				<div class="review-foot-btn-box row">

					<div class="row" style="float: right;">
						<a type="button" id="btn-review-write" data-goodidx="107382"
							data-toggle="modal" data-target="#modal-review"
							class="reivew-foot-write-btn col-md-12 btn-form-submit "
							style="color: white; text-align: center; text-decoration: none; cursor: pointer;">후기 작성하기</a>
					</div>
					<c:if test="${totalPage gt 1}">
					<div class="text-center space-4 add-review-space" >
						<a class="btn btn-goods-etc outline review-foot-more-btn"
							id="add_review" data-startid="10" style="color: #d91c84;">더
							보기</a>
					</div>
					</c:if>
				</div>
				<!--  comment list end  -->

			</div>
		</div>
	</div>
	<script type="text/javascript">
		var curPage = 1;
		/* 영하테스트 */
		/* $(window).scroll(function() {
			
			if($(window).scrollTop() == $(document).height() - $(window).height()){
				
				curPage = curPage+1;
				$.get("./review_lists?curPage="+curPage, function(data){
					data=data.trim();
					$(".add-list").append(data);
				});
				if(curPage >= ${totalPage} ){
					$("#add_review").css("display","none");
				}
			}
		}); */
		
		$(".tttt").click(function() {
			var url = $(this).attr('id');
			window.open('http://localhost/p1/resources/images/reviews/'+url);
		})
		
		/* 별점 */
		
		/* 글작성  폼 submit*/
		$("#btn-comment-submit").click(function() {
			$(".review-form").submit();
		});
		
		/* 글수정 폼 submit */
		$("#content").on("click", "#btn-update-submit", function() {
		});
		
		$("#btn-update-submit").click(function() {
			$(".review-form2").submit();
		});
		/* 답변 달기 폼 submit */
		$("#btn-reply-submit").click(function() {
			$(".review-form3").submit();
		})
		
		/* 리뷰 더 보기 */
		$("#add_review").click(function() {
			curPage = curPage+1;
			$.get("./review_lists?goods_num="+${param.goods_num}+"&&curPage="+curPage, function(data){
				data=data.trim();
				$(".add-list").append(data);
			});
			if(curPage > ${totalPage} ){
				$("#add_review").css("display","none");
			}
		});
		
		
		
		/* 리뷰 삭제 */
		$("#content").on("click", ".btn-review-delete", function() {
			if(confirm("정말 삭제하시겠습니까?")){
				$.get("./review_delete?rv_num="+$(this).val(), function(data) {
				});
				location.reload();
			}
		});
		/* $(".btn-review-delete").click(function() {
			if(confirm("정말 삭제하시겠습니까?")){
				$.get("./review_delete?rv_num="+$(this).val(), function(data) {
				});
				location.reload();
			}
		}); */
		var countreview = 0;
		/* 리뷰 수정창 내용 받아오기 */
		$("#content").on("click", ".btn-review-update", function() {
			
			var num = $(this).val();
			$.get("./reviewSelect?rv_num="+num, function(data){
				data=data.trim();
				console.log(data);
				var strings = data.split('///');
				//alert(strings[2]);
				//alert(strings[3]);
				countreview = strings[3].trim();
				countreview = countreview*1;
				alert(countreview);
				$("#comment_write_msg2").val(strings[1]);
	
					$(".update_rv_num").val(num);
					$(".radiostar").eq(strings[0]-1).attr("checked",true);
					$("#preview-img1").html(strings[2]);
			});
		});

		/* 리뷰 답변창 내용 받아오기 */
		$("#content").on("click", ".btn-review-reply", function() {
			var num = $(this).val();
			$.get("./reviewSelect?rv_num="+num, function(data){
				data=data.trim();
				console.log(data);
				var strings = data.split('///');
				$("#comment_write_msg3").html(strings[1]);
					$(".update_rv_num").val(num);
					$(".radiostar2").eq(strings[0]-1).attr("checked",true);
			});
		});
		var count = 0;
		/* 사진 테스트 */
		$("#input_comment_img_new").change(function() {
			if(count<5){
				
				var filename = $('#input_comment_img_new').val();
				var extension = filename.replace(/^.*\./, '');
				if (extension == filename) {
			        extension = '';
				} else {
			        extension = extension.toLowerCase();
			    }
				
				if( (extension != 'jpg') && (extension != 'png') ){
					alert('지원하지 않는 형식의 파일입니다');
				}else{
					//Get form
		        	var form = $(this).parent().parent()[0];
		       	 	// Create an FormData object 
		        	var data = new FormData(form);
		        	$.ajax({
		            	type: "POST",
		            	enctype: 'multipart/form-data',
		            	url: "./reviewImages",
		            	data: data,
		            	processData: false,
		            	contentType: false,
		            	cache: false,
		            	timeout: 600000,
		            	success: function (data) {
		                	data=data.trim();

		                	var im = data.split('////');

		                	$(".img_input_wrapper").append(im[0]);
		                	$("#preview-img").append(im[1]);
		            	},
		            	error: function (e) {
		                	console.log("ERROR : ", e);
		                	alert("fail");
		            	}
		       		});
		        	count=count+1;
				}
			}else{
				alert('더 이상 첨부할 수 없습니다.');
			}
	        
		});
		
		
		/* 서버에서 이미지 삭제 */
		$("#modal-review").on("click", ".fa-minus-circle",function(){
			var fname = $(this).parent().parent().children('input').val();
			$(this).parent().parent().remove();
			count=count-1;
		});
		/*수정창 -버튼 이벤트 전파, 사진삭제, count값 받기*/
		
		/* 수정창 원래 등록된 사진 삭제 */
		$("#modal-update").on("click", ".delete-db", function(){
			if(confirm('정말 삭제하시겠습니까? \n글 수정을 취소해도 이 사진은 사라집니다')){
				var id = $(this).attr('id');
				$.get("./reviewImageDelete?rv_img_num="+id,function(data){
				});
				$(this).parent().parent().remove();
				countreview = countreview-1;
			};
		});
		/* 수정창 새로 등록된 사진 삭제 */

		$("#modal-update").on("click", ".fa-minus-circle",function(){
			var fname = $(this).parent().parent().children('input').val();
			$(this).parent().parent().remove();
			countreview=countreview-1;
		});
		
		
		/* 리뷰창 사진 추가  */
		$("#input_comment_img_new2").change(function() {
			if(countreview<5){
				
				var filename = $('#input_comment_img_new2').val();
				var extension = filename.replace(/^.*\./, '');
				if (extension == filename) {
			        extension = '';
				} else {
			        extension = extension.toLowerCase();
			    }
				
				if( (extension != 'jpg') && (extension != 'png') ){
					alert('지원하지 않는 형식의 파일입니다');
				}else{
		        	var form = $(this).parent().parent()[0];
		        	var data = new FormData(form);
		        	$.ajax({
		            	type: "POST",
		            	enctype: 'multipart/form-data',
		            	url: "./reviewImages",
		            	data: data,
		            	processData: false,
		            	contentType: false,
		            	cache: false,
		            	timeout: 600000,
		            	success: function (data) {
		                	data=data.trim();

		                	var im = data.split('////');
		                	$(".img_input_wrapper2").append(im[0]);
		                	$("#preview-img1").append(im[1]);
		            	},
		            	error: function (e) {
		                	console.log("ERROR : ", e);
		                	alert("fail");
		            	}
		       		});
		        	countreview = countreview+1
		        	alert(countreview);
				}
			}else{
				alert('더 이상 첨부할 수 없습니다.');
			}
	        
		});
		
	</script>

	<c:import url="../layout/Footer.jsp"></c:import>
</body>
</html>