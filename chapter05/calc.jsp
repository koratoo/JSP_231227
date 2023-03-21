<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <% request.setCharacterEncoding("utf-8");%>
 <jsp:useBean id="calc" class="chapter05.CalcBean"/>
 <jsp:setProperty name="calc" property="*"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<H3>계산기</H3>
		<HR>
		<form action="#" method="post">
			<input type="text" name="num1" width="200" size="5" /> 
			<select name="operator" id="">
				<option>+</option>
				<option>-</option>
				<option>*</option>
				<option>/</option>
			</select> 
			<input type="text" name="num2" width="200" size="5" />
			<input type="submit" value="계산" />
			<input type="reset" value="취소" />
			
		</form>
	</div>

</body>
</html>