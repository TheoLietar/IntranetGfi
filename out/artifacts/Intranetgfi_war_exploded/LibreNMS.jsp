<%--suppress TooBroadScope --%>
<%@ page import="java.nio.file.Path" %>
<%@ page import="java.nio.file.Paths" %>
<%@ page import="java.util.List" %>
<%@ page import="java.nio.file.Files" %>
<%@ page import="java.util.Arrays" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.io.FileReader" %>
<%@ page import="java.io.BufferedReader" %>
<%@ page import="java.io.IOException" %>
<%@ page import="java.net.InetAddress" %>
<%--
  Created by IntelliJ IDEA.
  User: theo.lietar-tmp
  Date: 23/04/2019
  Time: 11:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="refresh" content="600;url=LibreNMS.jsp">
    <title>LibreNMS</title>
    <link rel="stylesheet" href="animate.css">
    <link rel="stylesheet" href="styles.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="hover.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<style>

    .wrapper {
        margin-top: -100px;
        padding-left: 400px;
        display: grid;
        grid-template-columns: 20% 20% 20% 20% 20%;
        grid-gap: 1rem;
    }

    .wrapper2 {
        margin-top: -100px;
        padding-left: 400px;
        display: block;
    }

    .sub-item {
        width: 165px;
        border: 1px solid green;
        border-radius: 5px;
        color: #000;
        float: left;
        height: 64px;
        margin: 10px;
        padding: 8px;
        text-align: center;
        white-space: nowrap;
    }

    .label {
        text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.7);
        font-size: 13px;
        border-radius: 0.25em 0.25em;
        float: right;
        margin: -8px;
        /*background-color: #5cb85c;*/
        color: white;
    }

    .device-icon {
        display: inline-block;
        height: 32px;
        width: 40px;
    }

    .device-icon img {
        max-height: 32px;
        max-width: 40px;
        vertical-align: middle;

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

    .OSRE {
        float: left;
        width: 325px;
        display: grid;
        grid-template-rows: repeat(8, 50px);
        grid-template-columns: repeat(6, 50px);
        grid-gap: 5px;
        padding-left: 25px;
    }

    .clients {
        padding-left: 75px;
        padding-top: 0;
        display: grid;
        grid-template-rows: 380px;
        grid-template-columns: 300px;
    }

    .box {
        color: #000;
        padding: 10px;
        font-size: 14px;
        background: whitesmoke;
        text-align: center;
        cursor: pointer;
    }

    .box2 {
        color: #000;
        padding: 10px;
        font-size: 14px;
        background: whitesmoke;
        text-align: center;
    }

    .box:nth-child(1) {
        grid-column: span 6;
    }

    .box:nth-child(8),
    .box:nth-child(9),
    .box:nth-child(10) {
        grid-column: span 2;
    }

    .box:nth-child(11) {
        grid-column: span 6;
    }

    .box:nth-child(12) {
        grid-column: span 2;
    }

    .box:nth-child(13) {
        grid-column: span 2;
    }

    .box:nth-child(14),
    .box:nth-child(15) {

    }

    .box:nth-child(16) {
        grid-column: span 6;
    }


    .box:nth-child(17),
    .box:nth-child(18) {
        grid-column: span 3;
    }

    .container-OSRE {
        float: left;
        width: 400px;
        height: 440px;
        border: 1px solid black;
        margin-left: 10px;
        padding-top: 55px;
        padding-left: 10px;
    }

    #interoute {
        width: 350px;
        height: 100px;
        border: 1px solid black;
        border-radius: 5px;
        margin-right: 700px;
        margin-top: -50px;
        float: right;
        background-color: #001f3f;
    }

    #interoute:hover #downInteroute{
        background-color: lightgray;
        cursor: pointer;
        display: block;
    }

    #downInteroute{
        display: none;
        border-radius: 5px;
        position: absolute;
        background-color: lightgray;
        margin-top: 100px;
        min-width: 350px;
        box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
        z-index: 1;
    }

    #downInteroute ul li {
        text-decoration: none;
        list-style-type: none;
    }

    #downInteroute ul li a{
        text-align: center;
        color: black;
        list-style-type: none;
        text-decoration: none;
        padding-left: 100px;
    }

    #interoute span {
        position: absolute;
        padding-left: 100px;
        margin-top: 15px;
        color: white;
        font-family: 'Raleway', sans-serif;
        font-size: 25px;
        font-weight: 600;
        line-height: 72px;
        text-align: center;
        text-transform: uppercase;

    }

    #zayo {
        width: 350px;
        height: 100px;
        border: 1px solid black;
        border-radius: 5px;
        margin-right: 200px;
        margin-top: -97px;
        float: right;
        background-color: #001f3f;
    }

    #zayo:hover #downZayo{
        background-color: lightgray;
        cursor: pointer;
        display: block;
    }

    #downZayo{
        display: none;
        border-radius: 5px;
        position: absolute;
        background-color: lightgray;
        margin-top: 100px;
        min-width: 350px;
        box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
        z-index: 1;
    }

    #downZayo ul li {
        text-decoration: none;
        list-style-type: none;
    }

    #downZayo ul li a{
        text-align: center;
        color: black;
        list-style-type: none;
        text-decoration: none;
        padding-left: 100px;
    }

    #zayo span {
        position: absolute;
        padding-left: 140px;
        margin-top: 15px;
        color: white;
        font-family: 'Raleway', sans-serif;
        font-size: 25px;
        font-weight: 600;
        line-height: 72px;
        text-align: center;
        text-transform: uppercase;
    }

</style>
<body>
<%
    session = request.getSession(true);
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
                </ul>
            </nav>

        </div>

        <div class="deco">
            <button onclick="deco()" class="btn btn-4 btn-4a icon-arrow-right hvr-overline-from-right">Deconnexion
            </button>
        </div>

        </div>

    </nav>
</header>
<h4 class="bounceIn" style="width: 25%;float: left">Availability map for devices</h4>
<br>
<br>
<%--<h5 style="padding:0 0 0 5px;text-align:left;height: 2px">OSRE</h5>--%>
<br>
<span style="margin-top: 10px;margin-left: -227px;color: red;font-weight: bold;font-size: 22px">OSRE</span>
<div class="container-OSRE">

    <div class="OSRE">
        <div class="box" onclick="render('internet')" style="background:green">INTERNET</div>
        <div class="box" onclick="render('3K')">3K</div>
        <div class="box" onclick="render('LLB')">LLB</div>
        <div class="box" onclick="render('5400')">5400</div>
        <div class="box" onclick="render('3600')">3600</div>
        <div class="box" onclick="render('ssl')" style="background:green">SSL</div>
        <div class="box" onclick="render('ipsec')">IPSEC</div>
        <div class="box" onclick="render('dmz7k')">DMZ 7K</div>
        <div class="box" onclick="render('dmz5k')">DMZ 5K</div>
        <div class="box" onclick="render('a10')">A10</div>
        <div class="box" onclick="render('checkpoint')">CHECKPOINT</div>
        <div class="box" onclick="render('lan7k')">LAN 7K</div>
        <div class="box" onclick="render('lan5k')">LAN 5K</div>
        <div class="box" onclick="render('lb')">LB</div>
        <div class="box" onclick="render('cw')">CW</div>
        <div class="box" onclick="render('nfs5k')">NFS 5K</div>
    </div>
</div>

