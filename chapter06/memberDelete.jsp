<%@page import="model.MemberDBBean"%>
<%@page import="model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

	//url에 떠있는건 Request
	String id = request.getParameter("id");
	MemberDAO mdao = new MemberDAO();
	MemberDBBean mbean =mdao.oneSelectMember(id);
%>
<center>
<h1>비밀번호 확인</h1>
<form action="memberDeleteProc.jsp" method="post">
	<table width="400" border="1">
		<tr height="40">
		  <td align="center" width="150" bgcolor="powderblue"> 아이디 </td>
		  <td width="250" bgcolor="Moccasin"><%=mbean.getId() %> </td>
		</tr>
		<tr height="40">
		  <td align="center" width="150" bgcolor="powderblue"> 패스워드 </td>
		  <td width="250" ><input type="password" name="pass1" /></td>
		</tr>
		
		<tr height="40">
			<td align ="center" colspan="2" bgcolor="skyblue">
			<input type="hidden" name="id" value="<%= id%>"/>
			<input type="submit" value="삭제완료" />
			<input type="button" value="전체회원조회"  onclick="location.href='memberList.jsp'"/>
			</td>
		</tr>
	</table>
</form>
</center>
</body>
</html>