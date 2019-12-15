<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<input type="text" value="${filename}" name="rv_images" class="${filename}" style="display: none;">
////
<div class="comment-file-img">
<div class="del-img">
<i class="fa fa-minus-circle"></i>
</div>
<img src="../resources/images/reviews/${filename}" style="width: 74px; height: 74px;">
<input type="text" value="${filename}" name="rv_images" class="${filename}" style="display: none;">
</div>
												