<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix = "fn" uri="http://java.sun.com/jsp/jstl/functions" %>
			
			<c:if test="${result eq 1}">


출처: https://cofs.tistory.com/45 [CofS]
			<div class="searchresult-content searchresult-items">
				<div>
					<div class="searchresultitem-container searchresultitem-container-searched">
						<div class="searchresultitem-title">지역
						</div>
						<div class="searchresultitem-items searchresultitem-items-searched">
							<div class="searchresultitem-item-searched">
								<c:forEach items="${cities}" var="city">
								<div class="searchresultitem-item">
									<div>${city.city_name}</div>
								</div>
								</c:forEach>
							</div>
						</div>
					</div>
					<div class="searchresultitem-container searchresultitem-container-searched">
						<div class="searchresultitem-title">상품
						</div>
						<div class="searchresultitem-items searchresultitem-items-searched">
							<div class="searchresultitem-item-searched">
								<c:forEach items="${goods}" var="good">
								<div class="searchresultitem-item">
									<div>${good.title}</div>
								</div>
								</c:forEach>
								
							</div>
						</div>
					</div>
				</div>
			</div>
			</c:if>
			<c:if test="${result eq 0}">
				<div class="searchresult-content">
							<div class="searchresultitem-container">
								<div class="searchresultitem-title">빠른 검색</div>
								<div class="searchresultitem-items">
									<div class="searchresultitem-item">
										<div>유심 & 와이파이</div>
									</div>
									<div class="searchresultitem-item">
										<div>공항 이동수단</div>
									</div>
									<div class="searchresultitem-item">
										<div>일본 교통패스</div>
									</div>
									<div class="searchresultitem-item">
										<div>유레일 패스</div>
									</div>
								</div>
							</div>
							<div id="container2"
								class="searchresultitem-container container2">
								<div class="searchresultitem-title">인기 지역</div>
								<div class="searchresultitem-items">
									<div class="searchresultitem-item">
										<div>방콕</div>
									</div>
									<div class="searchresultitem-item">
										<div>오사카</div>
									</div>
									<div class="searchresultitem-item">
										<div>도쿄</div>
									</div>
									<div class="searchresultitem-item">
										<div>괌</div>
									</div>
									<div class="searchresultitem-item">
										<div>세부</div>
									</div>
									<div class="searchresultitem-item">
										<div>홍콩</div>
									</div>
									<div class="searchresultitem-item">
										<div>제주도</div>
									</div>
									<div class="searchresultitem-item">
										<div>싱가포르</div>
									</div>
									<div class="searchresultitem-item">
										<div>다낭</div>
									</div>
									<div class="searchresultitem-item">
										<div>타이페이</div>
									</div>
								</div>
							</div>
							<div class="searchresultitem-container">
								<div class="searchresultitem-title">인기 액티비티</div>
								<div class="searchresultitem-items">
									<div class="searchresultitem-item">
										<div>간사이공항 리무진 (난바, 가이유칸, USJ)</div>
									</div>
									<div class="searchresultitem-item">
										<div>홍콩 옥토퍼스 카드 (국내공항수령)</div>
									</div>
									<div class="searchresultitem-item">
										<div>한큐 투어리스트 패스 1/2일권</div>
									</div>
									<div class="searchresultitem-item">
										<div>타이페이 101 타워 전망대 (QR 빠른 입장)</div>
									</div>
									<div class="searchresultitem-item">
										<div>옥토퍼스 HKD 50 충전 (홍콩공항수령)</div>
									</div>
								</div>
							</div>
						</div>
			</c:if>
		