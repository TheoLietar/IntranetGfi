<%--suppress BadExpressionStatementJS --%>
<%@ page import="ds.DS" %>
<%@ page import="java.sql.*" %>
<%@ page import="DAO.UserDAO" %>
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
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Portail</title>
    <link rel="stylesheet" href="popup.css">
    <link rel="stylesheet" href="animate.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="hover.css">
    <link rel="stylesheet" href="form.css">
    <link rel="stylesheet" href="h1.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="table.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/animejs/2.0.2/anime.min.js"></script>
    <script src="main.js"></script>
</head>
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
        background-size:16px 16px;;
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

    .hidetext{
        -webkit-text-security: disc;
    }

    .form-group{
        margin-bottom: 15px;
    }

    .page-list-header-visu{
        flex: 1;
        height: 350px;
        width: 37%;
        position: absolute;
        float: right;
        margin-left: 60%;
    }

    .page-list-header-visu img{
        display: block;
        max-width: 65%;
        margin: 0 auto;
        padding-top: 13px;
    }

    .page-list-header-desc h1{
        padding-bottom: 24px;
        /*color: #28336d;*/
        color: darkred;
        font-size: 54px!important;
    }


    .page-list-header-desc{
        margin-left: 130px;
        flex: 1;
        height: 350px;
        width: 40%;
        float: left;
    }

    #areaClients{
        height: 380px;
        background-image: url("right-shape-yellow.svg");
        position: relative;
        /*background-color: black;*/
        background-position: 100% 100%;
        background-repeat: no-repeat;
    }
</style>
<body style="overflow: hidden">
<header>
    <nav class="navbar navbar-expand-lg navbar-light bg-light static-top">
        <div class="container">
            <a class="navbar-brand" href="Accueil.jsp">
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
<%--            <div class="collapse navbar-collapse" id="navbarResponsive">--%>
<%--                <ul class="navbar-nav ml-auto">--%>
<%--                    <li class="nav-item active">--%>
<%--                        <a class="nav-link" href="Accueil.jsp">Home--%>
<%--                            <span class="sr-only">(current)</span>--%>
<%--                        </a>--%>
<%--                    </li>--%>
<%--                    <li class="nav-item">--%>
<%--                        <a class="nav-link" href="Infos.jsp">Informations pratiques</a>--%>
<%--                    </li>--%>

<%--                </ul>--%>

<%--            </div>--%>
        </div>

        <div class="wrapper2">
            <button onclick="deco()" class="btn btn-4 btn-4a icon-arrow-right hvr-overline-from-right">Deconnexion</button>
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

<%--    <ol class="breadcrumb" style="margin-right: 500px;padding-right: 500px">--%>
<%--        <li><a href="Accueil.jsp">Accueil</a></li>--%>
<%--        <li class="active">Page en cours</li>--%>
<%--    </ol>--%>

<%--    <div class="breadcrumb flat">--%>
<%--        <a href="Accueil.jsp">Accueil</a>--%>
<%--        <a href="#" class="active">Admin</a>--%>
<%--        <a href="#">Ajouter un utilisateur</a>--%>
<%--        <a href="#">Ajouter un clien</a>--%>
<%--    </div>--%>


    <div>
        <form action="ControlerAddClient" id="formClient" class="form-style-9" onsubmit="return pop()" style="visibility: hidden">
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
                    <input type="text" name="plage" class="field-style" placeholder="Plage de service" />
                </li>
                <li>
                    <input type="text" name="img" class="field-style field-split align-left" placeholder="Lien image" />
                </li>
                <li>
                    <input type="submit" value="Ajouter Client" />
                </li>
            </ul>
        </form>
    </div>

</header>



<div id="areaClients">
    <div class="page-list-header-desc" style="padding-top: 50px">
<%--        <h1>Mes Utilisateurs</h1>--%>
    <h1 class="ml1">
  <span class="text-wrapper">
    <span class="line line1"></span>
    <span class="letters" style="font-family: 'Ostrich Sans'">MES UTILISATEURS</span>
    <span class="line line2"></span>
  </span>
    </h1>
        <div>
            <p style="font-size: 1.1em">Ici, la liste des tous les utilisateurs présents sur cet intranet.</p>
        </div>
    </div>

    <div class="page-list-header-visu">
        <img src="003-users-group.png">
    </div>
