<%--
  Created by IntelliJ IDEA.
  User: theo.lietar-tmp
  Date: 03/04/2019
  Time: 09:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Deconnexion</title>
</head>
<body>

<%
    HttpSession Session = request.getSession(true);
    if(Session != null){
        Session.invalidate();
        response.sendRedirect("Authentification.jsp");
    }
%>
</body>
</html>
