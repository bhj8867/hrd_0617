<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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