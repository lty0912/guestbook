<%@page import="kr.ac.sungkyul.guestbook.dao.GuestbookDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%

	request.setCharacterEncoding("utf-8");
	Long no = Long.parseLong(request.getParameter("no"));
	String password = request.getParameter("password");
	
	GuestbookDao dao = new GuestbookDao();
	dao.comparePassword(no, password);
	
	response.sendRedirect("/guestbook");
%>