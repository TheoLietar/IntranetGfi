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
    <link rel="stylesheet" href="animate.css">
</head>

<style>
    .confirmation {
        display: none;
        color : red;
        text-align: center;
    }

    html{
        height: 100%;
    }
    header{
        box-sizing: border-box;
        height: 150px;
        /*min-height: 740px;*/
        position: relative;
        width: 100%;
        overflow: hidden;
    }
    body{
        background-color: whitesmoke;
        min-height: 100%;
        margin: 0;
        padding: 0;
        position: relative;
    }

    footer{
        position: absolute;
        bottom: 0;
    }
    #mainfooter{
        background-color: #31374a;
        width: 100%;

    }

    #mainfooter::before{
        background-color: #fd8224;
        content: '';
        display: block;
        height: 4px;
        width: 100%;
    }

    #mainfooter .line:last-child{
        background-color: #212635;
    }

    #mainfooter .line{
        border-top: 1px solid rgba(255,255,255,0.1);
        width: 100%;
        overflow: hidden;
    }

    .li{
        color: #ffffff;
        font-weight: 400;
        display: inline-block;
        vertical-align: top;
        margin-left: 10px;
        margin-right: 10px;
        font-family: 'proximanova-extrabold';
        font-size: 1.3rem;

    }

    .line .section li a {
        color: #ffffff;
        font-size: 0.8em;
    }

    ul{
        list-style: none;
        vertical-align: baseline;
        /*text-space: 10;*/
    }

    body > div > div{
        padding: 0;
        margin: 0;
    }

    a:link{
        color: inherit;
    }

</style>
<body>
<%
    /**
     * Empêche l'accès direct en mode non connecté
     */
    session = request.getSession(true);

    if(session.getAttribute("login") == null){
        response.sendRedirect("Authentification.jsp");
    }
%>
<header>
    <nav class="navbar navbar-expand-lg navbar-light bg-light static-top">
        <div class="container">
            <a class="navbar-brand" href="#">
                <img class="button animated bounce" src="gfi.png" alt="logo" width="130">
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="#">Home
                            <span class="sr-only">(current)</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Infos.jsp">Informations pratiques</a>
                    </li>

                </ul>
            </div>
        </div>
    </nav>
</header>

<div class="container">
    <div class="row">
        <div class="col-md-5 mx-auto">
            <div id="first">
                <div class="myform form ">
                    <div class="logo mb-3">
                        <div class="col-md-12 text-center">
                            <h1>Ajoutez un utilisateur!</h1>
                        </div>
                    </div>
                    <form action="ControlerSignUp" method="post" onsubmit="return render()">
                        <div class="form-group">
                            <label>Nom</label>
                            <input type="text" name="nom"  class="form-control" id="nom" aria-describedby="emailHelp" placeholder="Enter Nom" required>
                        </div>
                        <div class="form-group">
                            <label>Prenom</label>
                            <input type="text" name="prenom"  class="form-control" id="prenom" aria-describedby="emailHelp" placeholder="Enter Prenom" required>
                        </div>
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
                            <button type="submit" class=" btn btn-block mybtn btn-primary tx-tfm">Allons y!!</button>
                        </div>
                        <br>
                    </form>

                    <br>
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


<footer id="mainfooter">
    <div class="line">

    </div>

    <div class="line">
        <div class="section">
            <nav>
                <ul>
                    <li class="li"><a style="text-decoration: none" href="https://www.gfi.world/fr-fr/home/mentions-legales">Mentions légales</a></li>
                    <li class="li"><a style="text-decoration: none" href="https://www.gfi.world/fr-fr/home/plan-du-site"> Plan du site</a></li>
                    <li class="li"><a style="text-decoration: none" href="https://www.gfi.world/fr-fr/contact">Contact</a> </li>
                </ul>
            </nav>
        </div>
    </div>


</footer>
</body>
</html>

<script>
    /**
     * Vérifie l'égalité des mots de passe et affiche si le mot de passe est incorrect
     * @returns {boolean}
     */
    function render() {
        let login = document.querySelector("#login").value;
        console.log(document.querySelector("#password").value);
        console.log(document.querySelector("#password2").value);
        if(document.querySelector("#password").value !== document.querySelector("#password2").value) {
            console.log("not equals");
            document.querySelector(".confirmation").style.display = "block";
            return false;
        }else{
            alert('Le compte pour ' + login + ' à été crée!');
            return true;
        }

        return true;
    }
</script>
