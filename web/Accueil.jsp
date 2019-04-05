<%--
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
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="hover.css">
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8/jquery.min.js"></script>
</head>

<style>
    html{
        height: 100%;
    }
    header{
        box-sizing: border-box;
        /*height: 150px;*/
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

    ul{
        list-style: none;
        vertical-align: baseline;
        /*text-space: 10;*/
    }

    .menuTop{
        background-color: #273b54;
        float: none;
        clear: both;
        width: 100%;
        height: 62px;
    }

    .navMenu{
        margin: 0;
        padding: 0;
        position: relative;
        width: 100%;
        color: #FFF;
        vertical-align: baseline;

    }

    .wrapper{
        display: block;
        margin: 0 auto;
        position: relative;
        max-width: 1280px;
        padding: 0 32px;
    }

    #idnav{
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

    #idnav li a{
        color: #ffffff;
        width: 16.66%;
        text-align: center;
        font-size: 17px!important;
        /*font-weight: 200;*/
        float: left;
        line-height: 64px;
        text-decoration: none;
    }

    .line .section li a {
        color: #ffffff;
        font-size: 0.8em;
    }

    .submenu{
        display: none;
        position: absolute;
        left: 2px;
        top: 2em;
        white-space: nowrap;
        background: grey;
        margin-top: -3px;
    }

    #idnav li:hover .submenu{
        display: block;
        top: 60px;
    }

    .nav-item{
        float: left;
        position: relative;
    }

    #searchbar{
        position: relative;
        width: 400px;
        height: auto;
    }

    .formulaire{
        display: inline-block;
        margin-left: 100px;
    }

    .formulaire .champ{
        width: 230px;
        height: 35px;
    }

    .formulaire .bouton{
        background-image: url("search.png");
        background-repeat: no-repeat;
        width: 35px;
        height: 30px;
        padding: 0;
        box-shadow: none!important;
    }

    .hot-container p {
        margin-top: 10px;

    }
    .hot-container a{
        text-decoration: none;
        margin: 0 10px;
    }

    .hot-container{
        min-height: 50px;
        margin-top: 7px;
        width: 100%;
        text-align: center;
    }

    a.btn{
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
        border: 1px solid rgba(0,0,0,0.3);
        border-bottom-width: 3px;
    }

    a.btn:hover {
        background-color: #e3e3e3;
        border-color: rgba(0,0,0,0.5);
    }

    a.btn:active {
        background-color: #CCC;
        border-color: rgba(0,0,0,0.9);
    }

    #liClient{
        text-align: center;
        margin-left: 500px;
    }

    #menuhaut{
        float: left;
        line-height: 0;
        display: block;
        box-sizing: border-box;
    }

    #ulTop{
        animation: none!important;
        animation-duration: 0s!important;
        animation-timing-function: ease !important;
        animation-delay: 0s !important;
        animation-iteration-count: 1 !important;
        animation-direction: normal !important;
        animation-fill-mode: none !important;
        animation-play-state: running !important;
        animation-name: none !important;
        z-index: 99;
        opacity: 1;
        list-style: none;
    }

    #ulTop li{
        display: inline-block;
        padding-right: 22px;
        font-size: 14px;
        word-wrap: break-word;
        position: relative;
        line-height: 1em;
        text-align: -webkit-match-parent;
    }

    .menu-item-has-children>a:first-child{
        padding-right: 220px;
    }

    .menu-item-has-children a{
        padding-bottom: -50px;
        padding-top: 20px;
        font-size: 1.2em;
        font-weight: bold;
        font-style: normal;
        text-transform: none;
        text-decoration: none;
        color: #1a1c40;
        display: block;
        position: relative;
        margin: 0;
        border: 0;
        outline: 0;
        background: 0 0;
        vertical-align: baseline

    }

    #top-search{
        display: block;
        float: right;
        position: relative;
        width: 18px;
        margin: 3px 0 0 22px;
    }



    div{
        display: block;
        margin: 0;
        padding: 0;
        border: 0;
        outline: 0;
        background: 0 0;
        font-size: 100%;
        vertical-align: baseline;
    }




    #areaClients{
        height: 380px;
        background-image: url("right-shape-yellow.svg");
        position: relative;
        background-color: #f7f7f7;
        background-position: 100% 100%;
        background-repeat: no-repeat;
    }

    .page-list-header-desc{
        margin-left: 130px;
        flex: 1;
        height: 350px;
        width: 40%;
        float: left;
    }

    .page-list-header-desc h1{
        padding-bottom: 24px;
        color: #28336d;
        font-size: 54px!important;
    }

    p {
        font-family: 'Poppins', 'Helvetica', 'Arial', 'Lucida', 'sans-serif';
        font-weight: 300;
        display: block;
        margin-block-start: 1em;
        margin-block-end: 1em;
        margin-inline-start: 0px;
        margin-inline-end: 0px;
    }

    .page-list-header-visu img{
        display: block;
        max-width: 65%;
        margin: 0 auto;
        padding-top: 13px;
    }

    img{
        height: auto;
    }

    .page-list-header-visu{
        flex: 1;
        height: 350px;
        width: 37%;
        position: absolute;
        float: right;
        margin-left: 60%;
    }

    #scrollUp{
        position: fixed;
        bottom : 100px;
        /*right: -100px;*/
        opacity: 0.5;
    }

