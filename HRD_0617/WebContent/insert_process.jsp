<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert</title>
</head>
<body>
<%@ include file ="DBConn.jsp" %>
<%
request.setCharacterEncoding("utf-8");

String sno=request.getParameter("sno");
String sname=request.getParameter("sname");
String kor=request.getParameter("kor");
String eng=request.getParameter("eng");
String math=request.getParameter("math");
String hist=request.getParameter("hist");

PreparedStatement pstmt=null;

try{
	String sql="insert into exambl values(?,?,?,?,?,?)";
	pstmt=conn.prepareStatement(sql);
	pstmt.setString(1, sno);
	pstmt.setString(2, sname);
	pstmt.setString(3, kor);
	pstmt.setString(4, eng);
	pstmt.setString(5, math);
	pstmt.setString(6, hist);
	pstmt.executeUpdate();
	out.println("테이블 삽입 성공! ");
	
	%><!-- 원하는 페이지로 이동!! -->
	<script>
	alert("입력 되었습니다.");
	location.href="select.jsp";
	</script>
	<% 
	
}catch(SQLException e){
	out.print("데이터 삽입 실패!"+e.getMessage());	
	
}finally{
	if(pstmt!=null)
		pstmt.close();
	if(conn!=null)
		conn.close();
}
%>

</body>
</html>