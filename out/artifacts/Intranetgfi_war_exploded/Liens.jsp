<%--
  Created by IntelliJ IDEA.
  User: theo.lietar-tmp
  Date: 11/04/2019
  Time: 11:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Liens</title>
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
</style>
<body>
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
            <a class="navbar-brand" href="Accueil.jsp">
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

    <div id="areaClients">
        <div class="page-list-header-desc" style="padding-top: 50px">
            <h1 class="ml1">
  <span class="text-wrapper">
    <span class="line line1"></span>
    <span class="letters" style="font-family: 'Ostrich Sans'">LIENS UTILES</span>
    <span class="line line2"></span>
  </span>
            </h1>
            <div>
                <p>Ici, vous trouverez tous les liens utiles qui vont mèneront vers des outils, des sites utiles.</p>
            </div>
        </div>

        <div class="page-list-header-visu">
            <img src="link-symbol_icon-icons.com_73507.png" style="width: 35%;color:white">
        </div>
    </div>

    <div class="link-list">
        <h2><span id="title-list">Réseaux : </span></h2>
        <ul id="link-ul">
            <li><span class="arrow">&#8594</span><a href="http://cacti.si3si.int/" target="_blank">Cacti</a></li>
            <li><span class="arrow">&#8594</span><a href="https://lb-dmz-a.si3si.int" target="_new">new F5 dmz a</a></li>
            <li><span class="arrow">&#8594</span><a href="https://lb-dmz-b.si3si.int" target="_new">new F5 dmz b</a></li>
            <li><span class="arrow">&#8594</span><a href="https://fw-biz-a.si3si.int" target="_new">fw-biz-a</a></li>
            <li><span class="arrow">&#8594</span><a href="https://fw-vpn-a.si3si.int" target="_new">fw-vpn-a</a></li>
            <li><span class="arrow">&#8594</span><a href="https://fw-vpn-b.si3si.int" target="_new">fw-vpn-b</a></li>
            <li><span class="arrow">&#8594</span><a href="https://192.168.125.12/tmui/Control/jspmap/tmui/overview/traffic_summary/general.jsp" target="_new">lb-dmz-a</a></li>
            <li><span class="arrow">&#8594</span><a href="https://192.168.125.13/tmui/Control/jspmap/tmui/system/stats/list.jsp" target="_new">lb-dmz-b</a></li>
            <li><span class="arrow">&#8594</span><a href="https://lb-lan-croix/tmui/login.jsp" target="_new">lb-lan-croix</a></li>
            <li><span class="arrow">&#8594</span><a href="https://lb-lan-marcq/tmui/login.jsp" target="_new">lb-lan-marcq</a></li>
            <li><span class="arrow">&#8594</span><a href="https://192.168.125.38/tmui/login.jsp" target="_new">llb-marcq</a></li>
            <li><span class="arrow">&#8594</span><a href="https://192.168.125.37/tmui/login.jsp" target="_new">llb-croix</a></li>
            <li><span class="arrow">&#8594</span><a href="CalculatriceIP.jsp">Calculatrice IP</a></li>
            <li><span class="arrow">&#8594</span><a href="LibreNMS.jsp">Supervision d'équipements</a></li>
        </ul>
    </div>
<br>
<br>
<br>

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
<%
    String session_val = (String) session.getAttribute("login");
%>
<script>
    function deco() {
        /**
         * Methode qui écrase la session de l'utilisateur
         * @type {string}
         */
        document.location.href = "deconnexion.jsp";
    }
</script>
<script type="text/javascript">
    var session_obj = '<%=session_val%>';

    if (session_obj !== 'admin') {
        document.querySelector('#adminbtn').style.display = 'none';
    }

    // alert(session_obj);
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