<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	request.setCharacterEncoding("utf-8");

	//사용자로부터 넘어온 아이디 가져오기
	String id = request.getParameter("id");
	
	//session에 가있으면 페이지마다 getParameter를 할 필요가 없다.
	//브라우저가 바뀌지 않는 한 어느 페이지에서도 데이터를 공유할 수 있도록 세션유지
	session.setAttribute("id",id);
	
	//세션유지 시간 (5초 설정)
	 session.setMaxInactiveInterval(5); //<!-- 세션의 유지시간 -->
%>
<h2>당신의 아이디는 <%=id %></h2>
<a href="sessionShoppingMail.jsp">쇼핑몰 바로가기</a>
</body>
</html>