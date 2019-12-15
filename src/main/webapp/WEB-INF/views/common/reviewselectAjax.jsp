<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
${select.rv_score}///${select.rv_contents}///
<c:forEach items="${select.images}" var="image">
<c:if test="${not empty image.img_name}">
<div class="comment-file-img">
<div class="del-img">
<i class="fa fa-minus-circle"></i>
</div>
<img src="../resources/images/reviews/${image.img_name}" style="width: 74px; height: 74px;">
<input type="text" value="${image.img_name}" name="rv_images" class="${image.img_name}" style="display: none;">
</div>
</c:if>
</c:forEach>
///${fn:length(select.images)}