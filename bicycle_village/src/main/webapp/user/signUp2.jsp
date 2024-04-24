<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../common/header.jsp"/>

<c:choose>
	<c:when test="${empty loginUser || UserStatus!=0}">
		<form class="form-horizontal" method="post" action="${pageContext.request.contextPath}/front">
			<input type="hidden" name="key" value = "user" /> 
			<input type="hidden" name="methodName" value = "changeStatus" />  
			<fieldset>
				<legend>기존 정보 조회</legend>
				
				<div class="form-group">
					<h4>아이디: ${loginId}</h4>
				</div>
				
				<div class="form-group">
					<h4>이름: ${loginName}</h4>
				</div>
				
				<div class="form-group">
					<h4>닉네임: ${nickName}</h4>
				</div>
				
				<div class="form-group">
					<h4>전화번호: ${loginTel}</h4>
				</div>
				
				<div class="form-group">
					<h4>생년월일: ${loginBirth}</h4>
				</div>
				
				<div class="form-group">
					<h4>이메일: ${loginEmail}</h4>
				</div>
				
				<div>
					<h4>성별: ${loginGender}</h4>
				</div>
				
				<div class="form-group">
					<div class="col-lg-10 col-lg-offset-2">
						<button type="submit" class="btn btn-primary">회원가입</button>
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

