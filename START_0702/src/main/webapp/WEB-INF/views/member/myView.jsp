<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!-- 동적인 페이지 포함 -->
<jsp:include page="../template/header.jsp" />

 <form action="signUp" method="post">
 
	<label>아이디</label><br/>
	<input type="text" name="m_Id" value="${loginDTO.m_Id }" readonly><br/><br/>
	
	<label>비밀번호</label><br/>
	<input type="text"  name="m_Pw" value="${loginDTO.m_Pw }"><br/><br/>
	
	<label>비밀번호 확인</label><br/>
	<input type="text"  name="m_Pw2" ><br/><br/>
	
	<label>이름</label><br/>
	<input type="text"  name="m_Name"  value="${loginDTO.m_Name }"><br/><br/>
	
	<label>휴대폰</label><br/>
	<input type="text"  name="m_Phone"  value="${loginDTO.m_Phone }" readonly><br/><br/>
	
	<label>이메일</label><br/>
	<input type="text"  name="m_Email"  value="${loginDTO.m_Email }" readonly><br/><br/>
	
	<label>주소</label><br/>
	<input type="text"  name="m_Address"  value="${loginDTO.m_Address }"><br/><br/>
	 	
	<input type="submit" value="수정하기" onclick="location.href='myViewUpdate'"/>
 
 </form>
			
<!-- 정적인 페이지 포함 -->
<%@ include file="../template/footer.jsp" %>