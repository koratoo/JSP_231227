<%@page import="model.MemberDBBean"%>
<%@page import="java.util.Vector"%>
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
	String id = request.getParameter("id");
	MemberDAO mdao = new MemberDAO();
	MemberDBBean bean =mdao.oneSelectMember(id);
%>
<center>
	<h1>회원 정보</h1>
	<table width="400" border="1">
		<tr height="40">
		  <td align="center" width="150" bgcolor="powderblue"> 아이디 </td>
		  <td width="250" bgcolor="Moccasin"><%=bean.getId() %> </td>
		</tr>
		<tr height="40">
		  <td align="center" width="150" bgcolor="powderblue"> 이메일 </td>
		  <td width="250" bgcolor="Moccasin"><%=bean.getEmail() %> </td>
		</tr>
		<tr height="40">
		  <td align="center" width="150" bgcolor="powderblue"> 패스워드 </td>
		  <td width="250" bgcolor="Moccasin"><%=bean.getPass1() %> </td>
		</tr>
		<tr height="40">
		  <td align="center" width="150" bgcolor="powderblue"> 성별 </td>
		  <td width="250" bgcolor="Moccasin"><%=bean.getGender() %> </td>
		</tr>
		<tr height="40">
		  <td align="center" width="150" bgcolor="powderblue"> 주소 </td>
		  <td width="250" bgcolor="Moccasin"><%=bean.getAddress() %> </td>
		</tr>
		<tr height="40">
		  <td align="center" width="150" bgcolor="powderblue"> 전화번호 </td>
		  <td width="250" bgcolor="Moccasin"><%=bean.getPhone() %> </td>
		</tr>
		<tr height="40">
		  <td align="center" width="150" bgcolor="powderblue"> 관심분야 </td>
		  <td width="250" bgcolor="Moccasin"><%=bean.getHobby() %> </td>
		</tr>
		<tr height="40">
		  <td align="center" width="150" bgcolor="powderblue"> 직업 </td>
		  <td width="250" bgcolor="Moccasin"><%=bean.getJob() %> </td>
		</tr>
		<tr height="40">
		  <td align="center" width="150" bgcolor="powderblue"> 연령 </td>
		  <td width="250" bgcolor="Moccasin"><%=bean.getAge() %> </td>
		</tr>
		<tr height="40">
		  <td align="center" width="150" bgcolor="powderblue"> 정보 </td>
		  <td width="250" bgcolor="Moccasin"><textarea rows="5" cols="30" ><%=bean.getInfo() %></textarea> </td>
		</tr>
		<tr height="40">
			<td align ="center" colspan="2" bgcolor="skyblue">
			<input type="button" value="수정"  onclick="location.href='memberUpdate.jsp?id=<%=bean.getId()%>'"/>
			<input type="button" value="삭제"  onclick="location.href='memberDelete.jsp?id=<%=bean.getId()%>'"/>
			<input type="button" value="전체회원조회"  onclick="location.href='memberList.jsp'"/>
			<input type="button" value="회원가입"  onclick="location.href='member.jsp' "/>
			
			</td>
		</tr>
	</table>
</center>

</body>
</html>