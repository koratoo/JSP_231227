<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>page_control_end</title>
</head>
<body>
	<div align="center">
		<h2>--- forward action & sendRedirect ---</h2>
		<hr />
		지금 보이는 화면은 page_control_end.jsp에서 출력하는 결과 입니다.
		
		<hr />
		 이름 : <%=request.getParameter("username") %> 
		 전화번호 : <%=request.getParameter("tel") %>  
	</div>
</body>
</html>