<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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