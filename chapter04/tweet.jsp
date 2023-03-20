<%@page import="java.util.Locale"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<%
		request.setCharacterEncoding("utf-8");
		String msg = request.getParameter("msg");
		Object username = session.getAttribute("user");
		ArrayList<String> msgs = (ArrayList<String>)application.getAttribute("msgs");


		if (msgs == null) {
			//application.setAttribute()를 이용하여 msgs라는 ArrayList생성
			msgs = new ArrayList<String>();
			//application에 메세지를 저장
			application.setAttribute("msgs", msgs);
		}
	
		//=====================================================
				
		Date date = new Date();
		SimpleDateFormat f = new SimpleDateFormat("MM/dd (HH:mm)", Locale.KOREA);
				
		msgs.add(username + " : " + msg + " , " +f.format(date));
		application.log(msg + " <- 메시지 추가됨");
		// 목록화면으로 리다이랙팅
		response.sendRedirect("twitter_list.jsp");
	%>
