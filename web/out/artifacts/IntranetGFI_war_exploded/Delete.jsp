<%@ page import="DAO.UserDAO" %><%--
  Created by IntelliJ IDEA.
  User: theo.lietar-tmp
  Date: 08/04/2019
  Time: 17:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>DElETE</title>
</head>
<body>
<%
    session = request.getSession(true);
    System.out.println(session.getAttribute("login"));
    if(session.getAttribute("login") == null){
        response.sendRedirect("Authentification.jsp");
    }
%>
<%
    UserDAO.delete(request.getParameter("log"));

    response.sendRedirect("Admin.jsp");
%>
</body>
</html>
