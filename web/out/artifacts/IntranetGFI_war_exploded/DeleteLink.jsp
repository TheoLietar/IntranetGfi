<%@ page import="DAO.LiensDAO" %><%--
  Created by IntelliJ IDEA.
  User: theo.lietar-tmp
  Date: 24/05/2019
  Time: 09:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    LiensDAO.delete(request.getParameter("nom"));

    response.sendRedirect("Liens.jsp");
%>
</body>
</html>
