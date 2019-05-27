<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="ds.DS" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="DAO.LiensDAO" %>
<%@ page import="pojo.Liens" %><%--
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
    <link rel="stylesheet" href="liens.css">
    <link rel="stylesheet" href="styles.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="hover.css">
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/animejs/2.0.2/anime.min.js"></script>
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

    li.dropdown-content {
        display: inline-block;
    }

    .dropdown-content {
        display: none;
        position: fixed;
        background-color: #f9f9f9;
        min-width: 160px;
        box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
        z-index: 1;
    }

    .dropdown-content a {
        color: black;
        padding: 12px 16px;
        text-decoration: none;
        display: block;
        text-align: left;
    }

    .dropdown-content a:hover {
        background-color: #f1f1f1;
    }

    #srx:hover .dropdown-content {
        display: block;
    }

    .modalLink {
        display: none; /* Hidden by default */
        position: fixed; /* Stay in place */
        z-index: 1; /* Sit on top */
        padding-top: 100px; /* Location of the box */
        left: 0;
        top: 0;
        width: 100%; /* Full width */
        height: 100%; /* Full height */
        overflow: auto; /* Enable scroll if needed */
        background-color: rgb(0,0,0); /* Fallback color */
        background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
    }

    /* Modal Content */
    .modal-contentLink {
        background-color: #fefefe;
        margin: auto;
        padding: 20px;
        border: 1px solid #888;
        width: 80%;
    }

    .modal-contentLink p {
        color: black;
    }

    /* The Close Button */
    .close {
        color: #aaaaaa;
        float: right;
        font-size: 28px;
        font-weight: bold;
    }

    .close:hover,
    .close:focus {
        color: #000;
        text-decoration: none;
        cursor: pointer;
    }


</style>
<body>
<%
    session = request.getSession(true);
    System.out.println(session.getAttribute("login"));
    if (session.getAttribute("login") == null) {
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
                    <li id="srx" class="menu-item menu-item-has-children">
                        <a href="javascript:void(0)" class="hvr-float">Réseaux</a>
                        <div class="dropdown-content">
                            <a href="Fibres.jsp">Fibres Noires</a>
                            <a href="LibreNMS.jsp">Supervision</a>
                        </div>
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

<%--<button id="myBtn" style="margin-left: 75%;margin-top: 25px">Ajouter Lien</button>--%>
<div class="button_cont" align="center" id="myBtn"><a class="example_a" rel="nofollow noopener" style="margin-left: 900px;margin-top: 15px">Add Link</a></div>
<%--<a id="myBtn" class="boton" style="margin-left: 65%;margin-top: 25px"> Ajouter Lien </a>--%>
<div class="button_cont" align="center" onclick="checkbox()" id="removeBtn"><a class="example_a" rel="nofollow noopener" style="margin-right: 85px;margin-top: -64px;float: right;">Remove Link</a></div>

<%--<a id="removeBtn" class="boton2" style="margin-left: 65%;margin-top: -10px;float: right" onclick="checkbox()"> Supprimer Lien </a>--%>

<div id="myModal" class="modalLink">
    <div class="modal-contentLink">
        <span class="close">&times;</span>
        <form action="Liens.jsp" id="form">
            <div class="form-group">
                <label>Lien :</label>
                <input class="form-control" type="text" name="link">
            </div>
            <br>
            <div class="form-group">
                <label>Nom : </label>
                <input class="form-control" type="text" name="name">
            </div>
            <input class="btn btn-primary" type="submit" onclick="ajout_li()" name="Envoyer">
        </form>
    </div>
</div>


<div class="link-list">
    <h2><span id="title-list">Réseaux : </span></h2>
    <ul id="link-ul">
        <%
            try(Connection con = new DS().getConnection()){
                String query = "SELECT * FROM liens";
                PreparedStatement ps = con.prepareStatement(query);
                ResultSet rs = ps.executeQuery();
                int i=0;


                while(rs.next()){
                    out.write("<li><span class=\"arrow\">&#8594</span><a href=\""+rs.getString(1)+"\" target=\"_blank\">" + rs.getString(2) + "</a><input id=\"" + i + "\" type=\"checkbox\" style=\"visibility:hidden;margin-left:50px\" onclick=\"toto("+ "'" + rs.getString(2)+ "'" +")\"></li>");

                    i++;

                }
            }catch (Exception e){
                e.printStackTrace();
            }
        %>
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
<script src="Liens.js"></script>
</html>
<%
    String session_val = (String) session.getAttribute("login");
%>
<script>
    function toto(name){
        document.location.href = "DeleteLink.jsp?nom="+name;
    }
</script>
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
    let session_obj = '<%=session_val%>';

    if (session_obj !== 'admin') {
        document.querySelector('#adminbtn').style.display = 'none';
        document.getElementById('myBtn').style.display = 'none';
        document.getElementById('removeBtn').style.display = 'none';
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
<script>
    function ajout_li(){
        <%
        String link = request.getParameter("link");
        String name = request.getParameter("name");

        LiensDAO.create(new Liens(link,name));
        %>
    }
</script>
