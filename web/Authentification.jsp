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
    <link rel="stylesheet" href="animate.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/animejs/2.0.2/anime.min.js"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8/jquery.min.js"></script>
</head>

<style>

    .ml7 {
        position: relative;
        font-weight: 900;
        font-size: 2.1em;
    }

    .ml7 .text-wrapper {
        position: relative;
        display: inline-block;
        padding-top: 0.2em;
        padding-right: 0.05em;
        padding-bottom: 0.1em;
        overflow: hidden;
    }

    .ml7 .letter {
        transform-origin: 0 100%;
        display: inline-block;
        line-height: 1em;
    }

    html {
        height: 100%;
    }

    header {
        box-sizing: border-box;
        height: 150px;
        /*min-height: 740px;*/
        position: relative;
        width: 100%;
        overflow: hidden;
    }

    body {
        background-color: whitesmoke;
        min-height: 100%;
        margin: 0;
        padding: 0;
        position: relative;
    }

    footer {
        position: absolute;
        bottom: 0;
    }

    #mainfooter {
        background-color: #31374a;
        width: 100%;

    }

    #mainfooter::before {
        background-color: #fd8224;
        content: '';
        display: block;
        height: 4px;
        width: 100%;
    }

    #mainfooter .line:last-child {
        background-color: #212635;
    }

    #mainfooter .line {
        border-top: 1px solid rgba(255, 255, 255, 0.1);
        width: 100%;
        overflow: hidden;
    }

    .li {
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

    ul {
        list-style: none;
        vertical-align: baseline;
        /*text-space: 10;*/
    }

    body > div > div {
        padding: 0;
        margin: 0;
    }

    a:link {
        color: inherit;
    }


</style>
<body>
<%
    /**
     * Vérification user connecté
     */
    session = request.getSession(true);
    if(session.getAttribute("login") != null){
        response.sendRedirect("Accueil.jsp");
    }
%>
<header>
    <nav class="navbar navbar-expand-lg navbar-light bg-light static-top">
        <div class="container">
            <a class="navbar-brand" href="#">
                <img class="button animated bounce" src="gfi.png" alt="logo" width="130">
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive"
                    aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
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

<div class="container" align="middle">
    <div class="row">
        <div class="col-md-5 mx-auto">
            <div id="first">
                <div class="myform form ">
                    <div class="logo mb-3">
                        <div class="col-md-12 text-center">
                            <h1 class="ml7">
  <span class="text-wrapper">
    <span class="letters">GFI Authentification</span>
  </span>
                            </h1>
                        </div>
                        <br>
                    </div>
                    <form action="ControlerAuthent" method="post" name="login">
                        <div class="form-group">
                            <label for="exampleInputEmail1">Login</label>
                            <input type="text" name="login" class="form-control" id="login" aria-describedby="emailHelp"
                                   placeholder="Enter Login" required>
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Password</label>
                            <input type="password" name="password" id="password" class="form-control"
                                   aria-describedby="emailHelp" placeholder="Enter Password" required>
                        </div>
                        <div class="col-md-12 text-center ">
                            <button type="submit" class=" btn btn-block mybtn btn-primary tx-tfm">Login</button>
                        </div>
                    </form>

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
                    <li class="li"><a style="text-decoration: none"
                                      href="https://www.gfi.world/fr-fr/home/mentions-legales">Mentions légales</a></li>
                    <li class="li"><a style="text-decoration: none"
                                      href="https://www.gfi.world/fr-fr/home/plan-du-site"> Plan du site</a></li>
                    <li class="li"><a style="text-decoration: none"
                                      href="https://www.gfi.world/fr-fr/contact">Contact</a></li>
                </ul>
            </nav>
        </div>
    </div>


</footer>
</body>
</html>

<script>
    /**
     * Animation Intitulé
     */
    $('.ml7 .letters').each(function () {
        $(this).html($(this).text().replace(/([^\x00-\x80]|\w)/g, "<span class='letter'>$&</span>"));
    });

    anime.timeline({loop: true})
        .add({
            targets: '.ml7 .letter',
            translateY: ["1.1em", 0],
            translateX: ["0.55em", 0],
            translateZ: 0,
            rotateZ: [180, 0],
            duration: 750,
            easing: "easeOutExpo",
            delay: function (el, i) {
                return 50 * i;
            }
        }).add({
        targets: '.ml7',
        opacity: 0,
        duration: 1000,
        easing: "easeOutExpo",
        delay: 1000
    });
</script>
