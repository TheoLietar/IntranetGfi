<%@ page import="java.sql.Connection" %>
<%@ page import="ds.DS" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.ResultSetMetaData" %><%--
  Created by IntelliJ IDEA.
  User: theo
  Date: 01/04/19
  Time: 14:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Portail</title>
    <link rel="apple-touch-icon" sizes="180x180" href="/WEB-INF/ressources/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="/WEB-INF/ressourcesfavicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="/WEB-INF/ressources/favicon-16x16.png">
    <link rel="manifest" href="/site.webmanifest">
    <link rel="stylesheet" href="animate.css">
    <link rel="stylesheet" href="dropdown.css">
    <link href='http://fonts.googleapis.com/css?family=Dancing+Script' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="h1.css">
    <link rel="stylesheet" href="styles.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="hover.css">
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/animejs/2.0.2/anime.min.js"></script>
    <script src="main.js"></script>
    <script src="Dropdown.js"></script>
</head>

<style>
    html {
        height: 100%;
    }

    header {
        box-sizing: border-box;
        /*height: 150px;*/
        /*min-height: 740px;*/
        position: relative;
        width: 100%;
        overflow: hidden;
    }

    .contain{
        position: relative;
    }

    body {
        background-color: whitesmoke;
        min-height: 100%;
        height: auto;
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

    ul {
        list-style: none;
        vertical-align: baseline;
        /*text-space: 10;*/
    }

    .menuTop {
        background-color: #273b54;
        float: none;
        clear: both;
        width: 100%;
        height: 62px;
    }

    .navMenu {
        margin: 0;
        padding: 0;
        position: relative;
        width: 100%;
        color: #FFF;
        vertical-align: baseline;

    }

    .wrapper {
        display: block;
        margin: 0 auto;
        position: relative;
        max-width: 1280px;
        padding: 0 32px;
    }

    #idnav {
        padding: 0;
        margin: 0;
        list-style-type: none;
    }

    #idnav li {
        display: inline;
        padding: 0 2em;
        color: #ffffff;
        border-right: #fd8224;

    }

    #idnav li a {
        color: #ffffff;
        width: 16.66%;
        text-align: center;
        font-size: 17px !important;
        /*font-weight: 200;*/
        float: left;
        line-height: 64px;
        text-decoration: none;
    }

    .line .section li a {
        color: #ffffff;
        font-size: 0.8em;
    }

    .submenu {
        display: none;
        position: absolute;
        left: 2px;
        top: 2em;
        white-space: nowrap;
        background: grey;
        margin-top: -3px;
    }

    #idnav li:hover .submenu {
        display: block;
        top: 60px;
    }

    .nav-item {
        float: left;
        position: relative;
    }

    #searchbar {
        position: relative;
        width: 400px;
        height: auto;
    }

    .formulaire {
        display: inline-block;
        margin-left: 100px;
    }

    .formulaire .champ {
        width: 230px;
        height: 35px;
    }

    .formulaire .bouton {
        background-repeat: no-repeat;
        width: 35px;
        height: 30px;
        padding: 0;
        box-shadow: none !important;
    }

    .hot-container p {
        margin-top: 10px;

    }

    .hot-container a {
        text-decoration: none;
        margin: 0 10px;
    }

    .hot-container {
        min-height: 50px;
        margin-top: 7px;
        width: 100%;
        text-align: center;
    }

    a.btn {
        display: inline-block;
        color: #666666;
        background-color: #eeeeee;
        text-transform: uppercase;
        letter-spacing: 2px;
        font-size: 12px;
        padding: 10px 30px;
        border-radius: 5px;
        -moz-border-radius: 5px;
        -webkit-border-radius: 5px;
        border: 1px solid rgba(0, 0, 0, 0.3);
        border-bottom-width: 3px;
    }

    a.btn:hover {
        background-color: #e3e3e3;
        border-color: rgba(0, 0, 0, 0.5);
    }

    a.btn:active {
        background-color: #CCC;
        border-color: rgba(0, 0, 0, 0.9);
    }

    #liClient {
        text-align: center;
        margin-left: 500px;
    }

    #menuhaut {
        float: left;
        line-height: 0;
        display: block;
        box-sizing: border-box;
    }


    .menu-item-has-children > a:first-child {
        padding-right: 220px;
    }

    .menu-item-has-children a {
        padding-bottom: -50px;
        padding-top: 20px;
        font-size: 1.1em;
        font-weight: bold;
        font-style: normal;
        text-transform: none;
        text-decoration: none;
        color: #1a1c40;
        display: inline-block;
        position: relative;
        margin: 0;
        border: 0;
        outline: 0;
        background: 0 0;
        vertical-align: baseline

    }

    #top-search {
        display: block;
        float: right;
        position: relative;
        width: 18px;
        margin: 3px 0 0 22px;
    }


    div {
        display: block;
        margin: 0;
        padding: 0;
        border: 0;
        outline: 0;
        background: 0 0;
        font-size: 100%;
        vertical-align: baseline;
    }


    #areaClients {
        height: 380px;
        background-image: url("right-shape-yellow.svg");
        position: relative;
        background-color: black;
        background-position: 100% 100%;
        background-repeat: no-repeat;
    }

    .page-list-header-desc {
        margin-left: 130px;
        flex: 1;
        height: 350px;
        width: 40%;
        float: left;
    }

    .page-list-header-desc h1 {
        padding-bottom: 24px;
        /*color: #28336d;*/
        color: red;
        font-size: 54px !important;
    }
    p {
        font-family: 'Poppins', 'Helvetica', 'Arial', 'Lucida', 'sans-serif';
        font-weight: 300;
        display: block;
        margin-block-start: 1em;
        margin-block-end: 1em;
        margin-inline-start: 0px;
        margin-inline-end: 0px;
        color: white;
    }

    .page-list-header-visu img {
        display: block;
        max-width: 65%;
        margin: 0 auto;
        padding-top: 13px;
    }

    img {
        height: auto;
    }

    .page-list-header-visu {
        flex: 1;
        height: 350px;
        width: 37%;
        position: absolute;
        float: right;
        margin-left: 60%;
    }

    #scrollUp {
        position: fixed;
        bottom: 100px;
        /*right: -100px;*/
        opacity: 0.5;
    }

    hr {
        width: 50%;
        color: #273b54;
        border: 1px solid darkblue;
    }

    .back-to-top {
        right: 40px;
        bottom: 180px;
        border: none;
        color: rgba(0, 0, 0, .4);
        display: none;
        outline: none;
        text-decoration: none;
        text-transform: uppercase;
        position: fixed;
        -webkit-transform: rotate(-90deg);
        -moz-transform: rotate(-90deg);
        -ms-transform: rotate(-90deg);
        -o-transform: rotate(-90deg);
        transform: rotate(-90deg);
        transform-origin: 100% 50%;
        -webkit-transform-style: preserve-3d;
        -moz-transform-style: preserve-3d;
        -ms-transform-style: preserve-3d;
        -o-transform-style: preserve-3d;
        transform-style: preserve-3d;
        z-index: 1;
    }

    .back-to-top:focus {
        color: #000;
    }

    .back-to-top:hover i {
        -webkit-transform: translateX(10px);
        -moz-transform: translateX(10px);
        -ms-transform: translateX(10px);
        -o-transform: translateX(10px);
        transform: translateX(10px)
    }

    .back-to-top:hover {
        color: black;
        text-decoration: none;
    }

    .navbar-brand{
        padding-left: -30px;
        left: 0;
    }

    .navbar{
        left: 0;
    }

