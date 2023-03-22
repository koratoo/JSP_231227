<%@page import="javax.websocket.SendResult"%>
<%@page import="model.MemberDAO"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id ="mbean" class="model.MemberDBBean" />
<jsp:setProperty name="mbean" property="*"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>memberDBJoin</title>
</head>
<body>
<%
	

	//취미 부분 배열처리
	String hobby[] = request.getParameterValues("hobby");
	String texthobby="";
	
	for(int i=0; i<hobby.length;i++){
		texthobby+=hobby[i]+" ";
	}
	%>
	

	<%
	//배열을 하나의 스트림으로 처리하여 setter시킴
	mbean.setHobby(texthobby);
	
/* 		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "system";
		String pass = "12345";
	
	try{
		
		//1. 드라이버
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		//2. DB접속
		Connection con  =DriverManager.getConnection(url,user,pass);
		
		//3. 접속 후 쿼리준비
		String sql = "insert into member values(?,?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1,mbean.getId());
		pstmt.setString(2,mbean.getPass1());
		pstmt.setString(3,mbean.getPass2());
		pstmt.setString(4,mbean.getEmail());
		pstmt.setString(5,mbean.getGender());
		pstmt.setString(6,mbean.getAddress());
		pstmt.setString(7,mbean.getPhone());
		pstmt.setString(8,mbean.getHobby());
		pstmt.setString(9,mbean.getJob());
		pstmt.setString(10,mbean.getAge());
		pstmt.setString(11,mbean.getInfo());
	
		//5.오라클에서 쿼리를 실행
		pstmt.executeUpdate();
		
		//6.자원반납
		pstmt.close();
		con.close();		
		
	}catch(Exception e ){
		e.printStackTrace();
	}  */
	MemberDAO mdao = new MemberDAO();
	mdao.insertMember(mbean);
	response.sendRedirect("memberList.jsp"); 
	
%>

</body>
</html>