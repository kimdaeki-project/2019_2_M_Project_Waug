<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<option>나라</option>
<c:forEach items="${nation}" var="n">
	<option>${n}</option>
</c:forEach>