</div>

<br>
<br>
<%--<h1 style="text-align: center" id="mesUsers">Mes utilisateurs</h1>--%>
<br>

<div id="abc">
    <div id="popupDel">
        <form action="ControlerDel" id="form" method="post" name="form">
            <img src="close-icon3.png" id="close" onClick="div_hide();">
            <h2>DELETE USER</h2>
            <hr>
            <input id="login" name="login" placeholder="Login" type="text">
            <a href="javascript:check_empty()" id="submit">Send</a>
        </form>
    </div>
</div>

<div class="divTable fadeIn" style="padding-bottom: 150px">
    <table id="tableUser" class="table table-striped table-hover" style="visibility: visible">
        <thead>
        <tr>
            <th>id
            </th>
            <th>Login</th>
            <th>Password</th>
            <th>Nom</th>
            <th>Prenom</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <%
            try(Connection con = new DS().getConnection()){
                String query = "SELECT * FROM utilisateur";
                PreparedStatement ps = con.prepareStatement(query);
                ResultSet rs = ps.executeQuery();
                ResultSetMetaData rsmd = rs.getMetaData();

                while(rs.next()){
                    out.write("<tr>");
                    String log = rs.getString(2);


                    for(int i=1; i<=rsmd.getColumnCount();i++){
                        String tmp = rs.getString(i);

                        System.out.println(i + rs.getString(i));
                        if(i == 3){
                            out.write("<td class=\"hidetext\">" + tmp + "</td>");
                        }else{
                            out.write("<td name=\"tutu\" id="+log+">" + tmp + "</td>");
                        }
                    }


                    out.write("<td>" +
                            "                            <a href=\"#editUser\" onClick=\"render();\"class=\"edit\" data-toggle=\"modal\"><i class=\"material-icons\" title=\"Edit\">&#xE254;</i></a>\n" +
                            "                            <a name=\""+log+"\" onClick=\"del2(\'"+log+"\')\" class=\"delete\" data-toggle=\"modal\"><i class=\"material-icons\" data-toggle=\"tooltip\" title=\"Delete\">&#xE872;</i></a>\n" +
                            "                        </td>");
                    out.write("</tr>");

                }
            }catch (Exception e){
                e.printStackTrace();
            }
        %>
        </tbody>
    </table>

</div>



<div id="editUser" class="modal fade" >
    <div class="modal-dialog">
        <div class="modal-content">
            <form>
                <div class="modal-header">
                    ::before
                    <h4 class="modal-title">Éditer Utilisateur</h4>
                    <button type="button" class="close" aria-hidden="true">x</button>
                    ::after
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
                    ::before
                    <input type="button" class="btn btn-default" value="Cancel">
                    <input type="submit" class="btn btn-info" value="Save">
                    ::after
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
    function addUser() {
        event.preventDefault();
        document.location.href = "SignUp.jsp"
    }
</script>
<script>
    function render() {
        event.preventDefault();
        document.location.href="UpdateForm.jsp";
    }
</script>
<script>
    function pop() {
        alert('Le client à bien été crée');
    }
</script>

<script>
    function deco() {
        event.preventDefault();
        document.location.href="deconnexion.jsp";
        <%
        System.out.println(request.getAttribute("login"));
        %>
    }
</script>
<script>
    function del() {
        event.preventDefault();
        document.getElementById('abc').style.display = "block";
    }
</script>
<script>
    function del2(log){
        document.location.href = "Delete.jsp?log="+log;
    }
</script>
<script>
// Wrap every letter in a span
$('.ml1 .letters').each(function(){
$(this).html($(this).text().replace(/([^\x00-\x80]|\w)/g, "<span class='letter'>$&</span>"));
});

anime.timeline({loop: true})
.add({
targets: '.ml1 .letter',
scale: [0.3,1],
opacity: [0,1],
translateZ: 0,
easing: "easeOutExpo",
duration: 600,
delay: function(el, i) {
return 70 * (i+1)
}
}).add({
targets: '.ml1 .line',
scaleX: [0,1],
opacity: [0.5,1],
easing: "easeOutExpo",
duration: 700,
offset: '-=875',
delay: function(el, i, l) {
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

