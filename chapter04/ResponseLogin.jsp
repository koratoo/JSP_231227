<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ResponseLogin.jsp</title>
</head>
<body>
	<%
		String id = (String)session.getAttribute("id");
	//구분자를 사용하여 request...
		//String id = (String)session.getParameter("id");
	%>
	
	<h2><%= id %>님 반갑습니다.</h2>
</body>
</html>