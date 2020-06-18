<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>성적입력</title>

<link type="text/css" rel="stylesheet" href="style.css">

<script type="text/javascript">
	function check() {
		if (document.form.sno.value == "") {
			alert("학번을 입력하세요.");
			document.form.sno.focus();
		} else if (document.form.sname.value == "") {
			alert("이름을 입력하세요.");
			document.form.sname.focus();
		} else if (document.form.kor.value == "") {
			alert("국어 점수를 입력하세요.");
			document.form.kor.focus();
		} else if (document.form.eng.value == "") {
			alert("영어 점수를 입력하세요.");
			document.form.eng.focus();
		} else if (document.form.math.value == "") {
			alert("수학 점수를 입력하세요.");
			document.form.math.focus();
		} else if (document.form.hist.value == "") {
			alert("역사 점수를 입력하세요.");
			document.form.hist.focus();
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

			<form action="insert_process.jsp" name="form" method="post">
				<h2>학생 성적 입력</h2>
				<table border=1 align="center" width=300px>

					<tr align="center">
						<td>학번</td>
						<td align="left"><input type="text" name="sno" size="20" value=""></td>
					</tr>

					<tr align="center">
						<td>성명</td>
						<td align="left"><input type="text" name="sname" size="20" value=""></td>
					</tr>

					<tr align="center">
						<td>국어</td>
						<td align="left"><input type="text" name="kor" size="20" value=""></td>
					</tr>

					<tr align="center">
						<td>영어</td>
						<td align="left"><input type="text" name="eng" size="20" value=""></td>
					</tr>


					<tr align="center">
						<td>수학</td>
						<td align="left"><input type="text" name="math" size="20" value=""></td>
					</tr>

					<tr align="center">
						<td>역사</td>
						<td align="left"><input type="text" name="hist" size="20" value=""></td>
					</tr>

					<tr align=center>
						<td colspan="2"><input type="button" value="성적저장" onclick="javascript:check()"></td>
				</table>
			</form>
		</div>
	</section>
	
	<footer>
		<jsp:include page="footer.jsp"></jsp:include>
	</footer>
</body>
</html>