</style>

<body id="body">
<%
    session = request.getSession(true);
    System.out.println(session.getAttribute("login"));
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
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive"
                    aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <nav id="menuhaut" class="transition">
                <ul id="ulTop">
                    <li class="menu-item menu-item-has-children"><a href="Accueil.jsp" class="hvr-float">Clients</a>
                    </li>
                    <li id="adminbtn" class="menu-item menu-item-has-children"><a href="Admin.jsp"
                                                                                  class="hvr-float cta">Vue
                        Admin</a></li>
                    <li id="liens" class="menu-item menu-item-has-children">
                        <a href="Liens.jsp" class="hvr-float">Liens Utiles</a>
                    </li>
                    <li id="putty" class="menu-item menu-item-has-children">
                        <a href="Putty.jsp" class="hvr-float">Putty</a>
                    </li>
                </ul>
            </nav>


        </div>

        <div class="wrapper2">
            <button onclick="deco()" class="btn btn-4 btn-4a icon-arrow-right hvr-overline-from-right">Deconnexion
            </button>
        </div>


        </div>

    </nav>


</header>
<div class="contain">
    <div id="areaClients">
        <div class="page-list-header-desc" style="padding-top: 50px">
            <h1 class="ml1">
  <span class="text-wrapper">
    <span class="line line1"></span>
    <span class="letters" style="font-family: 'Ostrich Sans'">MES CLIENTS</span>
    <span class="line line2"></span>
  </span>
            </h1>
            <div>
                <p>Avec votre nouvel intranet, vous disposez de toutes les informations nécessaires concernant vos
                    clients.
                    Alors n'hésitez pas à le consulter régulièrement!</p>
            </div>
        </div>

        <div class="page-list-header-visu">
            <img src="customer-stories-header-key-visual.png">
        </div>
    </div>

    <div class="myClients" style="width: 500px">

    </div>

    <%
        for (int i = 0; i < 2; i++) {
            out.write("<br>");
        }
    %>
    <br>

    <div class="ap-container-1 ap-container-wrap">
        <div class="ap-container">
            <div class="smls-main-logo-outer-838031243 smls-main-logo-wrapper smls-resposive-wrap" data-logo-type="without_filter">
                <div class="smls-list-container-template-1 smls-overlay-effect">
                    <%
                        try(Connection con = new DS().getConnection()){
                            String query = "SELECT * FROM client";
                            PreparedStatement ps = con.prepareStatement(query);
                            ResultSet rs = ps.executeQuery();
                            ResultSetMetaData rsmd = rs.getMetaData();

                            while(rs.next()){
                                out.write("<div class=\"smls-list-block clearfix hide-animation fadeIn\">");
                                out.write("<div class=\"smls-list-image-wrap smls-icon-center\">");
                                out.write("<div class=\"smls-inline-image-wrap\">");
                                out.write("<img src=\""+rs.getString(8)+"\">");
                                out.write("<div class=\"smls-overlay-wrap\"></div>");
                                out.write("</div>");
                                out.write("</div>");
                                out.write("<div class=\"smls-list-detail-wrap\">");//Ouvre le detail-wrap
                                out.write("<div class=\"smls-list-title\">"+ rs.getString(2) + "</div>");
                                out.write("<div class=\"smls-list-description\">");
                                out.write("<ul>");
                                out.write("<li><a class=\"hvr-float\" href=\"" + rs.getString(3) + "\" target=\"_new\">Confluence</a></li>");
                                out.write("<li><a class=\"hvr-float\" href=\"" + rs.getString(4) + "\" target=\"_new\">Ticketting</a></li>");
                                out.write("<li><a class=\"hvr-float\" href=\"" + rs.getString(5) + "\" target=\"_new\">SLA</a></li>");
                                out.write("<li><a class=\"hvr-float\" href=\"" + rs.getString(6) + "\" target=\"_new\">Contact</a></li>");
                                out.write("<li><a class=\"hvr-float\" href=\"" + rs.getString(7) + "\" target=\"_new\">Plage service</a></li>");
                                out.write("</ul>");
                                out.write("</div>");
                                out.write("</div>");
                                out.write("</div>");//ferme le detail-wrap
                                out.write("<hr>");
                            }
                        }
                    %>
                </div>
            </div>
        </div>
    </div>

    <br>
    <br>
    <br>
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

