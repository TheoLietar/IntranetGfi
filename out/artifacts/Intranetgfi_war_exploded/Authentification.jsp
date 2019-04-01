<%--
  Created by IntelliJ IDEA.
  User: theo
  Date: 01/04/19
  Time: 09:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Authentification</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

</head>

<%--<style>--%>
    <%--.my-title {--%>
        <%--text-align: center;--%>
    <%--}--%>
<%--</style>--%>

<header>

</header>

<body>

<div class="container">
    <div class="row">
        <div class="col-md-5 mx-auto">
            <div id="first">
                <div class="myform form ">
                    <div class="logo mb-3">
                        <div class="col-md-12 text-center">
                            <h1 style="text-align: center"> GFI Authentification </h1>
                        </div>
                    </div>
                    <form action="ControllerAuthent" method="post" name="login">
                        <div class="form-group">
                            <label for="exampleInputEmail1">Login</label>
                            <input type="text" name="login"  class="form-control" id="login" aria-describedby="emailHelp" placeholder="Enter Login" required>
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Password</label>
                            <input type="password" name="password" id="password"  class="form-control" aria-describedby="emailHelp" placeholder="Enter Password" required>
                        </div>
                        <div class="col-md-12 text-center ">
                            <button type="submit" class=" btn btn-block mybtn btn-primary tx-tfm">Login</button>
                        </div>
                        <div class="form-group">
                            <p class="text-center">Vous n'avez pas de compte? <a href="SignUp.jsp" id="signup">Enregistrez-vous ici!</a></p>
                        </div>
                    </form>

                </div>
            </div>
        </div>
    </div>
</div>



</body>
</html>
