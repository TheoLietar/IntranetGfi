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
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>

<style>
    header{
        box-sizing: border-box;
        height: 95vh;
        min-height: 740px;
        position: relative;
        width: 100%;
        overflow: hidden;
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
        font-size: 1.4rem;
    }

    ul{
        list-style: none;
        vertical-align: baseline;
        /*text-space: 10;*/
    }
</style>


<body>
<header>
    <nav class="navbar navbar-expand-lg navbar-light bg-light static-top">
    <div class="container">
        <a class="navbar-brand" href="#">
            <img src="gfi.png" alt="logo" width="130">
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



<footer id="mainfooter">
    <div class="line">

    </div>

    <div class="line">
        <div class="section">
            <nav>
                <ul>
                    <li class="li">Mentions légales</li>
                    <li class="li">Plan du site</li>
                    <li class="li">Contact</li>
                </ul>
            </nav>
        </div>
    </div>


</footer>

</body>
</html>