<div class="clients" id="clientsGrid">
    <div class="box2">CLIENTS</div>
</div>
<%

    /**
     * Lecture fichier csv et remplissage d'une grille html avec les différentes informations
     */
    List<List<String>> lines = new ArrayList<>();

    FileReader fr = new FileReader("C:\\Users\\theo.lietard-tmp\\IdeaProjects\\intranetgfi\\web\\inventory.csv");

    BufferedReader br = new BufferedReader(fr);

    String[] tab = new String[67];
    String[] links = new String[67];
    String[] etats = new String[67];

    int idx = 0;

    String line = "";
    while ((line = br.readLine()) != null) {
        String[] data = line.split(",");
        lines.add(Arrays.asList(data));
    }

    lines.remove(lines.get(lines.size() - 1));
    lines.add(Arrays.asList("cainternet", "cainternet42e03b", "", "", "", "", "", "", "", "", "10.2.22.4", "", ""));
    lines.add(Arrays.asList("llbcroix", "llb-croix", "", "", "", "", "", "", "", "", "192.168.125.37", "", ""));
    lines.add(Arrays.asList("llbmarcq", "llb-marcq", "", "", "", "", "", "", "", "", "192.168.125.38", "", ""));
    lines.add(Arrays.asList("fw-biz-marcq", "fw-biz-marcq", "", "", "", "", "", "", "", "", "192.168.125.11", "", ""));
    lines.add(Arrays.asList("fw-vpn-a", "fw-vpn-a", "", "", "", "", "", "", "", "", "192.168.125.23", "", ""));
    lines.add(Arrays.asList("fw-vpn-b", "fw-vpn-b", "", "", "", "", "", "", "", "", "192.168.125.22", "", ""));
    lines.add(Arrays.asList("slb-croix-a", "slb-croix-a", "", "", "", "", "", "", "", "", "192.168.125.32", "", ""));
    lines.add(Arrays.asList("slb-marcq-a", "slb-marcq-a", "", "", "", "", "", "", "", "", "192.168.125.33", "", ""));
    lines.add(Arrays.asList("fw-pri-croix", "fw-pri-croix", "", "", "", "", "", "", "", "", "192.168.125.45", "", ""));
    lines.add(Arrays.asList("fw-pri-mgt", "fw-pri-mgt", "", "", "", "", "", "", "", "", "192.168.125.42", "", ""));
    lines.add(Arrays.asList("lb-lan-croix", "lb-lan-croix", "", "", "", "", "", "", "", "", "192.168.125.27", "", ""));
    lines.add(Arrays.asList("lb-lan-marcq", "lb-lan-marcq", "", "", "", "", "", "", "", "", "192.168.125.28", "", ""));
    lines.add(Arrays.asList("srx-10.2.23.43", "srx-10.2.23.43", "", "", "", "", "", "", "", "", "10.2.23.43", "", ""));
    lines.add(Arrays.asList("", "", "", "", "", "", "", "", "", "", "", "", ""));


    for (int i = 0; i < lines.size() - 1; i++) {
        if (!lines.get(i).get(1).equals(lines.get(i + 1).get(1))) {
            //IP
            if (lines.get(i).get(10).contains(".") && !lines.get(i).get(10).contains("(")) {
                links[idx] = lines.get(i).get(10);
            } else if (lines.get(i).get(11).contains(".")) {
                links[idx] = lines.get(i).get(11);
            } else {
                links[idx] = lines.get(i).get(12);
            }


            //PING
            InetAddress inet = InetAddress.getByName(links[idx]);
            if (inet.isReachable(500)) {
                etats[idx] = "up";

            } else {
                etats[idx] = "down";
            }


            tab[idx] = lines.get(i).get(1);
            idx++;

        } else {
            tab[idx] = lines.get(i).get(1);
        }


    }

    br.close();

    out.write("<br>");
    out.write("<br>");
    out.write("<br>");


    out.write("<div id=\"interoute\" style=\"display : none\">");
    out.write("<span>Interoute</span>");
    out.write("<div id=\"downInteroute\">");
    out.write("<ul>");
    out.write("<li><a onclick=\"document.getElementById('16').style.display='block';document.getElementById('17').style.display='none';document.getElementById('126').style.display='none';document.getElementById('127').style.display='none'\">Port 1/6</a></li>");
    out.write("<li><a onclick=\"document.getElementById('17').style.display='block';document.getElementById('16').style.display='none';document.getElementById('126').style.display='none';document.getElementById('127').style.display='none'\">Port 1/7</a></li>");
    out.write("</ul>");
    out.write("</div>");
    out.write("</div>");

    out.write("<div id=\"zayo\" style=\"display : none\">");
    out.write("<span>Zayo</span>");
    out.write("<div id=\"downZayo\">");
    out.write("<ul>");
    out.write("<li><a onclick=\"document.getElementById('126').style.display='block';document.getElementById('127').style.display='none';document.getElementById('16').style.display='none';document.getElementById('17').style.display='none'\">Port 1/26</a></li>");
    out.write("<li><a onclick=\"document.getElementById('127').style.display='block';document.getElementById('126').style.display='none';document.getElementById('16').style.display='none';document.getElementById('17').style.display='none'\">Port 1/27</a></li>");
    out.write("</ul>");
    out.write("</div>");
    out.write("</div>");


    //INTERNET
    out.write("<div class=\"wrapper2\" id=\"16\" style=\"display : none;margin-top: 125px;margin-left: 125px\">");
    out.write("<iframe scrolling=\"no\" frameborder=\"0\" style=\"border: 1px solid #ccc;border-radius: 5px;overflow: hidden;width: 800px;height: 350px\" allowtransparency=\"true\" target=\"\" src=\"http://cacti.si3si.int/graph.php?action=zoom&local_graph_id=16170&rra_id=1&view_type=\"></iframe>");
    out.write("</div>");

    out.write("<div class=\"wrapper2\" id=\"17\" style=\"display : none;margin-top: 125px;margin-left: 125px\">");
    out.write("<iframe scrolling=\"no\" frameborder=\"0\" style=\"border: 1px solid #ccc;border-radius: 5px;overflow: hidden;width: 800px;height: 350px\" allowtransparency=\"true\" target=\"\" src=\"http://cacti.si3si.int/graph.php?action=zoom&local_graph_id=16171&rra_id=1&view_type=\"></iframe>");
    out.write("</div>");

    out.write("<div class=\"wrapper2\" id=\"126\" style=\"display : none;margin-top: 125px;margin-left: 125px\">");
    out.write("<iframe scrolling=\"no\" frameborder=\"0\" style=\"border: 1px solid #ccc;border-radius: 5px;overflow: hidden;width: 800px;height: 350px\" allowtransparency=\"true\" target=\"\" src=\"http://cacti.si3si.int/graph.php?action=zoom&local_graph_id=17528&rra_id=1&view_type=\"></iframe>");
    out.write("</div>");

    out.write("<div class=\"wrapper2\" id=\"127\" style=\"display : none;margin-top: 125px;margin-left: 125px\">");
    out.write("<iframe scrolling=\"no\" frameborder=\"0\" style=\"border: 1px solid #ccc;border-radius: 5px;overflow: hidden;width: 800px;height: 350px\" allowtransparency=\"true\" target=\"\" src=\"http://cacti.si3si.int/graph.php?action=zoom&local_graph_id=17529&rra_id=1&view_type=\"></iframe>");
    out.write("</div>");


    //3K CAINTERNET
    out.write("<div class=\"wrapper\" id=\"3K\" style=\"display : none\">");
    for (int j = 0; j < tab.length; j++) {
        if (tab[j].contains("cainternet") || tab[j].contains("cawan")) {
            out.write("<a href=\"http://vl068360.hosting.gfi/device/device=" + links[j] + "\" target=\"_new\">");
            out.write("<div class=\"sub-item\">");
            out.write("<span class=\"label\">" + etats[j] + "</span>");
            if (tab[j].contains("srx") || tab[j].contains("fw")) {
                out.write("<span class=\"device-icon\">");
                out.write("<img src=\"junos.png\">");
                out.write("</span>");
                out.write("<br>");
            } else {
                out.write("<span class=\"device-icon\">");
                out.write("<img src=\"cisco.svg \">");
                out.write("</span>");
                out.write("<br>");
            }

            out.write("<span class=\"name\">" + tab[j] + "</span>");

            out.write("</div>");
            out.write("</a>");
        }
    }
    out.write("</div>");

    //F5 LLB
    out.write("<div class=\"wrapper\" id=\"LLB\" style=\"display : none\">");
    for (int i = 0; i < tab.length; i++) {
        if (tab[i].contains("llb")) {
            out.write("<a href=\"http://vl068360.hosting.gfi/device/device=" + links[i] + "\" target=\"_new\">");
            out.write("<div class=\"sub-item\">");
            out.write("<span class=\"label\">" + etats[i] + "</span>");
            if (tab[i].contains("llb")) {
                out.write("<span class=\"device-icon\">");
                out.write("<img src=\"f5.svg\">");
                out.write("</span>");
                out.write("<br>");
            }
            out.write("<span class=\"name\">" + tab[i] + "</span>");

            out.write("</div>");
            out.write("</a>");
        }
    }
    out.write("</div>");

    //SRX5400
    out.write("<div class=\"wrapper\" id=\"5400\" style=\"display : none\">");
    for (int i = 0; i < tab.length; i++) {
        if (tab[i].contains("srx")) {
            out.write("<a href=\"http://vl068360.hosting.gfi/device/device=" + links[i] + "\" target=\"_new\">");
            out.write("<div class=\"sub-item\">");
            out.write("<span class=\"label\">" + etats[i] + "</span>");
            if (tab[i].contains("srx")) {
                out.write("<span class=\"device-icon\">");
                out.write("<img src=\"junos.png\">");
                out.write("</span>");
                out.write("<br>");
            }
            out.write("<span class=\"name\">" + tab[i] + "</span>");

            out.write("</div>");
            out.write("</a>");
        }
    }
    out.write("</div>");

    //FW-BIZ 3600
    out.write("<div class=\"wrapper\" id=\"3600\" style=\"display : none\">");
    for (int i = 0; i < tab.length; i++) {
        if (tab[i].contains("fw-biz")) {
            out.write("<a href=\"http://vl068360.hosting.gfi/device/device=" + links[i] + "\" target=\"_new\">");
            out.write("<div class=\"sub-item\">");
            out.write("<span class=\"label\">" + etats[i] + "</span>");
            if (tab[i].contains("fw-biz")) {
                out.write("<span class=\"device-icon\">");
                out.write("<img src=\"junos.png\">");
                out.write("</span>");
                out.write("<br>");
            }
            out.write("<span class=\"name\">" + tab[i] + "</span>");
            out.write("</div>");
            out.write("</a>");
        }
    }
    out.write("</div>");

    //SSL


    //IPSEC
    out.write("<div class=\"wrapper\" id=\"ipsec\" style=\"display : none\">");
    for (int i = 0; i < tab.length; i++) {
        if (tab[i].contains("fw-vpn")) {
            out.write("<a href=\"http://vl068360.hosting.gfi/device/device=" + links[i] + "\" target=\"_new\">");
            out.write("<div class=\"sub-item\">");
            out.write("<span class=\"label\">" + etats[i] + "</span>");
            if (tab[i].contains("fw-vpn")) {
                out.write("<span class=\"device-icon\">");
                out.write("<img src=\"screenos.png\">");
                out.write("</span>");
                out.write("<br>");
            }
            out.write("<span class=\"name\">" + tab[i] + "</span>");
            out.write("</div>");
            out.write("</a>");
        }
    }
    out.write("</div>");

    //DMZ 7K
    out.write("<div class=\"wrapper\" id=\"dmz7k\" style=\"display : none\">");
    for (int i = 0; i < tab.length; i++) {
        if (tab[i].contains("ccdmz")) {
            out.write("<a href=\"http://vl068360.hosting.gfi/device/device=" + links[i] + "\" target=\"_new\">");
            out.write("<div class=\"sub-item\">");
            out.write("<span class=\"label\">" + etats[i] + "</span>");
            if (tab[i].contains("ccdmz")) {
                out.write("<span class=\"device-icon\">");
                out.write("<img src=\"cisco.svg\">");
                out.write("</span>");
                out.write("<br>");
            }
            out.write("<span class=\"name\">" + tab[i] + "</span>");
            out.write("</div>");
            out.write("</a>");
        }
    }
    out.write("</div>");

    //DMZ 5K
    out.write("<div class=\"wrapper\" id=\"dmz5k\" style=\"display : none\">");
    for (int i = 0; i < tab.length; i++) {
        if (tab[i].contains("cddmz")) {
            out.write("<a href=\"http://vl068360.hosting.gfi/device/device=" + links[i] + "\" target=\"_new\">");
            out.write("<div class=\"sub-item\">");
            out.write("<span class=\"label\">" + etats[i] + "</span>");
            if (tab[i].contains("cddmz")) {
                out.write("<span class=\"device-icon\">");
                out.write("<img src=\"cisco.svg\">");
                out.write("</span>");
                out.write("<br>");
            }
            out.write("<span class=\"name\">" + tab[i] + "</span>");
            out.write("</div>");
            out.write("</a>");
        }
    }
    out.write("</div>");

    //A10
    out.write("<div class=\"wrapper\" id=\"a10\" style=\"display : none\">");
    for (int i = 0; i < tab.length; i++) {
        if (tab[i].contains("slb")) {
            out.write("<a href=\"http://vl068360.hosting.gfi/device/device=" + links[i] + "\" target=\"_new\">");
            out.write("<div class=\"sub-item\">");
            out.write("<span class=\"label\">" + etats[i] + "</span>");
            if (tab[i].contains("slb")) {
                out.write("<span class=\"device-icon\">");
                out.write("<img src=\"a10.png\">");
                out.write("</span>");
                out.write("<br>");
            }
            out.write("<span class=\"name\">" + tab[i] + "</span>");
            out.write("</div>");
            out.write("</a>");
        }
    }
    out.write("</div>");

    //CHKPT
    out.write("<div class=\"wrapper\" id=\"checkpoint\" style=\"display : none\">");
    for (int i = 0; i < tab.length; i++) {
        if (tab[i].contains("fw-pri")) {
            out.write("<a href=\"http://vl068360.hosting.gfi/device/device=" + links[i] + "\" target=\"_new\">");
            out.write("<div class=\"sub-item\">");
            out.write("<span class=\"label\">" + etats[i] + "</span>");
            if (tab[i].contains("fw-pri")) {
                out.write("<span class=\"device-icon\">");
                out.write("<img src=\"checkpoint.png\">");
                out.write("</span>");
                out.write("<br>");
            }
            out.write("<span class=\"name\">" + tab[i] + "</span>");
            out.write("</div>");
            out.write("</a>");
        }
    }
    out.write("</div>");

    //LAN 7K
    out.write("<div class=\"wrapper\" id=\"lan7k\" style=\"display : none\">");
    for (int i = 0; i < tab.length; i++) {
        if (tab[i].contains("cclan")) {
            out.write("<a href=\"http://vl068360.hosting.gfi/device/device=" + links[i] + "\" target=\"_new\">");
            out.write("<div class=\"sub-item\">");
            out.write("<span class=\"label\">" + etats[i] + "</span>");
            if (tab[i].contains("cclan")) {
                out.write("<span class=\"device-icon\">");
                out.write("<img src=\"cisco.svg\">");
                out.write("</span>");
                out.write("<br>");
            }
            out.write("<span class=\"name\">" + tab[i] + "</span>");
            out.write("</div>");
            out.write("</a>");
        }
    }
    out.write("</div>");

    //LAN 5K
    out.write("<div class=\"wrapper\" id=\"lan5k\" style=\"display : none\">");
    for (int i = 0; i < tab.length; i++) {
        if (tab[i].contains("cdlan")) {
            out.write("<a href=\"http://vl068360.hosting.gfi/device/device=" + links[i] + "\" target=\"_new\">");
            out.write("<div class=\"sub-item\">");
            out.write("<span class=\"label\">" + etats[i] + "</span>");
            if (tab[i].contains("cdlan")) {
                out.write("<span class=\"device-icon\">");
                out.write("<img src=\"cisco.svg\">");
                out.write("</span>");
                out.write("<br>");
            }
            out.write("<span class=\"name\">" + tab[i] + "</span>");
            out.write("</div>");
            out.write("</a>");
        }
    }
    out.write("</div>");

    //LB LAN
    out.write("<div class=\"wrapper\" id=\"lb\" style=\"display : none\">");
    for (int i = 0; i < tab.length; i++) {
        if (tab[i].contains("lb-lan")) {
            out.write("<a href=\"http://vl068360.hosting.gfi/device/device=" + links[i] + "\" target=\"_new\">");
            out.write("<div class=\"sub-item\">");
            out.write("<span class=\"label\">" + etats[i] + "</span>");
            if (tab[i].contains("lb-lan")) {
                out.write("<span class=\"device-icon\">");
                out.write("<img src=\"f5.svg\">");
                out.write("</span>");
                out.write("<br>");
            }
            out.write("<span class=\"name\">" + tab[i] + "</span>");
            out.write("</div>");
            out.write("</a>");
        }
    }
    out.write("</div>");

    //CW
    out.write("<div class=\"wrapper\" id=\"cw\" style=\"display : none\">");
    for (int i = 0; i < tab.length; i++) {
        if (tab[i].contains("cw")) {
            out.write("<a href=\"http://vl068360.hosting.gfi/device/device=" + links[i] + "\" target=\"_new\">");
            out.write("<div class=\"sub-item\">");
            out.write("<span class=\"label\">" + etats[i] + "</span>");
            if (tab[i].contains("cw")) {
                out.write("<span class=\"device-icon\">");
                out.write("<img src=\"cisco.svg\">");
                out.write("</span>");
                out.write("<br>");
            }
            out.write("<span class=\"name\">" + tab[i] + "</span>");
            out.write("</div>");
            out.write("</a>");
        }
    }
    out.write("</div>");

    //NFS5K
    out.write("<div class=\"wrapper\" id=\"nfs5k\" style=\"display : none\">");
    for (int i = 0; i < tab.length; i++) {
        if (tab[i].contains("cdnfs")) {
            out.write("<a href=\"http://vl068360.hosting.gfi/device/device=" + links[i] + "\" target=\"_new\">");
            out.write("<div class=\"sub-item\">");
            out.write("<span class=\"label\">" + etats[i] + "</span>");
            if (tab[i].contains("cdnfs")) {
                out.write("<span class=\"device-icon\">");
                out.write("<img src=\"cisco.svg\">");
                out.write("</span>");
                out.write("<br>");
            }
            out.write("<span class=\"name\">" + tab[i] + "</span>");
            out.write("</div>");
            out.write("</a>");
        }
    }
    out.write("</div>");

