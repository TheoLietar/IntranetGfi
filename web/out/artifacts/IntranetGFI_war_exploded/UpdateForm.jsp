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
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Update</title>
    <link rel="stylesheet" href="animate.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="hover.css">
    <link rel="stylesheet" href="form.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="table.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<script type="text/javascript">
    $(document).ready(function(){
        // Activate tooltip
        $('[data-toggle="tooltip"]').tooltip();

        // Select/Deselect checkboxes
        var checkbox = $('table tbody input[type="checkbox"]');
        $("#selectAll").click(function(){
            if(this.checked){
                checkbox.each(function(){
                    this.checked = true;
                });
            } else{
                checkbox.each(function(){
                    this.checked = false;
                });
            }
        });
        checkbox.click(function(){
            if(!this.checked){
                $("#selectAll").prop("checked", false);
            }
        });
    });
</script>
<style>

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

    .hidetext{
        -webkit-text-security: disc;
    }

    .form-group{
        margin-bottom: 15px;
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
                    <li><a class="hvr-bounce-in" href="SignUp.jsp"  style="font-size: 14px" id="addUser">Ajouter un utilisateur</a>
                    </li>
                </ul>
            </nav>
        </div>
    </div>

</header>


<br>
<br>

<div id="editUser" style="height: 600px">
    <div class="modal-dialog">
        <div class="modal-content">
            <form action="ControlerUpdateUser">
                <div class="modal-header">
<%--                    ::before--%>
                    <h4 class="modal-title">Éditer Utilisateur</h4>
                    <button type="button" class="close" aria-hidden="true">x</button>
<%--                    ::after--%>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label>Nom</label>
                        <input type="text" name="nom" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Prénom</label>
                        <input type="text" name="prenom" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Login</label>
                        <input type="text" name="login" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Password</label>
                        <input type="text" name="password" class="form-control" required>
                    </div>
                </div>
                <div class="modal-footer">
<%--                    ::before--%>
                    <input type="button" onclick="cancel()" class="btn btn-default" value="Cancel">
                    <input type="submit" class="btn btn-info" value="Save">
<%--                    ::after--%>
                </div>
            </form>
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
    function addForm() {
        event.preventDefault();
        document.location.href="AjoutClient.jsp";
    }
</script>
<script>
    function render() {
        event.preventDefault();
        document.location.href="UpdateForm.jsp";
    }
</script>
<script>
    function cancel() {
        event.preventDefault();
        document.location.href = "Admin.jsp";
    }
</script>

