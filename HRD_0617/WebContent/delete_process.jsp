<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>delete_process</title>
</head>
<body>
	<%@include file="DBConn.jsp"%>
	<%
		request.setCharacterEncoding("utf-8");

		String sno = request.getParameter("sno");//delete폼에서 입력받은 sno를 sno로 받아 온다

		ResultSet rs = null;
		PreparedStatement pstmt = null;

		try {
			String sql = "select sno from exambl where sno=?";//sql문으로 입력받은 학번과 dbg학번이 같으면 조회 
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, sno);//첫번째 ?에 String sno(폼에서 입력받은)를 넣는다
			rs = pstmt.executeQuery();

			if (rs.next()) {
				String rSno = rs.getString("sno");//db에 있는 sno를 rSno로 가져온다
				
				if (pstmt != null) {
					pstmt.close();
				}
				
				if (sno.equals(rSno)) {//폼 입력받은 sno vs DB의 rSno 
					sql = "delete from exambl where sno=?";
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, sno);
					pstmt.executeUpdate();
	%>
	<!--삭제완료 알림창 확인 후 원하는 페이지로 이동!! -->
	<script>
		alert("삭제 되었습니다.");
		location.href = "select.jsp";
	</script>
	<%
		} else {
	%>
	<script>
		alert("일치하는 학번이 없습니다.");
		history.back();
	</script>
	<%
		}
			} else {
	%>
	<script>
		alert("일치하는 학번이 없습니다.");
		history.back();
	</script>
	<%
			}
		} catch (SQLException e) {
			out.print("오류" + e.getMessage());

		} finally {
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		}
	%>

</body>
</html>