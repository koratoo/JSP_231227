<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="login" class="chapter05.LoginBean" scope="page" />
<jsp:setProperty name="login" property="*" />
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
		<%
		request.setCharacterEncoding("utf-8");
		%>
		<!-- request로 넘어온 데이터를 자바 bean과 매핑해주는 역할 -->
		<!-- jsp내용을 자바빈 클래스에 데이터를 매핑(Setter)해야 한다. -->
		<div align=center>
		<H2>로그인 예제</H2>
		<HR>
		<%
		//로그인 객체를 이용하여 로그인 여부 판단
		if(login.checkUser()){
			out.println("로그인 성공");
		}else{
			out.println("로그인 실패");
		}
		%>
			userID : <jsp:getProperty property="userid" name="login"/>
			userPass : <jsp:getProperty property="passwd" name="login"/>
		</div>
</body>
</html>