<a href="#" class="back-to-top" style="display: block">
    <span>Scroll to Top</span>
    <i class="icon-right"></i>
</a>

</body>
</html>

<%
    String session_val = (String) session.getAttribute("login");
%>

<script type="text/javascript">
    var session_obj = '<%=session_val%>';

    if (session_obj !== 'admin') {
        document.querySelector('#adminbtn').style.display = 'none';
    }

    // alert(session_obj);
</script>

<script type="text/javascript">
    $(function () {
        $('a[href=#header]').click(function () {
            $('html').animate({scrollTop: 0}, 'slow');
            return false;
        });
    });
</script>
<script>
    function deco() {
        document.location.href = "deconnexion.jsp";
    }
</script>
<script>
    // Wrap every letter in a span
    $('.ml1 .letters').each(function () {
        $(this).html($(this).text().replace(/([^\x00-\x80]|\w)/g, "<span class='letter'>$&</span>"));
    });
    anime.timeline({loop: true})
        .add({
            targets: '.ml1 .letter',
            scale: [0.3, 1],
            opacity: [0, 1],
            translateZ: 0,
            easing: "easeOutExpo",
            duration: 600,
            delay: function (el, i) {
                return 70 * (i + 1)
            }
        }).add({
        targets: '.ml1 .line',
        scaleX: [0, 1],
        opacity: [0.5, 1],
        easing: "easeOutExpo",
        duration: 700,
        offset: '-=875',
        delay: function (el, i, l) {
            return 80 * (l - i);
        }
    }).add({
        targets: '.ml1',
        opacity: 0,
        duration: 1000,
        easing: "easeOutExpo",
        delay: 1000
    });
</script>