%>
</body>
</html>
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
    <%
    String session_val = (String) session.getAttribute("login");
%>
    var session_obj = '<%=session_val%>';

    if (session_obj !== 'admin') {
        document.querySelector('#adminbtn').style.display = 'none';
    }

    // alert(session_obj);
</script>
<script>
    function render(chaine) {
        event.preventDefault();

        if (chaine === '3K') {
            document.getElementById('5400').style.display = 'none';
            document.getElementById('16').style.display = 'none';
            document.getElementById('17').style.display = 'none';
            document.getElementById('126').style.display = 'none';
            document.getElementById('127').style.display = 'none';
            document.getElementById('3600').style.display = 'none';
            document.getElementById('ipsec').style.display = 'none';
            document.getElementById('dmz7k').style.display = 'none';
            document.getElementById('clientsGrid').style.display = 'none';
            document.getElementById('LLB').style.display = 'none';
            document.getElementById('dmz5k').style.display = 'none';
            document.getElementById('a10').style.display = 'none';
            document.getElementById('checkpoint').style.display = 'none';
            document.getElementById('lan7k').style.display = 'none';
            document.getElementById('lan5k').style.display = 'none';
            document.getElementById('lb').style.display = 'none';
            document.getElementById('cw').style.display = 'none';
            document.getElementById('nfs5k').style.display = 'none';
            document.getElementById('interoute').style.display = 'none';
            document.getElementById('zayo').style.display = 'none';
            document.getElementById('3K').style.display = 'block';
        } else if (chaine === 'LLB') {
            document.getElementById('16').style.display = 'none';
            document.getElementById('17').style.display = 'none';
            document.getElementById('126').style.display = 'none';
            document.getElementById('127').style.display = 'none';
            document.getElementById('5400').style.display = 'none';
            document.getElementById('3600').style.display = 'none';
            document.getElementById('dmz7k').style.display = 'none';
            document.getElementById('ipsec').style.display = 'none';
            document.getElementById('3K').style.display = 'none';
            document.getElementById('clientsGrid').style.display = 'none';
            document.getElementById('dmz5k').style.display = 'none';
            document.getElementById('a10').style.display = 'none';
            document.getElementById('checkpoint').style.display = 'none';
            document.getElementById('lan7k').style.display = 'none';
            document.getElementById('lan5k').style.display = 'none';
            document.getElementById('lb').style.display = 'none';
            document.getElementById('cw').style.display = 'none';
            document.getElementById('nfs5k').style.display = 'none';
            document.getElementById('interoute').style.display = 'none';
            document.getElementById('zayo').style.display = 'none';
            document.getElementById('LLB').style.display = 'block';
        } else if (chaine == '5400') {
            document.getElementById('16').style.display = 'none';
            document.getElementById('17').style.display = 'none';
            document.getElementById('126').style.display = 'none';
            document.getElementById('127').style.display = 'none';
            document.getElementById('3600').style.display = 'none';
            document.getElementById('3K').style.display = 'none';
            document.getElementById('dmz7k').style.display = 'none';
            document.getElementById('ipsec').style.display = 'none';
            document.getElementById('clientsGrid').style.display = 'none';
            document.getElementById('LLB').style.display = 'none';
            document.getElementById('dmz5k').style.display = 'none';
            document.getElementById('a10').style.display = 'none';
            document.getElementById('checkpoint').style.display = 'none';
            document.getElementById('lan7k').style.display = 'none';
            document.getElementById('lan5k').style.display = 'none';
            document.getElementById('lb').style.display = 'none';
            document.getElementById('cw').style.display = 'none';
            document.getElementById('nfs5k').style.display = 'none';
            document.getElementById('interoute').style.display = 'none';
            document.getElementById('zayo').style.display = 'none';
            document.getElementById('5400').style.display = 'block';
        } else if (chaine === '3600') {
            document.getElementById('16').style.display = 'none';
            document.getElementById('17').style.display = 'none';
            document.getElementById('126').style.display = 'none';
            document.getElementById('127').style.display = 'none';
            document.getElementById('3K').style.display = 'none';
            document.getElementById('ipsec').style.display = 'none';
            document.getElementById('dmz7k').style.display = 'none';
            document.getElementById('5400').style.display = 'none';
            document.getElementById('clientsGrid').style.display = 'none';
            document.getElementById('LLB').style.display = 'none';
            document.getElementById('dmz5k').style.display = 'none';
            document.getElementById('a10').style.display = 'none';
            document.getElementById('checkpoint').style.display = 'none';
            document.getElementById('lan7k').style.display = 'none';
            document.getElementById('lan5k').style.display = 'none';
            document.getElementById('lb').style.display = 'none';
            document.getElementById('cw').style.display = 'none';
            document.getElementById('nfs5k').style.display = 'none';
            document.getElementById('interoute').style.display = 'none';
            document.getElementById('zayo').style.display = 'none';
            document.getElementById('3600').style.display = 'block';
        } else if (chaine === 'ipsec') {
            document.getElementById('16').style.display = 'none';
            document.getElementById('17').style.display = 'none';
            document.getElementById('126').style.display = 'none';
            document.getElementById('127').style.display = 'none';
            document.getElementById('3K').style.display = 'none';
            document.getElementById('dmz7k').style.display = 'none';
            document.getElementById('5400').style.display = 'none';
            document.getElementById('clientsGrid').style.display = 'none';
            document.getElementById('LLB').style.display = 'none';
            document.getElementById('3600').style.display = 'none';
            document.getElementById('dmz5k').style.display = 'none';
            document.getElementById('a10').style.display = 'none';
            document.getElementById('checkpoint').style.display = 'none';
            document.getElementById('lan7k').style.display = 'none';
            document.getElementById('lan5k').style.display = 'none';
            document.getElementById('lb').style.display = 'none';
            document.getElementById('cw').style.display = 'none';
            document.getElementById('nfs5k').style.display = 'none';
            document.getElementById('interoute').style.display = 'none';
            document.getElementById('zayo').style.display = 'none';
            document.getElementById('ipsec').style.display = 'block';
        } else if (chaine === 'dmz7k') {
            document.getElementById('16').style.display = 'none';
            document.getElementById('17').style.display = 'none';
            document.getElementById('126').style.display = 'none';
            document.getElementById('127').style.display = 'none';
            document.getElementById('3K').style.display = 'none';
            document.getElementById('LLB').style.display = 'none';
            document.getElementById('5400').style.display = 'none';
            document.getElementById('3600').style.display = 'none';
            document.getElementById('ipsec').style.display = 'none';
            document.getElementById('dmz5k').style.display = 'none';
            document.getElementById('a10').style.display = 'none';
            document.getElementById('checkpoint').style.display = 'none';
            document.getElementById('lan7k').style.display = 'none';
            document.getElementById('lan5k').style.display = 'none';
            document.getElementById('lb').style.display = 'none';
            document.getElementById('cw').style.display = 'none';
            document.getElementById('nfs5k').style.display = 'none';
            document.getElementById('clientsGrid').style.display = 'none';
            document.getElementById('interoute').style.display = 'none';
            document.getElementById('zayo').style.display = 'none';
            document.getElementById('dmz7k').style.display = 'block';
        } else if (chaine === 'dmz5k') {
            document.getElementById('16').style.display = 'none';
            document.getElementById('17').style.display = 'none';
            document.getElementById('126').style.display = 'none';
            document.getElementById('127').style.display = 'none';
            document.getElementById('3K').style.display = 'none';
            document.getElementById('LLB').style.display = 'none';
            document.getElementById('5400').style.display = 'none';
            document.getElementById('3600').style.display = 'none';
            document.getElementById('ipsec').style.display = 'none';
            document.getElementById('dmz7k').style.display = 'none';
            document.getElementById('a10').style.display = 'none';
            document.getElementById('checkpoint').style.display = 'none'
            document.getElementById('lan7k').style.display = 'none';
            document.getElementById('lan5k').style.display = 'none';
            document.getElementById('lb').style.display = 'none';
            document.getElementById('cw').style.display = 'none';
            document.getElementById('nfs5k').style.display = 'none';
            document.getElementById('clientsGrid').style.display = 'none';
            document.getElementById('interoute').style.display = 'none';
            document.getElementById('zayo').style.display = 'none';
            document.getElementById('dmz5k').style.display = 'block';
        } else if (chaine === 'a10') {
            document.getElementById('16').style.display = 'none';
            document.getElementById('17').style.display = 'none';
            document.getElementById('126').style.display = 'none';
            document.getElementById('127').style.display = 'none';
            document.getElementById('3K').style.display = 'none';
            document.getElementById('LLB').style.display = 'none';
            document.getElementById('5400').style.display = 'none';
            document.getElementById('3600').style.display = 'none';
            document.getElementById('ipsec').style.display = 'none';
            document.getElementById('dmz7k').style.display = 'none';
            document.getElementById('dmz5k').style.display = 'none';
            document.getElementById('checkpoint').style.display = 'none';
            document.getElementById('lan7k').style.display = 'none';
            document.getElementById('lan5k').style.display = 'none';
            document.getElementById('lb').style.display = 'none';
            document.getElementById('cw').style.display = 'none';
            document.getElementById('nfs5k').style.display = 'none';
            document.getElementById('clientsGrid').style.display = 'none';
            document.getElementById('interoute').style.display = 'none';
            document.getElementById('zayo').style.display = 'none';
            document.getElementById('a10').style.display = 'block';
        } else if (chaine === 'checkpoint') {
            document.getElementById('16').style.display = 'none';
            document.getElementById('17').style.display = 'none';
            document.getElementById('126').style.display = 'none';
            document.getElementById('127').style.display = 'none';
            document.getElementById('3K').style.display = 'none';
            document.getElementById('LLB').style.display = 'none';
            document.getElementById('5400').style.display = 'none';
            document.getElementById('3600').style.display = 'none';
            document.getElementById('ipsec').style.display = 'none';
            document.getElementById('dmz7k').style.display = 'none';
            document.getElementById('dmz5k').style.display = 'none';
            document.getElementById('a10').style.display = 'none';
            document.getElementById('lan7k').style.display = 'none';
            document.getElementById('lan5k').style.display = 'none';
            document.getElementById('lb').style.display = 'none';
            document.getElementById('cw').style.display = 'none';
            document.getElementById('nfs5k').style.display = 'none';
            document.getElementById('clientsGrid').style.display = 'none';
            document.getElementById('interoute').style.display = 'none';
            document.getElementById('zayo').style.display = 'none';
            document.getElementById('checkpoint').style.display = 'block';
        } else if (chaine === 'lan7k') {
            document.getElementById('16').style.display = 'none';
            document.getElementById('17').style.display = 'none';
            document.getElementById('126').style.display = 'none';
            document.getElementById('127').style.display = 'none';
            document.getElementById('3K').style.display = 'none';
            document.getElementById('LLB').style.display = 'none';
            document.getElementById('5400').style.display = 'none';
            document.getElementById('3600').style.display = 'none';
            document.getElementById('ipsec').style.display = 'none';
            document.getElementById('dmz7k').style.display = 'none';
            document.getElementById('dmz5k').style.display = 'none';
            document.getElementById('a10').style.display = 'none';
            document.getElementById('checkpoint').style.display = 'none';
            document.getElementById('lan5k').style.display = 'none';
            document.getElementById('lb').style.display = 'none';
            document.getElementById('cw').style.display = 'none';
            document.getElementById('nfs5k').style.display = 'none';
            document.getElementById('clientsGrid').style.display = 'none';
            document.getElementById('interoute').style.display = 'none';
            document.getElementById('zayo').style.display = 'none';
            document.getElementById('lan7k').style.display = 'block';
        } else if (chaine === 'lan5k') {
            document.getElementById('16').style.display = 'none';
            document.getElementById('17').style.display = 'none';
            document.getElementById('126').style.display = 'none';
            document.getElementById('127').style.display = 'none';
            document.getElementById('3K').style.display = 'none';
            document.getElementById('LLB').style.display = 'none';
            document.getElementById('5400').style.display = 'none';
            document.getElementById('3600').style.display = 'none';
            document.getElementById('ipsec').style.display = 'none';
            document.getElementById('dmz7k').style.display = 'none';
            document.getElementById('dmz5k').style.display = 'none';
            document.getElementById('a10').style.display = 'none';
            document.getElementById('checkpoint').style.display = 'none';
            document.getElementById('lan7k').style.display = 'none';
            document.getElementById('lb').style.display = 'none';
            document.getElementById('cw').style.display = 'none';
            document.getElementById('nfs5k').style.display = 'none';
            document.getElementById('clientsGrid').style.display = 'none';
            document.getElementById('interoute').style.display = 'none';
            document.getElementById('zayo').style.display = 'none';
            document.getElementById('lan5k').style.display = 'block';
        } else if (chaine === 'lb') {
            document.getElementById('16').style.display = 'none';
            document.getElementById('17').style.display = 'none';
            document.getElementById('126').style.display = 'none';
            document.getElementById('127').style.display = 'none';
            document.getElementById('3K').style.display = 'none';
            document.getElementById('LLB').style.display = 'none';
            document.getElementById('5400').style.display = 'none';
            document.getElementById('3600').style.display = 'none';
            document.getElementById('ipsec').style.display = 'none';
            document.getElementById('dmz7k').style.display = 'none';
            document.getElementById('dmz5k').style.display = 'none';
            document.getElementById('a10').style.display = 'none';
            document.getElementById('checkpoint').style.display = 'none';
            document.getElementById('lan7k').style.display = 'none';
            document.getElementById('lan5k').style.display = 'none';
            document.getElementById('cw').style.display = 'none';
            document.getElementById('nfs5k').style.display = 'none';
            document.getElementById('clientsGrid').style.display = 'none';
            document.getElementById('interoute').style.display = 'none';
            document.getElementById('zayo').style.display = 'none';
            document.getElementById('lb').style.display = 'block';
        } else if (chaine == 'cw') {
            document.getElementById('16').style.display = 'none';
            document.getElementById('17').style.display = 'none';
            document.getElementById('126').style.display = 'none';
            document.getElementById('127').style.display = 'none';
            document.getElementById('3K').style.display = 'none';
            document.getElementById('LLB').style.display = 'none';
            document.getElementById('5400').style.display = 'none';
            document.getElementById('3600').style.display = 'none';
            document.getElementById('ipsec').style.display = 'none';
            document.getElementById('dmz7k').style.display = 'none';
            document.getElementById('dmz5k').style.display = 'none';
            document.getElementById('a10').style.display = 'none';
            document.getElementById('checkpoint').style.display = 'none';
            document.getElementById('lan7k').style.display = 'none';
            document.getElementById('lan5k').style.display = 'none';
            document.getElementById('lb').style.display = 'none';
            document.getElementById('nfs5k').style.display = 'none';
            document.getElementById('clientsGrid').style.display = 'none';
            document.getElementById('interoute').style.display = 'none';
            document.getElementById('zayo').style.display = 'none';
            document.getElementById('cw').style.display = 'block';
        } else if (chaine === 'nfs5k') {
            document.getElementById('16').style.display = 'none';
            document.getElementById('17').style.display = 'none';
            document.getElementById('126').style.display = 'none';
            document.getElementById('127').style.display = 'none';
            document.getElementById('3K').style.display = 'none';
            document.getElementById('LLB').style.display = 'none';
            document.getElementById('5400').style.display = 'none';
            document.getElementById('3600').style.display = 'none';
            document.getElementById('ipsec').style.display = 'none';
            document.getElementById('dmz7k').style.display = 'none';
            document.getElementById('dmz5k').style.display = 'none';
            document.getElementById('a10').style.display = 'none';
            document.getElementById('checkpoint').style.display = 'none';
            document.getElementById('lan7k').style.display = 'none';
            document.getElementById('lan5k').style.display = 'none';
            document.getElementById('lb').style.display = 'none';
            document.getElementById('cw').style.display = 'none';
            document.getElementById('clientsGrid').style.display = 'none';
            document.getElementById('interoute').style.display = 'none';
            document.getElementById('zayo').style.display = 'none';
            document.getElementById('nfs5k').style.display = 'block';
        } else if (chaine === 'internet') {
            document.getElementById('clientsGrid').style.display = 'none';
            document.getElementById('5400').style.display = 'none';
            document.getElementById('3K').style.display = 'none';
            document.getElementById('3600').style.display = 'none';
            document.getElementById('ipsec').style.display = 'none';
            document.getElementById('dmz7k').style.display = 'none';
            document.getElementById('clientsGrid').style.display = 'none';
            document.getElementById('LLB').style.display = 'none';
            document.getElementById('dmz5k').style.display = 'none';
            document.getElementById('a10').style.display = 'none';
            document.getElementById('checkpoint').style.display = 'none';
            document.getElementById('lan7k').style.display = 'none';
            document.getElementById('lan5k').style.display = 'none';
            document.getElementById('lb').style.display = 'none';
            document.getElementById('cw').style.display = 'none';
            document.getElementById('nfs5k').style.display = 'none';
            document.getElementById('interoute').style.display = 'block';
            document.getElementById('zayo').style.display = 'block';
        }
    }

    //3K
    for (let i = 1; i <= 6; i++) {
        if (document.querySelector("#\\33 K > a:nth-child(" + i + ") > div > span.label").innerHTML === 'down') {
            document.querySelector("#\\33 K > a:nth-child(" + i + ") > div > span.label").style.backgroundColor = 'red';
        } else {
            document.querySelector("#\\33 K > a:nth-child(" + i + ") > div > span.label").style.backgroundColor = 'green';
        }
    }

    if ((document.querySelector("#\\33 K > a:nth-child(1) > div > span.label").innerHTML === 'up') && (document.querySelector("#\\33 K > a:nth-child(2) > div > span.label").innerHTML === 'up') && (document.querySelector("#\\33 K > a:nth-child(3) > div > span.label").innerHTML === 'up') && (document.querySelector("#\\33 K > a:nth-child(4) > div > span.label").innerHTML === 'up') && (document.querySelector("#\\33 K > a:nth-child(5) > div > span.label").innerHTML === 'up') && (document.querySelector("#\\33 K > a:nth-child(6) > div > span.label").innerHTML === 'up')) {
        document.querySelector('body > div.container-OSRE > div > div:nth-child(2)').style.background = 'green';
    } else {
        document.querySelector('body > div.container-OSRE > div > div:nth-child(2)').style.background = 'red';
    }

    //LLB
    for (let i = 1; i <= 2; i++) {
        if (document.querySelector("#LLB > a:nth-child(" + i + ") > div > span.label").innerHTML === 'down') {
            document.querySelector("#LLB > a:nth-child(" + i + ") > div > span.label").style.backgroundColor = 'red';
        } else {
            document.querySelector("#LLB > a:nth-child(" + i + ") > div > span.label").style.backgroundColor = 'green';
        }
    }

    if ((document.querySelector("#LLB > a:nth-child(1) > div > span.label").innerHTML === 'up') && (document.querySelector("#LLB > a:nth-child(2) > div > span.label").innerHTML === 'up')) {
        document.querySelector('body > div.container-OSRE > div > div:nth-child(3)').style.background = 'green';
    } else {
        document.querySelector('body > div.container-OSRE > div > div:nth-child(3)').style.background = 'red';
    }

    //5400
    for (let i = 1; i <= 2; i++) {
        if (document.querySelector("#\\35 400 > a:nth-child(" + i + ") > div > span.label").innerHTML === 'down') {
            document.querySelector("#\\35 400 > a:nth-child(" + i + ") > div > span.label").style.backgroundColor = 'red';
        } else {
            document.querySelector("#\\35 400 > a:nth-child(" + i + ") > div > span.label").style.backgroundColor = 'green';
        }
    }


    if ((document.querySelector("#\\35 400 > a:nth-child(1) > div > span.label").innerHTML === 'up') && (document.querySelector("#\\35 400 > a:nth-child(2) > div > span.label").innerHTML === 'up')) {
        document.querySelector('body > div.container-OSRE > div > div:nth-child(4)').style.background = 'green';
    } else {
        document.querySelector('body > div.container-OSRE > div > div:nth-child(4)').style.background = 'red';
    }

    //3600
    for (let i = 1; i <= 2; i++) {
        if (document.querySelector("#\\33 600 > a:nth-child(" + i + ") > div > span.label").innerHTML === 'down') {
            document.querySelector("#\\33 600 > a:nth-child(" + i + ") > div > span.label").style.backgroundColor = 'red';
        } else {
            document.querySelector("#\\33 600 > a:nth-child(" + i + ") > div > span.label").style.backgroundColor = 'green';
        }
    }

    if ((document.querySelector("#\\33 600 > a:nth-child(1) > div > span.label").innerHTML === 'up') && (document.querySelector("#\\33 600 > a:nth-child(2) > div > span.label").innerHTML === 'up')) {
        document.querySelector('body > div.container-OSRE > div > div:nth-child(5)').style.background = 'green';
    } else {
        document.querySelector('body > div.container-OSRE > div > div:nth-child(5)').style.background = 'red';
    }

    //SSL

    //IPSEC
    for (let i = 1; i <= 2; i++) {
        if (document.querySelector("#ipsec > a:nth-child(" + i + ") > div > span.label").innerHTML === 'down') {
            document.querySelector("#ipsec > a:nth-child(" + i + ") > div > span.label").style.backgroundColor = 'red';
        } else {
            document.querySelector("#ipsec > a:nth-child(" + i + ") > div > span.label").style.backgroundColor = 'green';
        }
    }

    if ((document.querySelector("#ipsec > a:nth-child(1) > div > span.label").innerHTML === 'up') && (document.querySelector("#ipsec > a:nth-child(2) > div > span.label").innerHTML === 'up')) {
        document.querySelector('body > div.container-OSRE > div > div:nth-child(7)').style.background = 'green';
    } else {
        document.querySelector('body > div.container-OSRE > div > div:nth-child(7)').style.background = 'red';
    }

    //DMZ7K
    for (let i = 1; i <= 3; i++) {
        if (document.querySelector("#dmz7k > a:nth-child(" + i + ") > div > span.label").innerHTML === 'down') {
            document.querySelector("#dmz7k > a:nth-child(" + i + ") > div > span.label").style.backgroundColor = 'red';
        } else {
            document.querySelector("#dmz7k > a:nth-child(" + i + ") > div > span.label").style.backgroundColor = 'green';
        }
    }

    if ((document.querySelector("#dmz7k > a:nth-child(1) > div > span.label").innerHTML === 'up') && (document.querySelector("#dmz7k > a:nth-child(2) > div > span.label").innerHTML === 'up') && (document.querySelector("#dmz7k > a:nth-child(3) > div > span.label").innerHTML === 'up')) {
        document.querySelector('body > div.container-OSRE > div > div:nth-child(8)').style.background = 'green';
    } else {
        document.querySelector('body > div.container-OSRE > div > div:nth-child(8)').style.background = 'red';
    }

    //DMZ5K
    for (let i = 1; i <= 8; i++) {
        if (document.querySelector("#dmz5k > a:nth-child(" + i + ") > div > span.label").innerHTML === 'down') {
            document.querySelector("#dmz5k > a:nth-child(" + i + ") > div > span.label").style.backgroundColor = 'red';
        } else {
            document.querySelector("#dmz5k > a:nth-child(" + i + ") > div > span.label").style.backgroundColor = 'green';
        }
    }

    if ((document.querySelector("#dmz5k > a:nth-child(1) > div > span.label").innerHTML === 'up') && (document.querySelector("#dmz5k > a:nth-child(2) > div > span.label").innerHTML === 'up') && (document.querySelector("#dmz5k > a:nth-child(3) > div > span.label").innerHTML === 'up') && (document.querySelector("#dmz5k > a:nth-child(4) > div > span.label").innerHTML === 'up') && (document.querySelector("#dmz5k > a:nth-child(5) > div > span.label").innerHTML === 'up') && (document.querySelector("#dmz5k > a:nth-child(6) > div > span.label").innerHTML === 'up') && (document.querySelector("#dmz5k > a:nth-child(7) > div > span.label").innerHTML === 'up') && (document.querySelector("#dmz5k > a:nth-child(8) > div > span.label").innerHTML === 'up')) {
        document.querySelector('body > div.container-OSRE > div > div:nth-child(9)').style.background = 'green';
    } else {
        document.querySelector('body > div.container-OSRE > div > div:nth-child(9)').style.background = 'red';
    }

    //A10
    for (let i = 1; i <= 2; i++) {
        if (document.querySelector("#a10 > a:nth-child(" + i + ") > div > span.label").innerHTML === 'down') {
            document.querySelector("#a10 > a:nth-child(" + i + ") > div > span.label").style.backgroundColor = 'red';
        } else {
            document.querySelector("#a10 > a:nth-child(" + i + ") > div > span.label").style.backgroundColor = 'green';
        }
    }

    if ((document.querySelector("#a10 > a:nth-child(1) > div > span.label").innerHTML === 'up') && (document.querySelector("#a10 > a:nth-child(2) > div > span.label").innerHTML === 'up')) {
        document.querySelector('body > div.container-OSRE > div > div:nth-child(10)').style.background = 'green';
    } else {
        document.querySelector('body > div.container-OSRE > div > div:nth-child(10)').style.background = 'red';
    }

    //CHKPT
    for (let i = 1; i <= 2; i++) {
        if (document.querySelector("#checkpoint > a:nth-child(" + i + ") > div > span.label").innerHTML === 'down') {
            document.querySelector("#checkpoint > a:nth-child(" + i + ") > div > span.label").style.backgroundColor = 'red';
        } else {
            document.querySelector("#checkpoint > a:nth-child(" + i + ") > div > span.label").style.backgroundColor = 'green';
        }
    }

    if ((document.querySelector("#checkpoint > a:nth-child(1) > div > span.label").innerHTML === 'up') && (document.querySelector("#checkpoint > a:nth-child(2) > div > span.label").innerHTML === 'up')) {
        document.querySelector('body > div.container-OSRE > div > div:nth-child(11)').style.background = 'green';
    } else {
        document.querySelector('body > div.container-OSRE > div > div:nth-child(11)').style.background = 'red';
    }

    //LAN7K
    for (let i = 1; i <= 3; i++) {
        if (document.querySelector("#lan7k > a:nth-child(" + i + ") > div > span.label").innerHTML === 'down') {
            document.querySelector("#lan7k > a:nth-child(" + i + ") > div > span.label").style.backgroundColor = 'red';
        } else {
            document.querySelector("#lan7k > a:nth-child(" + i + ") > div > span.label").style.backgroundColor = 'green';
        }
    }

    if ((document.querySelector("#lan7k > a:nth-child(1) > div > span.label").innerHTML === 'up') && (document.querySelector("#lan7k > a:nth-child(2) > div > span.label").innerHTML === 'up') && (document.querySelector("#lan7k > a:nth-child(3) > div > span.label").innerHTML === 'up')) {
        document.querySelector('body > div.container-OSRE > div > div:nth-child(12)').style.background = 'green';
    } else {
        document.querySelector('body > div.container-OSRE > div > div:nth-child(12)').style.background = 'red';
    }

    //LAN5K
    for (let i = 1; i <= 14; i++) {
        if (document.querySelector("#lan5k > a:nth-child(" + i + ") > div > span.label").innerHTML === 'down') {
            document.querySelector("#lan5k > a:nth-child(" + i + ") > div > span.label").style.backgroundColor = 'red';
        } else {
            document.querySelector("#lan5k > a:nth-child(" + i + ") > div > span.label").style.backgroundColor = 'green';
        }
    }

    if ((document.querySelector("#lan5k > a:nth-child(1) > div > span.label").innerHTML === 'up') && (document.querySelector("#lan5k > a:nth-child(2) > div > span.label").innerHTML === 'up') && (document.querySelector("#lan5k > a:nth-child(3) > div > span.label").innerHTML === 'up') && (document.querySelector("#lan5k > a:nth-child(4) > div > span.label").innerHTML === 'up') && (document.querySelector("#lan5k > a:nth-child(5) > div > span.label").innerHTML === 'up') && (document.querySelector("#lan5k > a:nth-child(6) > div > span.label").innerHTML === 'up') && (document.querySelector("#lan5k > a:nth-child(7) > div > span.label").innerHTML === 'up') && (document.querySelector("#lan5k > a:nth-child(8) > div > span.label").innerHTML === 'up') && (document.querySelector("#lan5k > a:nth-child(9) > div > span.label").innerHTML === 'up') && (document.querySelector("#lan5k > a:nth-child(10) > div > span.label").innerHTML === 'up') && (document.querySelector("#lan5k > a:nth-child(11) > div > span.label").innerHTML === 'up') && (document.querySelector("#lan5k > a:nth-child(12) > div > span.label").innerHTML === 'up') && (document.querySelector("#lan5k > a:nth-child(13) > div > span.label").innerHTML === 'up') && (document.querySelector("#lan5k > a:nth-child(14) > div > span.label").innerHTML === 'up')) {
        document.querySelector('body > div.container-OSRE > div > div:nth-child(13)').style.background = 'green';
    } else {
        document.querySelector('body > div.container-OSRE > div > div:nth-child(13)').style.background = 'red';
    }

    //LB
    for (let i = 1; i <= 2; i++) {
        if (document.querySelector("#lb > a:nth-child(" + i + ") > div > span.label").innerHTML === 'down') {
            document.querySelector("#lb > a:nth-child(" + i + ") > div > span.label").style.backgroundColor = 'red';
        } else {
            document.querySelector("#lb > a:nth-child(" + i + ") > div > span.label").style.backgroundColor = 'green';
        }
    }

    if ((document.querySelector("#lb > a:nth-child(1) > div > span.label").innerHTML === 'up') && (document.querySelector("#lb > a:nth-child(2) > div > span.label").innerHTML === 'up')) {
        document.querySelector('body > div.container-OSRE > div > div:nth-child(14)').style.background = 'green';
    } else {
        document.querySelector('body > div.container-OSRE > div > div:nth-child(14)').style.background = 'red';
    }


    //CW
    if (document.querySelector("#cw > a > div > span.label").innerHTML === 'down') {
        document.querySelector("#cw > a > div > span.label").style.backgroundColor = 'red';
    } else {
        document.querySelector("#cw > a > div > span.label").style.backgroundColor = 'green';
    }

    if ((document.querySelector("#cw > a > div > span.label").innerHTML === 'up')) {
        document.querySelector('body > div.container-OSRE > div > div:nth-child(15)').style.background = 'green';
    } else {
        document.querySelector('body > div.container-OSRE > div > div:nth-child(15)').style.background = 'red';
    }

    //NFS5K
    for (let i = 1; i <= 6; i++) {
        if (document.querySelector("#nfs5k > a:nth-child(" + i + ") > div > span.label").innerHTML === 'down') {
            document.querySelector("#nfs5k > a:nth-child(" + i + ") > div > span.label").style.backgroundColor = 'red';
        } else {
            document.querySelector("#nfs5k > a:nth-child(" + i + ") > div > span.label").style.backgroundColor = 'green';
        }
    }

    if ((document.querySelector("#nfs5k > a:nth-child(1) > div > span.label").innerHTML === 'up') && (document.querySelector("#nfs5k > a:nth-child(2) > div > span.label").innerHTML === 'up') && (document.querySelector("#nfs5k > a:nth-child(3) > div > span.label").innerHTML === 'up') && (document.querySelector("#nfs5k > a:nth-child(4) > div > span.label").innerHTML === 'up') && (document.querySelector("#nfs5k > a:nth-child(5) > div > span.label").innerHTML === 'up') && (document.querySelector("#nfs5k > a:nth-child(6) > div > span.label").innerHTML === 'up')) {
        document.querySelector('body > div.container-OSRE > div > div:nth-child(16)').style.background = 'green';
    } else {
        document.querySelector('body > div.container-OSRE > div > div:nth-child(16)').style.background = 'red';
    }

</script>