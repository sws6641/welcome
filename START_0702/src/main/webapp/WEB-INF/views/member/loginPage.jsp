<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

	
<jsp:include page="../template/header.jsp" />

	<form method="post" action="login">

		아이디 <input type="text" name="m_Id" /> <br/><br/>
		비밀번호 <input type="password" name="m_Pw" /> <br/>
		<input type="submit" value="로그인" />
		<input type="button" value="회원가입" onclick="location.href='signUpPage'">

	</form>
<%@ include file="../template/footer.jsp" %></body>
