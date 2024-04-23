<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../common/header.jsp"/>

<c:choose>
	<c:when test="${empty loginUser || UserStatus!=0}">
		<form class="form-horizontal" method="post" action="${pageContext.request.contextPath}/front">
			<input type="hidden" name="key" value = "user" /> <!-- Controller를 찾는 정보 -->
			<input type="hidden" name="methodName" value = "login" />  <!-- 메소드이름 -->
			<fieldset>
				<label>로그인</label>
				<div class="Form">
					<div class="form-group">
						<label for="userId" class="col-lg-2 control-label">아이디</label>
						<div class="col-lg-10">
							<input type="text" class="form-control" id="userId" name="userId">
						</div>
					</div>
					<div class="form-group">
						<label for="pwd" class="col-lg-2 control-label">비밀번호</label>
						<div class="col-lg-10">
							<input type="password" class="form-control" id="pwd" name="pwd">
						</div>
					</div>
					<div class="Input">
						<button type="submit" class="btn btn-primary">로그인</button>
					</div>
				</div>
			</fieldset>
		</form>
	</c:when>
	<c:otherwise>
		<div class="alert alert-dismissible alert-warning">
			<h4>${loginName}님 반갑습니다!</h4>
		</div>
	</c:otherwise>
</c:choose>

<jsp:include page="../common/footer.jsp"/>

