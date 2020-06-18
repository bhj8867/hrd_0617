<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>성적조회 교수님 버전</title>
<link type="text/css" rel="stylesheet" href="style.css">
</head>
<body>
<header>
		<jsp:include page="header.jsp"></jsp:include>
	</header>

	<nav>
		<jsp:include page="nav.jsp"></jsp:include>
	</nav>

	<section>
		<div class="section">

			<%@include file="DBConn.jsp"%>
			<%
				request.setCharacterEncoding("utf-8");
			%>
			<table border=1 align="center" width=800px>
			<tr>
			<th>학년</th>
			<th>반</th>
			<th>번호</th>
			<th>성명</th>
			<th>국어</th>
			<th>영어</th>
			<th>수학</th>
			<th>역사</th>
			<th>총점</th>
			<th>평균</th>
			</tr>
			
			<%
			ResultSet rs01=null;
			PreparedStatement pstmt01=null;
			
			try{
				String sql
			}
			
			%>
			
			
			
			</table>
			
			
			
			
			
			
	</div></section>



</body>
</html>