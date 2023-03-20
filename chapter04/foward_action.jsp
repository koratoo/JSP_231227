<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!-- 페이지가 넘어올때 파라미터(폼 입력값)을 함께 전송함 즉 request.getParameter 값을 받음 -->
<jsp:forward page="page_control_end.jsp">
	<jsp:param name = "tel" value="000-0000-0000"/>
</jsp:forward>

<%-- <jsp:forward> : 액션태그로 소스 코드가 복사 되는 것이 아니라 제어권 자체가 forward액션으로 지정됨
해당 페이지로 넘어 갔다가 다시 원래의 페이지로 돌아오지 못하고 forward 액션에서 지정해준 페이지에서 종료됨 --%>