<%@page import="model.MemberDBBean"%>
<%@page import="model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%request.setCharacterEncoding("utf-8"); %>
 <jsp:useBean id="mbean" class="model.MemberDBBean" >
 <jsp:setProperty name="mbean" property="*"/>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

 </jsp:useBean>
<%

	String id = request.getParameter("id");
	out.println(id);
	MemberDAO mdao = new MemberDAO();
 
	//오라클에 있는 패스워드 가져오는 로직	
	 String pass =mdao.getPass(mbean.getId());
		
		if(mbean.getPass1().equals(pass)){
			mdao.deleteOneMember(id);

			response.sendRedirect("memberList.jsp");
		}else{
			%>
			<script>
			alert('패스워드 불일치');
			history.back();
			</script>
			<%
		}
 %>
</body>
</html>