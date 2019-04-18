<%--
  Created by IntelliJ IDEA.
  User: theo.lietar-tmp
  Date: 16/04/2019
  Time: 11:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Run</title>
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
    try{
        Runtime runtime = Runtime.getRuntime();
        Process slave = runtime.exec("C:\\Users\\theo.lietard-tmp\\putty.exe");
        slave.waitFor();
//        slave.wait();
    }catch (Exception e){
        e.printStackTrace();
    }

    response.sendRedirect("Putty.jsp");

%>
</body>
</html>
