<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Application</title>
</head>
<body>
<div class="center">
<h2>application</h2>
<hr />
username에 설정된 값은 : <%= application.getAttribute("username") %><p>
<%
Integer count = (Integer)application.getAttribute("count");
int cnt = count.intValue()+1;
application.setAttribute("count",cnt);


/* intValue() : Integer객체에서 int형 값을 뽑아내는 메소드
parseInt() : String에서 int형 값을 뽑아내는 메소드 */
%>
count : <%=cnt %>
</div>
</body>
</html>

<!-- page영역 : request
가장 오래 살아남는 영역 : application -->