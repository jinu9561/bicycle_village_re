<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../common/header.jsp"/>

<c:choose>
	<c:when test="${empty loginUser}">
		<h4>로그인하고 이용해주세요!</h4>
	</c:when>
	
	<c:otherwise>
	<form class="form-horizontal" method="post" action="${pageContext.request.contextPath}/front">
		<input type="hidden" name="key" value = "user" />
		<input type="hidden" name="methodName" value = "unregist" />
		<h4>${loginName}님 정말로 탈퇴하시겠습니까?</h4>
		
		<button type="submit" class="btn btn-primary">회원 탈퇴</button>
	</form>
	</c:otherwise>
</c:choose>

<jsp:include page="../common/footer.jsp"/>