</style>


<body>
<header>
    <nav class="navbar navbar-expand-lg navbar-light bg-light static-top">
    <div class="container">
        <a class="navbar-brand" href="#">
            <img class="button animated bounce" src="gfi.png" alt="logo" width="130">
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>


<%--        <div class="hot-container">--%>
<%--            <p>--%>
<%--                <a href="Admin.jsp" class="btn">Vue Admin</a>--%>
<%--            </p>--%>
<%--        </div>--%>

        <nav id="menuhaut">
            <ul id="ulTop">
                <li class="menu-item menu-item-has-children"><a href="Accueil.jsp" class="hvr-float">Clients</a></li>
                <li id="adminbtn" class="menu-item menu-item-has-children"><a href="Admin.jsp" class="hvr-float">Vue Admin</a></li>
            </ul>
        </nav>



<%--        <div id="searchbar">--%>
<%--            <form action="" class="formulaire">--%>
<%--                <input class="champ" type="text" placeholder="Search..."/>--%>
<%--                <input class="bouton" type="submit" value=" "/>--%>
<%--            </form>--%>
<%--        </div>--%>
<%--        <div class="collapse navbar-collapse" id="navbarResponsive">--%>
<%--            <ul class="navbar-nav ml-auto">--%>
<%--                <li class="nav-item active">--%>
<%--                    <a class="nav-link" href="Accueil.jsp">Home--%>
<%--                        <span class="sr-only">(current)</span>--%>
<%--                    </a>--%>
<%--                </li>--%>
<%--                <li class="nav-item">--%>
<%--                    <a class="nav-link" href="Infos.jsp">Informations pratiques</a>--%>
<%--                </li>--%>

<%--            </ul>--%>

<%--            <div class="hot-container" id="deco">--%>
<%--                <p>--%>
<%--                    <a href="deconnexion.jsp" class="btn btn-red">Deconnexion</a>--%>
<%--                </p>--%>
<%--            </div>--%>

        </div>


    </div>

    </nav>

<%--    <div class="menuTop">--%>
<%--        <div class="wrapper">--%>
<%--            <nav class="navMenu">--%>
<%--                <ul id="idnav">--%>
<%--                    <li><a id="liClient" class="hvr-wobble-skew" href="Clients.jsp" style="font-size: 14px"> Mes Clients</a>--%>
<%--&lt;%&ndash;                        <ul class="submenu">&ndash;%&gt;--%>
<%--&lt;%&ndash;                            <li class="nav-item"><a href="myClients.jsp">Mes clients</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;                        </ul>&ndash;%&gt;--%>
<%--                    </li>--%>
<%--&lt;%&ndash;                    <li><a href="Autre.jsp" style="font-size: 14px">Others</a>&ndash;%&gt;--%>
<%--&lt;%&ndash;                    </li>&ndash;%&gt;--%>
<%--                </ul>--%>
<%--            </nav>--%>
<%--        </div>--%>
<%--    </div>--%>


</header>

<div id="areaClients">
    <div class="page-list-header-desc" style="padding-top: 50px">
        <h1>Mes clients</h1>
        <div>
            <p>Avec votre nouvel intranet, vous disposez de toutes les informations nécessaires concernant vos clients. Alors n'hésitez pas à le consulter régulièrement!</p>
        </div>
    </div>
    
    <div class="page-list-header-visu">
        <img src="customer-stories-header-key-visual.png">
    </div>
</div>

<div class="myClients" style="width: 500px">

</div>

<%
    for(int i=0;i<50;i++){
        out.write("<br>");
    }
%>

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

<%
    String session_val = (String) session.getAttribute("login");
    System.out.println(session_val);
%>

<script type="text/javascript">
    var session_obj = '<%=session_val%>';

    if(session_obj !== 'admin'){
        document.querySelector('#adminbtn').style.display = 'none';
    }

    // alert(session_obj);
</script>

<script type="text/javascript">
    $(function() {
        $('a[href=#header]').click(function(){
            $('html').animate({scrollTop:0}, 'slow');
            return false;
        });
    });
</script>

