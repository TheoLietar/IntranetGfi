<%@ page import="ds.DS" %>
<%@ page import="java.sql.*" %><%--
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
    <link rel="stylesheet" href="animate.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="hover.css">
    <link rel="stylesheet" href="form.css">
    <link rel="stylesheet" href="table.css">
</head>

<style>

    html{
        height: 100%;
        margin: 0;
        padding: 0;
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
        width: 100%;
        margin: 0;
        padding: 0;
        position: relative;
    }

    footer{
        position: fixed;
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
        left: 0;
        top: 2em;
        white-space: nowrap;
        background: grey;
        margin-top: -2px;
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

    #addClient{
        text-align: center;
        margin-left: 300px;
    }

    #addUser{
        text-align: center;
        margin-left: 400px;
        margin-top: 0px;
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

    #img-client{
        margin-left: 700px;
        border-radius: 50%;
        width: 70px;
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


            <div class="hot-container">
                <p>
                    <a href="Accueil.jsp" class="btn">Vue normale</a>
                </p>
            </div>

            <%--        <div id="searchbar">--%>
            <%--            <form action="" class="formulaire">--%>
            <%--                <input class="champ" type="text" placeholder="Search..."/>--%>
            <%--                <input class="bouton" type="submit" value=" "/>--%>
            <%--            </form>--%>
            <%--        </div>--%>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="Accueil.jsp">Home
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

    <div class="menuTop">
        <div class="wrapper">
            <nav class="navMenu">
                <ul id="idnav">
                    <li><a class="hvr-bounce-in" onclick="return addForm()" style="font-size: 14px" id="addClient">Ajouter un client</a>
                    </li>
                    <li><a class="hvr-bounce-in" onclick="return addUser()" style="font-size: 14px" id="addUser">Ajouter un utilisateur</a>
                    </li>
                </ul>
            </nav>
        </div>
    </div>



</header>
<br>

<img id="img-client" src="client-1295901_960_720.png" alt="client"/>

<div id="div-form" style="padding-bottom: 50px">
    <form action="ControlerAddClient" id="formClient" class="form-style-9">
        <ul>
            <li>
                <input type="text" name="nom" class="field-style field-split align-left" placeholder="Nom Client" />
                <input type="text" name="confluence" class="field-style field-split align-right" placeholder="Lien confluence" />

            </li>
            <li>
                <input type="text" name="ticketting" class="field-style field-split align-left" placeholder="Lien vers outil ticketting" />
                <input type="text" name="sla" class="field-style field-split align-right" placeholder="Lien SLA" />
            </li>
            <li>
                <input type="text" name="contact" class="field-style field-full align-none" placeholder="Contact" />
            </li>
            <li>
                <input type="text" name="img" class="field-style field-split align-left" placeholder="Lien image PNG" />
            </li>
            <li>
                <input type="text" name="plage" class="field-style" placeholder="Plage de service" />
            </li>
            <li>
                <input type="submit" value="Ajouter Client" />
            </li>
        </ul>
    </form>
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
    function addForm() {
        event.preventDefault();
        document.location.href="AjoutClient.jsp";
    }
</script>

<script>
    function addUser(){
        event.preventDefault();
        document.location.href = "SignUp.jsp";
    }
</script>


