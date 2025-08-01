<%@page import="menus.MenuDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String menu_id = request.getParameter("menu_id");
    String menu_name = request.getParameter("menu_name");
    int menu_seq = Integer.parseInt(request.getParameter("menu_seq"));

    MenuDao menuDao = new MenuDao();
    menuDao.updateMenu(menu_id, menu_name, menu_seq); 

    response.sendRedirect("menulist.jsp");
%>