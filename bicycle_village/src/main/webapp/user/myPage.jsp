<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../common/header.jsp"/>

<c:choose>
	<c:when test="${empty loginUser || UserStatus!=0}">
		<h4>로그인하고 이용해주세요!</h4>
	</c:when>
	
	<c:otherwise>
		<div class="alert alert-dismissible alert-warning">
			<h4>${loginName}님 반갑습니다!</h4>
			<a href="${pageContext.request.contextPath}/user/info.jsp">회원정보 수정하기</a>
      		<a href="${pageContext.request.contextPath}">찜 목록</a>
      		<a href="${pageContext.request.contextPath}">팔로우 목록</a>
      		<a href="${pageContext.request.contextPath}">작성 게시글 목록</a>
      		<a href="${pageContext.request.contextPath}">채팅 목록</a>
      		<a href="${pageContext.request.contextPath}">작성 리뷰 목록</a>
      		<a href="${pageContext.request.contextPath}/user/unregist.jsp">회원 탈퇴</a>
		</div>
	</c:otherwise>
</c:choose>

<jsp:include page="../common/footer.jsp"/>

