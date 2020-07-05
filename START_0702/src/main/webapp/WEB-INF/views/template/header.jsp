<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	
	* {
		padding: 0;
		margin: 0;
	}
	
	.wrap, .header-wrap, .main-wrap, .footer-wrap {
		box-sizing: border-box;
		text-align: center;
	}
	
	.wrap {
		margin: auto;
	}
	
	.header-wrap {
		border: 1px solid black;
		background-color: lightgray;
		height: 100px;
		text-align: right;
		padding: 20px;
		display: flex;
	}
	.main-wrap {
		width: 1000px;
		height: 800px;
		margin: auto;
		padding: 50px 0;
	}
	.footer-wrap {
		border: 1px solid black;
		padding: 20px;
		background-color: lightgreen;
	}
	.header-left-wrap {
		text-align: left;
		width: 30%;
	}
	.header-center-wrap {
		text-align: center;
		width: 40%;
	}
	.header-right-wrap{
		text-align: right;
		width: 30%;
	}
	a{
		text-decoration: none;
		color: none;	
	}
	table, td {
		border-collapse: collapse;
		padding: 10px;
		text-align: center;
	}
	
	table {
		margin: auto;
		margin-top: 50px;
	}
	.ft{
		background: lightgreen;
	}
	

</style>
</head>
<body>

	<div class="wrap">
		<div class="header-wrap"> 
			<div class="header-left-wrap">
				왼쪽 DIV 입니다.
			</div>
			<div class="header-center-wrap">
				<a href="home"><h1>개바 개발  세발 세발 </h1></a>
			</div>
			<div class="header-right-wrap">
			
					<!--  loginDTO가 null 일 때! -->
					<c:if test="${empty loginDTO }">
						<input type="button" value="로그인" onclick="location.href='loginPage'">
					</c:if>
					
					<!--  loginDTO가 null 이 아닐때 ! -->
					<c:if test="${not empty loginDTO }">
						<c:choose>
						
							<c:when test="${loginDTO.m_State eq 1}">
								${loginDTO.m_Name }님 환영합니다.<br/>
								<input type="button" value="내정보" onclick="location.href='myView'">
								<input type="button" value="로그아웃" onclick="location.href='logout'">
							</c:when>
							
							<c:when test="${loginDTO.m_State eq 2}">
								${loginDTO.m_Name }님 환영합니다.<br/>
								<input type="button" value="회원관리" onclick="location.href='memberView'">
								<input type="button" value="상품관리" onclick="location.href='product'">
								<input type="button" value="내정보" onclick="location.href='myView'">
								<input type="button" value="로그아웃" onclick="location.href='logout'">
							</c:when>
							
						</c:choose>
					</c:if>
					
				
				
			</div>
		</div>
		
		<div class="main-wrap"> 

