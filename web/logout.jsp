<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="javax.servlet.http.HttpSession" %>

<%
    HttpSession userSession = request.getSession(false); // Get existing session
    if (userSession != null) {
        userSession.invalidate(); // Destroy session
    }
    response.sendRedirect("login.html"); // Redirect to login page
%>
