<%--
  Created by IntelliJ IDEA.
  User: theo
  Date: 01/04/19
  Time: 09:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Créer un compte</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet">
    <link href='https://fonts.googleapis.com/css?family=Lato:300,400,500' rel='stylesheet' type='text/css'>
    <link href='custom.css' rel='stylesheet' type='text/css'>
</head>

<style>
    .confirmation {
        display: none;
        color : red;
        text-align: center;
    }
</style>
<body>

<div class="container">
    <div class="row">
        <div class="col-md-5 mx-auto">
            <div id="first">
                <div class="myform form ">
                    <div class="logo mb-3">
                        <div class="col-md-12 text-center">
                            <h1>Enregistrez-vous!</h1>
                        </div>
                    </div>
                    <form action="ControlerSignUp" method="post" onsubmit="return validateForm()">
                        <div class="form-group">
                            <label>Login</label>
                            <input type="text" name="login"  class="form-control" id="login" aria-describedby="emailHelp" placeholder="Enter Login" required>
                        </div>
                        <div class="form-group">
                            <label>Password</label>
                            <input type="password" name="password" id="password"  class="form-control" aria-describedby="emailHelp" placeholder="Enter Password" required>
                        </div>
                        <div class="form-group">
                            <label>Confirm Password</label>
                            <input type="password" name="password2" id="password2"  class="form-control" aria-describedby="emailHelp" placeholder="Confirm Password" required>
                        </div>
                        <span class="confirmation">Password incorrect</span>
                        <br>
                        <div class="col-md-12 text-center ">
                            <button type="submit" class=" btn btn-block mybtn btn-primary tx-tfm">Get started for free!</button>
                        </div>
                        <div class="form-group">
                            <p class="text-center"> <a href="Authentification.jsp" id="signup">Already have an account?</a></p>
                        </div>
                    </form>
                    <div class="form-group">
                        <div class="g-recaptcha" data-sitekey="6LfKURIUAAAAAO50vlwWZkyK_G2ywqE52NU7YO0S" data-callback="verifyRecaptchaCallback" data-expired-callback="expiredRecaptchaCallback"></div>
                        <input class="form-control d-none" data-recaptcha="true" required data-error="Please complete the Captcha">
                        <div class="help-block with-errors"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>




</body>
</html>
