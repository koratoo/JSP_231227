<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <% request.setCharacterEncoding("UTF-8"); %>
 <jsp:useBean id="addr" class="chapter05.AddrBean"/>
 <jsp:useBean id="as" class="chapter05.AddrService"  scope="application" />
 <jsp:setProperty name="addr" property="*"/>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	as.add(addr);
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Addr</title>
</head>
<body>
<div align="center">
<h2>주소정보 출력</h2>
<HR>
<table border="1" cellspacing="0" cellpadding="3">
		<tr>
			<td>이름</td>
			<td><jsp:getProperty property ="username" name="addr"/></td>
		</tr>
		<tr>
			<td>이메일</td>
			<td><%=addr.getEmail()%></td>
		</tr>
		<tr>
			<td>성별</td>
			<td><%=addr.getGender()%></td>
		</tr>
		<tr>
			<td>번호</td>
			<td><%=addr.getTel()%></td>
		</tr>
	</table>
		<hr />
		<a href="addr_list.jsp">목록 보기</a>
</div>

</body>
</html>