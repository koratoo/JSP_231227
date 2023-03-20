<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>memberJoinProc</title>
</head>
<body>
<center>
<h2>회원 정보</h2>
<%
	request.setCharacterEncoding("UTF-8");

	//사용자 정보 받기
	String id=request.getParameter("id");
	String pass1=request.getParameter("pass1");
	String pass2=request.getParameter("pass2");
	String email=request.getParameter("email");
	String gender=request.getParameter("gender");
	String address=request.getParameter("address");
	String phone=request.getParameter("phone");
	String hobby[]=request.getParameterValues("hobby");
	String job=request.getParameter("job");
	String age=request.getParameter("age");
	String info=request.getParameter("info");
	
	if(!pass1.equals(pass2)){
		
%>
<script type="text/javascript">
	alert("비밀번호가 일치하지 않습니다."); //경고창
	history.go(-1);//이전 페이지로 이동이 됨
</script>
<%
	}
%>


		<table width="600" border="1">
			<tr>
				<td width="150" align="center">아이디</td>
				<td width="300" align="left"><%= id %></td>
			</tr>
			<tr>
				<td>패스워드1</td>
				<td><%= pass1 %></td>
			</tr>
			<tr>
				<td>패스워드2</td>
				<td><%= pass2 %></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><%= email %></td>
			</tr>
			<tr>
				<td>성별</td>
				<td><%= gender %></td>
			</tr>
			<tr>
				<td>주소</td>
				<td><%= address %></td>
			</tr>
			<tr>
				<td>번호</td>
				<td><%= phone %></td>
			</tr>
			<tr>
				<td>취미</td>
				<td>
				<%
						for(String favorite : hobby){
									out.println(favorite+"<br>");
								}
				%>
				</td>
			</tr>
			<tr>
				<td>직업</td>
				<td><%= job %></td>
			</tr>
			<tr>
				<td>나이</td>
				<td><%= age %></td>
			</tr>
			<tr>
				<td>하고싶은말</td>
				<td><%= info %></td>
			</tr>
		</table>
</center>
</body>
</html>