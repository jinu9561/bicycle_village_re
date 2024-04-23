<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../common/header.jsp"/>

<c:choose>
	<c:when test="${empty loginUser || UserStatus !=0}">
		<form class="form-horizontal" method="post" action="${pageContext.request.contextPath}/front">
			<input type="hidden" name="key" value = "user" /> <!-- Controller를 찾는 정보 -->
			<input type="hidden" name="methodName" value = "signUp" />  <!-- 메소드이름 -->
			<fieldset>
				<legend>회원가입</legend>
				
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
				
				<div class="form-group">
					<label for="checkPw" class="col-lg-2 control-label">비밀번호 재확인</label>
					<div class="col-lg-10">
						<input type="password" class="form-control" id="pwd2" name="pwd2"> 
					</div>
				</div>
				
				<div class="form-group">
					<label for="name" class="col-lg-2 control-label">이름</label>
					<div class="col-lg-10">
						<input type="text" class="form-control" id="name" name="name"> 
					</div>
				</div>
				
				<div class="form-group">
					<label for="name2" class="col-lg-2 control-label">닉네임</label>
					<div class="col-lg-10">
						<input type="text" class="form-control" id="name2" name="name2"> 
					</div>
				</div>
				
				<div class="form-group">
					<label for="tel" class="col-lg-2 control-label">전화번호</label>
					<div class="col-lg-10">
						<input type="text" class="form-control" id="tel" name="tel"> 
					</div>
				</div>
				
				<div class="form-group">
					<label for="birth" class="col-lg-2 control-label">생년월일</label>
					<div class="col-lg-10">
						<input type="text" class="form-control" id="birth" name="birth"
						placeholder="YYYY.MM.DD"> 
					</div>
				</div>
				
				<div class="form-group">
					<label for="email" class="col-lg-2 control-label">이메일 (선택)</label>
					<div class="col-lg-10">
						<input type="email" class="form-control" id="email" name="email"> 
					</div>
				</div>
				
				<div>
					<div>
						<input type="radio" id="gender" name="gender" value="woman">
						<label>여</label>
					</div>
				</div>
					
				<div>
					<div>
						<input type="radio" id="gender" name="gender" value="man">
						<label>남</label>
					</div>
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

