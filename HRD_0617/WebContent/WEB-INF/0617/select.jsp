<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>성적입력</title>
<style type="text/css">
#t1{
font-weight : bold;
}

</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>

	<nav>
		<ul>
			<li><a href="insert.jsp">성적입력</a></li>
			<li><a href="select.jsp">성적조회</a></li>
			<li><a href="index.jsp">홈으로</a></li>
		</ul>
	</nav>


	<div class="section">
	
	<%@include file="DBConn.jsp" %>
	<% request.setCharacterEncoding("utf-8");%>
		<form action="insert_process.jsp" name="form" method="post">
			<h2>성적조회목록</h2>
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
			ResultSet rs=null;
			PreparedStatement pstmt=null;
			int tkor=0,teng=0,tmath=0,thist=0,ttotal=0,total=0;
			int count=0;//i++같은 느낌?
			float avg=0,akor=0,aeng=0,amath=0,ahist=0,atotal=0,aavg=0,tavg=0;
			
			
			
			try{
				String sql="select sno,sname,kor,eng,math,hist from exambl";
				pstmt=conn.prepareStatement(sql);
				rs=pstmt.executeQuery();
				
				while(rs.next()){
					//request.getParameter 폼에 있는 데이터 넘겨받을때
					//rs.getString : 디비에 있는 데이터를 받아올때
					
					String sno=rs.getString("sno");
					String sname=rs.getString("sname");
					int kor=Integer.parseInt(rs.getString("kor"));
					int eng=Integer.parseInt(rs.getString("eng"));
					int math=Integer.parseInt(rs.getString("math"));
					int hist=Integer.parseInt(rs.getString("hist"));
					
					total=kor+eng+hist+math;
					avg=(float)total/4;
					
					tkor=tkor+kor;
					teng=teng+eng;
					tmath=tmath+math;
					thist=thist+hist;
					ttotal=ttotal+total;
					tavg=tavg+avg;
					
					count++;
					
					
					/* akor=(float)tkor/cnt; 반복문안에 있으면 계속 반복해서 계산해서 느려진다*/
					/* System.out.println("int"+Integer.parseInt(kor)); */
			
			%>
			<tr>
			<td align="center"><%=sno.substring(0,1)%></td>
			<td align="center"><%=sno.substring(1,3)%></td>
			<td align="center"><%=sno.substring(3,5)%></td>
			<td align="center"><%=sname %></td>
			<td align="right"><%=kor%></td>
			<td align="right"><%=eng%></td>
			<td align="right"><%=math%></td>
			<td align="right"><%=hist%></td>
			<td align="right"><%=total%></td>
			<td align="right"><%=(float)(total)/4%></td>
			</tr>
			<%
				}
			}catch(SQLException e){
				out.print("데이블 호출이 실패했습니다.<br>"+e.getMessage());
			}finally{
				if(rs!=null)
					rs.close();
				if(pstmt!=null)
					pstmt.close();
				if(conn!=null)
					conn.close();
			}
			//총합계의 평균
			akor=(float)tkor/count;
			aeng=(float)teng/count;
			amath=(float)tmath/count;
			ahist=(float)thist/count;
			atotal=(float)ttotal/count;
			aavg=(float)tavg/count;
			
			
			%>
			
			<tr>
			<td></td>
			<td></td>
			<td></td>
			<td align="center" id="t1">총점</td>
			<td align="right"><%=tkor%></td>
			<td align="right"><%=teng %></td>
			<td align="right"><%=tmath %></td>
			<td align="right"><%=thist %></td>
			<td align="right"><%=ttotal %></td>
			<td align="right"><%=tavg %></td>
			</tr>
			
			<tr>
			<td></td>
			<td></td>
			<td></td>
			<td align="center" id=t1>총평균</td>
			<td align="right"><%=akor %></td>
			<td align="right"><%=aeng %></td>
			<td align="right"><%=amath %></td>
			<td align="right"><%=ahist %></td>
			<td align="right"><%=atotal %></td>
			<td align="right"><%=aavg,3%></td>
			</tr>
				
			</table>
		</form>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>