<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <% request.setCharacterEncoding("UTF-8"); %>
<%@ page import ="chapter05.AddrBean" %>
<jsp:useBean id="as" class="chapter05.AddrService" scope="application" />
<%
AddrBean ab = as.getAddr(request.getParameter("sname"));
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
	<h2>등록내용</h2>
				이름 : <%=ab.getUsername() %><br>
				이메일 : <%=ab.getEmail() %><br>
				성별 : <%=ab.getGender() %><br>
				전화번호 : <%=ab.getTel() %>
	<hr />
	<a href="addr_list.jsp">전체 목록 보기</a>

</div>

</body>
</html>