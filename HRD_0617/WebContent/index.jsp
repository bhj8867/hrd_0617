<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>main</title>
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
			<h2>고등학교 성적 조회 프로그램</h2>
			<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;고등학교 성적을 조회는 프로그램을 작성한다.</h3>
			<ol>
				<li>학생성적정보 테이블을 생성한다.
				<li>학생성적정보 테이블에 샘플데이터를 SQL문을 사용하여 데이터를 추가한다.
				<li>주어진 화면디자인을 이용하여 화면을 디자인한다.
				<li>업무요건에 따라 프로그램을 작성한다.
			</ol>
		</div>
	</section>

	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>