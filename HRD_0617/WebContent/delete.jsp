<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>성적삭제</title>

<link type="text/css" rel="stylesheet" href="style.css">

<script type="text/javascript">
	function check() {
		if (document.form.sno.value == "") {
			alert("학번을 입력하세요.");
			document.form.sno.focus();
		} else {
			document.form.submit();
		}
	}
</script>
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

			<form action="delete_process.jsp" name="form" method="post">
				<h2>학생 성적 삭제</h2>
				<table border=1 align="center" width=300px>

					<tr align="center">
						<td>학번</td>
						<td align="left"><input type="text" name="sno" size="20" value=""></td>
					</tr>

					<tr align=center>
						<td colspan="2">
						<input type="button" value="성적삭제" onClick="javascript:check()">
						
						<!--클릭으로 원하는 페이지 가기 onClick="location.hrerf=  -->
						<input type="button" value="취소" onClick="location.href='index.jsp'"></td>
				</table>
			</form>
		</div>
	</section>
	
	
	
	<footer>
		<jsp:include page="footer.jsp"></jsp:include>
	</footer>
</body>
</html>