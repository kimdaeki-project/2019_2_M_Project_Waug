<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
							<p class="comment_msg" >${dto.rv_contents}</p>
							<!-- if 작성자 아니면 안보이게 해야함 -->
							<div class="comment-list-button-wrapper">
								<!-- 관리자만 보이게 -->
								<button value="${dto.rv_num}"data-goodidx="${dto.goods_num}"
									data-idx="${dto.rv_num}" data-toggle="modal"
									data-target="#modal-reply"
									class="btn btn-review-reply outline btn-sm" type="button">답변</button>
								<!-- 관리자만 보이게 -->	
								<button name="btn-review-update" data-goodidx="${dto.goods_num}"
									data-idx="${dto.rv_num}" data-toggle="modal"
									data-target="#modal-update"
									class="btn btn-review-update outline btn-sm" type="button" value="${dto.rv_num}">수정</button>
								<button value="${dto.rv_num}" type="button"
									class="btn btn-review-delete outline btn-sm">삭제</button>
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
									<!-- rv_writer 멤버session에서 받아와야함-->
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
									</form>
									<div class="form-group comment-write-btn-wrapper">
										<div class="camera">
											<form id="frm-review-file">
												<label for="input_comment_img_new"> <img
													style="padding-top: 17px; width: 62px; padding-left: 11px;"
													src="https://www.waug.com/images/ic_comment_camera_web.svg"> <input
													type="file" id="input_comment_img_new" class="hide"
													accept="image/*">
												</label>
											</form>
										</div>

									</div>
									<div class="comment-write-img">
										<div class="comment-img-list" id="preview-img"></div>
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
								<div class="modal-header">이용 후기</div>
								<div class="modal-body" style="padding-bottom: 45px;">
									<a href="../good/?idx=107382">
										<div
											style="background-image: url(https://d2mgzmtdeipcjp.cloudfront.net/files/good/2019/07/05/15623120666396.png); width: 160px; height: 105px; background-size: cover; background-position: center; float: left; margin-right: 10px; margin-bottom: 20px;"></div>
									</a>
									<form action="review_update" method="post" class="review-form2">
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
														<label> <input type="radio" name="rv_score2" value="1"  class="radiostar"/>
															<span class="icon">★</span>
														</label> <label> <input type="radio" name="rv_score2"
															value="2" class="radiostar"/> <span class="icon">★</span> <span
															class="icon">★</span>
														</label> <label> <input type="radio" name="rv_score2"
															value="3"  class="radiostar"/> <span class="icon">★</span> <span
															class="icon">★</span> <span class="icon">★</span>
														</label> <label> <input type="radio" name="rv_score2"
															value="4"  class="radiostar"/> <span class="icon">★</span> <span
															class="icon">★</span> <span class="icon">★</span> <span
															class="icon">★</span>
														</label> <label> <input type="radio" name="rv_score2"
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
									</form>
									<div class="form-group comment-write-btn-wrapper">
										<div class="camera">
											<form id="frm-review-file">
												<label for="input_comment_img_new"> <img
													style="padding-top: 17px; width: 62px; padding-left: 11px;"
													src="https://www.waug.com/images/ic_comment_camera_web.svg"> <input
													type="file" id="input_comment_img_new" class="hide"
													accept="image/*">
												</label>
											</form>
										</div>

									</div>
									<div class="comment-write-img">
										<div class="comment-img-list" id="preview-img"></div>
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
									<div class="form-group comment-write-btn-wrapper">
										<div class="camera">
											<form id="frm-review-file">
												<label for="input_comment_img_new"> <img
													style="padding-top: 17px; width: 62px; padding-left: 11px;"
													src="https://www.waug.com/images/ic_comment_camera_web.svg"> <input
													type="file" id="input_comment_img_new" class="hide"
													accept="image/*">
												</label>
											</form>
										</div>

									</div>
									<div class="comment-write-img">
										<div class="comment-img-list" id="preview-img"></div>
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
		
		
		/* 별점 */
		$(':radio').change(function() {
  		console.log('New star rating: ' + this.value);
		});
		
		/* 글작성  폼 submit*/
		$("#btn-comment-submit").click(function() {
			$(".review-form").submit();
		});
		
		/* 글수정 폼 submit */
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
			$.get("./review_lists?curPage="+curPage, function(data){
				data=data.trim();
				$(".add-list").append(data);
			});
			if(curPage >= ${totalPage} ){
				$("#add_review").css("display","none");
			}
		});
		
		/* 리뷰 삭제 */
		$(".btn-review-delete").click(function() {
			if(confirm("정말 삭제하시겠습니까?")){
				$.get("./review_delete?rv_num="+$(this).val(), function(data) {
					
				});
				
				location.reload();
			}
		});
		
		/* 리뷰 수정창 내용 받아오기 */
		$(".btn-review-update").click(function() {
			var num = $(this).val();
			$.get("./reviewSelect?rv_num="+num, function(data){
				data=data.trim();
				console.log(data);
				var strings = data.split('/');
				$("#comment_write_msg2").val(strings[1]);
	
					$(".update_rv_num").val(num);
					$(".radiostar").eq(strings[0]-1).attr("checked",true);
				
			});
		});
		/* 리뷰 수정창 내용 받아오기 */
		$(".btn-review-reply").click(function() {
			var num = $(this).val();
			$.get("./reviewSelect?rv_num="+num, function(data){
				data=data.trim();
				console.log(data);
				var strings = data.split('/');
				$("#comment_write_msg3").html(strings[1]);
					$(".update_rv_num").val(num);
					$(".radiostar2").eq(strings[0]-1).attr("checked",true);
			});
		});
	</script>

	<c:import url="../layout/Footer.jsp"></c:import>
</body>
</html>