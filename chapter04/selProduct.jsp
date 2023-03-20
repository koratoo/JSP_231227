<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>selProduct.jsp</title>
</head>
<%
	request.setCharacterEncoding("utf-8");
	session.setAttribute("username",request.getParameter("username"));
%>
<body>
<form name="form1" method="post" action="add.jsp">
	<div align="center">
	<h2>상품선택</h2>
	<hr />
		<%=session.getAttribute("username") %>님 환영합니다.
	<hr />
		<select name="product" >
			<option value="사과">사과</option>
			<option value="딸기">딸기</option>
			<option value="포도">포도</option>
			<option value="자몽">자몽</option>
			<option value="파인애플">파인애플</option>
		</select>
	<input type="submit" value="추가" /><br>
	<a href="checkOut.jsp">계산</a>
	</div>
</form>
</body>
</html>