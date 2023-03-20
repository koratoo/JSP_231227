<%@page import = "java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>장바구니</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String productName =request.getParameter("product");
	
	//session 영역의 ArrayList를 생성 : session.getAttribute("...");
	//즉 장바구니 생성
	ArrayList<String> list = (ArrayList)session.getAttribute("productlist");
	
	//예외처리 : 만일 장바구니가 생성되지 않아서 null상태이면
	if(list==null){
		list=new ArrayList<>();
		session.setAttribute("productlist", list);
	}
	//list에 상품 담기
	list.add(productName);
%>

<script>
	alert("<%=productName%>이(가) 장바구니에 추가되었습니다.");
	history.go(-1);
</script>

</body>
</html>

<!-- 
history.go(0) : 현재 페이지
history.go(-1): history.back()동일
history.go(-2): 2단계 전 페이지로 이동 -->