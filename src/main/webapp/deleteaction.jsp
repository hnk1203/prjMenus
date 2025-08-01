<%@page import="menus.MenuDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String menu_id = request.getParameter("menu_id");

    MenuDao menuDao = new MenuDao();
    menuDao.deleteMenu(menu_id);

    response.sendRedirect("menulist.jsp");
%>