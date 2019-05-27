<%--suppress ALL --%>
<%--suppress JSValidateTypes --%>
<%@ page import="controller.SnmpWalk" %>
<%@ page import="controller.JschConnect" %>
<%@ page import="java.util.Arrays" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.concurrent.ExecutorService" %>
<%@ page import="java.util.concurrent.Executors" %>
<%@ page import="java.util.concurrent.TimeUnit" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.time.LocalTime" %>
<%@ page import="com.google.gson.Gson" %>
<%@ page import="com.google.gson.GsonBuilder" %><%--
  Created by IntelliJ IDEA.
  User: theo.lietar-tmp
  Date: 03/05/2019
  Time: 11:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Fibres</title>
    <link rel="stylesheet" href="animate.css">
    <link rel="stylesheet" href="styles.css">
    <link rel="stylesheet" href="Fibres.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="hover.css">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script type="text/javascript" src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script type="text/javascript" src="tipped.js"></script>
    <link rel="stylesheet" type="text/css" href="tipped.css">
    <script type="text/javascript" src="Fibre.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.2/jquery.min.js"></script>
    <script src="http://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.2/modernizr.js"></script>
</head>
<style>
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

    #myProgress {
        width: 100%;
        background-color: #ddd;
    }

    #myBar {
        width: 1%;
        height: 30px;
        background-color: #4CAF50;
    }
</style>
<body style="background-color: whitesmoke">
<%
    response.setIntHeader("Refresh", 300);
%>
<header style="height: 75px">
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

        <div class="deco">
            <button onclick="deco()" class="btn btn-4 btn-4a icon-arrow-right hvr-overline-from-right">Deconnexion
            </button>
        </div>

        </div>

    </nav>
</header>

<%
    //TODO PENSER A METTRE UN BLOC PRINCIPAL POUR LES TAILLES D'ECRANS DIFFERENTS
    SnmpWalk snmp = new SnmpWalk();
//    JschConnect jsch = new JschConnect("","","","");
//    int count = 0;
//
//    ArrayList<JschConnect> list = new ArrayList<JschConnect>();
//    ExecutorService executorService = Executors.newFixedThreadPool(24);
//    list.add(new JschConnect("10.2.23.6","tsenami.rad","ts3n4m1","show interface ethernet 2/1"));
//    list.add(new JschConnect("10.2.23.6","tsenami.rad","ts3n4m1","show interface ethernet 9/1"));
//    list.add(new JschConnect("10.2.21.6","tsenami.rad","ts3n4m1","show interface ethernet 8/1"));
//    list.add(new JschConnect("10.2.21.6","tsenami.rad","ts3n4m1","show interface ethernet 8/2"));
//    list.add(new JschConnect("10.2.21.6","tsenami.rad","ts3n4m1","show interface ethernet 3/2"));
//    list.add(new JschConnect("10.2.22.6","tsenami.rad","ts3n4m1","show interface ethernet 8/1"));
//    list.add(new JschConnect("10.2.22.6","tsenami.rad","ts3n4m1","show interface ethernet 8/2"));
//    list.add(new JschConnect("10.2.22.6","tsenami.rad","ts3n4m1","show interface ethernet 3/2"));
//
//    list.add(new JschConnect("10.2.23.3","tsenami.rad","ts3n4m1","show interface ethernet 2/32"));
//    list.add(new JschConnect("10.2.23.3","tsenami.rad","ts3n4m1","show interface ethernet 9/32"));
//    list.add(new JschConnect("10.2.21.3","tsenami.rad","ts3n4m1","show interface ethernet 8/32"));
//    list.add(new JschConnect("10.2.21.3","tsenami.rad","ts3n4m1","show interface ethernet 3/31"));
//    list.add(new JschConnect("10.2.21.3","tsenami.rad","ts3n4m1","show interface ethernet 8/31"));
//    list.add(new JschConnect("10.2.22.3","tsenami.rad","ts3n4m1","show interface ethernet 8/32"));
//    list.add(new JschConnect("10.2.22.3","tsenami.rad","ts3n4m1","show interface ethernet 3/31"));
//    list.add(new JschConnect("10.2.22.3","tsenami.rad","ts3n4m1","show interface ethernet 8/31"));
//
//    list.add(new JschConnect("10.2.23.51","tsenami.rad","ts3n4m1","show interface ethernet 2/17"));
//    list.add(new JschConnect("10.2.23.51","tsenami.rad","ts3n4m1","show interface ethernet 9/17"));
//    list.add(new JschConnect("10.2.21.51","tsenami.rad","ts3n4m1","show interface ethernet 8/17"));
//    list.add(new JschConnect("10.2.21.51","tsenami.rad","ts3n4m1","show interface ethernet 8/18"));
//    list.add(new JschConnect("10.2.21.51","tsenami.rad","ts3n4m1","show interface ethernet 3/18"));
//    list.add(new JschConnect("10.2.22.51","tsenami.rad","ts3n4m1","show interface ethernet 8/17"));
//    list.add(new JschConnect("10.2.22.51","tsenami.rad","ts3n4m1","show interface ethernet 8/18"));
//    list.add(new JschConnect("10.2.22.51","tsenami.rad","ts3n4m1","show interface ethernet 3/18"));
//
//    list.add(new JschConnect("10.2.23.50","tsenami.rad","ts3n4m1","show interface ethernet 1/32"));
//    list.add(new JschConnect("10.2.23.50","tsenami.rad","ts3n4m1","show interface ethernet 10/32"));
//    list.add(new JschConnect("10.2.21.50","tsenami.rad","ts3n4m1","show interface ethernet 2/32"));
//    list.add(new JschConnect("10.2.21.50","tsenami.rad","ts3n4m1","show interface ethernet 2/30"));
//    list.add(new JschConnect("10.2.21.50","tsenami.rad","ts3n4m1","show interface ethernet 9/30"));
//    list.add(new JschConnect("10.2.22.50","tsenami.rad","ts3n4m1","show interface ethernet 2/32"));
//    list.add(new JschConnect("10.2.22.50","tsenami.rad","ts3n4m1","show interface ethernet 2/30"));
//    list.add(new JschConnect("10.2.22.50","tsenami.rad","ts3n4m1","show interface ethernet 9/30"));
//
//
//    for(int i=0;i<list.size();i++){
//        executorService.execute(list.get(i));
//    }
//
//    executorService.awaitTermination(14000, TimeUnit.MILLISECONDS);


    //CCLANEQDC1
    //PORT 2/1 STATUS
    String port21 = snmp.getIfOperStatus("10.2.23.6", ".1.3.6.1.2.1.2.2.1.8.436731904", "GFI", "161");
    String status21 = port21.substring(35, port21.length() - 1);
    String etat21 = status21.contains("1") ? "Up" : "down";

//    String [] port21Error = list.get(0).getRes();
//
//    //PORT 2/1 ERROR
//    String error21 = port21Error[0];
//
//
//    if (error21.contains("0") && error21.length() <= 5) {
//        error21 = "true";
//    } else {
//        error21 = "false";
//    }
//
//    //PORT 2/1 OUTPUT
//    String out21 = port21Error[1];


    //PORT 9/1 STATUS
    String port91 = snmp.getIfOperStatus("10.2.23.6", ".1.3.6.1.2.1.2.2.1.8.440401920", "GFI", "161");
    String status91 = port91.substring(35, port91.length() - 1);
    String etat91 = status91.contains("1") ? "Up" : "Down";

    System.out.println("PORT 9/1 LAN " + status91);

//    //PORT 9/1 ERROR
//    String[] port91Error = list.get(1).getRes();
//    String error91 = port91Error[0];
//    if (error91.contains("0") && error91.length() <= 5) {
//        error91 = "true";
//    } else {
//        error91 = "false";
//    }
//
//    String out91 = port21Error[1];

    //========================================================================================

    //CCLAN41DC1
    //PORT 8/1 STATUS
    String port81 = snmp.getIfOperStatus("10.2.21.6", ".1.3.6.1.2.1.2.2.1.8.439877632", "GFI", "161");
    String status81 = port81.substring(35, port81.length() - 1);
    String etat81 = status81.contains("1") ? "Up" : "Down";

//    //PORT 8/1 ERROR
//    String[] port81Error = list.get(2).getRes();
//    String error81 = port81Error[0];
//    if (error81.contains("0") && error81.length() <= 5) {
//        error81 = "true";
//    } else {
//        error81 = "false";
//    }
//
//    //PORT 8/1 OUT ERROR
//    String out81 = port81Error[1];

    //PORT 8/2 STATUS
    String port82 = snmp.getIfOperStatus("10.2.21.6", ".1.3.6.1.2.1.2.2.1.8.439881728", "GFI", "161");
    String status82 = port82.substring(35, port82.length() - 1);
    String etat82 = status82.contains("1") ? "Up" : "Down";

    //PORT 8/2 ERROR
//    String[] port82Error =list.get(3).getRes();
//    String error82 = port82Error[0];
//    if (error82.contains("0") && error82.length() <= 5) {
//        error82 = "true";
//    } else {
//        error82 = "false";
//    }
//
//    //PORT 8/2 OUT ERROR
//    String out82 = port82Error[1];

    //PORT 3/2 STATUS
    String port32 = snmp.getIfOperStatus("10.2.21.6", ".1.3.6.1.2.1.2.2.1.8.437260288", "GFI", "161");
    String status32 = port32.substring(35, port32.length() - 1);
    String etat32 = status32.contains("1") ? "Up" : "Down";

    //PORT 3/2 ERROR
//    String[] port32Error = list.get(4).getRes();
//    String error32 = port32Error[0];
//    if (error32.contains("0") && error32.length() <= 5) {
//        error32 = "true";
//    } else {
//        error32 = "false";
//    }
//
//    //PORT 3/2 OUT ERROR
//
//    String out32 = port32Error[1];

    //===========================================================================================

    //CCLAN42DC2
    //PORT 8/1 STATUS
    String port81DC2 = snmp.getIfOperStatus("10.2.22.6", ".1.3.6.1.2.1.2.2.1.8.439877632", "GFI", "161");
    String status81dc2 = port81DC2.substring(35, port81DC2.length() - 1);
    String etat81dc2 = status81dc2.contains("1") ? "Up" : "Down";

    //PORT 8/1 ERROR
//    String [] port81dc2Error = list.get(5).getRes();
//    String error81dc2 = port81dc2Error[0];
//    if (error81dc2.contains("0") && error81dc2.length() <= 5) {
//        error81dc2 = "true";
//    } else {
//        error81dc2 = "false";
//    }
//
//    //PORT 8/1 OUT ERROR
//    String out81dc2 = port81dc2Error[1];

    //PORT 8/2 STATUS
    String port82DC2 = snmp.getIfOperStatus("10.2.22.6", ".1.3.6.1.2.1.2.2.1.8.439881728", "GFI", "161");
    String status82dc2 = port82DC2.substring(35, port82DC2.length() - 1);
    String etat82dc2 = status82dc2.contains("1") ? "Up" : "Down";

    //PORT 8/2 ERROR
//    String[] port82dc2Error = list.get(6).getRes();
//    String error82dc2 = port82dc2Error[0];
//    if (error82dc2.contains("0") && error82dc2.length() <= 5) {
//        error82dc2 = "true";
//    } else {
//        error82dc2 = "false";
//    }
//
//    //PORT 8/2 OUT ERROR
//    String out82dc2 = port82dc2Error[1];

    //PORT 3/2 STATUS
    String port32DC2 = snmp.getIfOperStatus("10.2.22.6", ".1.3.6.1.2.1.2.2.1.8.437260288", "GFI", "161");
    String status32dc2 = port32DC2.substring(35, port32DC2.length() - 1);
    String etat32dc2 = status32dc2.contains("1") ? "Up" : "Down";

    //PORT 3/2 ERROR
//    String[] port32dc2Error = list.get(7).getRes();
//    String error32dc2 = port32dc2Error[0];
//    if (error32dc2.contains("0") && error32dc2.length() <= 5) {
//        error32dc2 = "true";
//    } else {
//        error32dc2 = "false";
//    }
//
//    //PORT 3/2 OUT ERROR
//    String out32dc2 = port32dc2Error[1];
%>

<%
    //CCDMZEQDC1
    //PORT 2/32 STATUS
    String port232 = snmp.getIfOperStatus("10.2.23.3", ".1.3.6.1.2.1.2.2.1.8.436858880", "GFI", "161");
    String status232 = port232.substring(35, port232.length() - 1);
    String etat232 = status232.contains("1") ? "Up" : "Down";

    //PORT 2/32 IN ERROR
//    String[] port232Error = list.get(8).getRes();
//    String error232 = port232Error[0];
//    error232 = error232.contains("0") && error232.length()<=5 ? "true" : "false";
//
//    //PORT 2/32 OUT ERROR
//    String out232 = port232Error[1];


    //PORT 9/32 STATUS
    String port932 = snmp.getIfOperStatus("10.2.23.3", ".1.3.6.1.2.1.2.2.1.8.440528896", "GFI", "161");
    String status932 = port932.substring(35, port932.length() - 1);
    String etat932 = status932.contains("1") ? "Up" : "Down";

    //PORT 9/32 IN ERROR
//    String[] port932Error = list.get(9).getRes();
//    String error932 = port932Error[0];
//    error932 = error932.contains("0") && error932.length()<=5 ? "true" : "false";
//
//    //PORT 9/32 OUT ERROR
//    String out932 = port932Error[1];

    //=================================================================================================================

    //CCDMZ41DC1
    //PORT 8/32 STATUS
    String port832 = snmp.getIfOperStatus("10.2.21.3", ".1.3.6.1.2.1.2.2.1.8.440004608", "GFI", "161");
    String status832 = port832.substring(35, port832.length() - 1);
    String etat832 = status832.contains("1") ? "Up" : "Down";

    //PORT 8/32 IN ERROR
//    String[] port832Error = list.get(10).getRes();
//    String error832 = port832Error[0];
//    error832 = error832.contains("0") && error832.length()<=5 ? "true" : "false";
//
//    //PORT 8/32 OUT ERROR
//    String out832 = port832Error[1];


    //PORT 3/31 STATUS
    String port331 = snmp.getIfOperStatus("10.2.21.3", ".1.3.6.1.2.1.2.2.1.8.437379072", "GFI", "161");
    String status331 = port331.substring(35, port331.length() - 1);
    String etat331 = status331.contains("1") ? "Up" : "Down";

    //PORT 3/31 IN ERROR
//    String[] port331Error = list.get(11).getRes();
//    String error331 = port331Error[0];
//    error331 = error331.contains("0") && error331.length()<=5 ? "true" : "false";
//
//    //PORT 3/31 OUT ERROR
//    String out331 = port331Error[1];


    //PORT 8/31 STATUS
    String port831 = snmp.getIfOperStatus("10.2.21.3", ".1.3.6.1.2.1.2.2.1.8.440000512", "GFI", "161");
    String status831 = port831.substring(35, port831.length() - 1);
    String etat831 = status831.contains("1") ? "Up" : "Down";

    //PORT 8/31 IN ERROR
//    String[] port831Error = list.get(12).getRes();
//    String error831 = port831Error[0];
//    error831 = error831.contains("0") && error831.length()<=5 ? "true" : "false";
//
//    //PORT 8/31 OUT ERROR
//    String out831 = port831Error[1];
    //========================================================================================================

    //CCDMZ42DC2
    //PORT 8/32 STATUS
    String port832DC2 = snmp.getIfOperStatus("10.2.22.3", ".1.3.6.1.2.1.2.2.1.8.440004608", "GFI", "161");
    String status832DC2 = port832DC2.substring(35, port832DC2.length() - 1);
    String etat832DC2 = status832DC2.contains("1") ? "Up" : "Down";

    //PORT 8/32 IN ERROR
//    String[] port832DC2Error = list.get(13).getRes();
//    String error832DC2 = port832DC2Error[0];
//    error832DC2 = error832DC2.contains("0") && error832DC2.length()<=5 ? "true" : "false";
//
//    //PORT 8/32 OUT ERROR
//    String out832DC2 = port832DC2Error[1];


    //PORT 3/31 STATUS
    String port331DC2 = snmp.getIfOperStatus("10.2.22.3", ".1.3.6.1.2.1.2.2.1.8.437379072", "GFI", "161");
    String status331DC2 = port331DC2.substring(35, port331DC2.length() - 1);
    String etat331DC2 = status331DC2.contains("1") ? "Up" : "Down";

    //PORT 3/31 IN ERROR
//    String[] port331DC2Error = list.get(14).getRes();
//    String error331DC2 = port331DC2Error[0];
//    error331DC2 = error331DC2.contains("0") && error331DC2.length()<=5 ? "true" : "false";
//
//    //PORT 3/31 OUT ERROR
//    String out331DC2 = port331DC2Error[1];


    //PORT 8/31 STATUS
    String port831DC2 = snmp.getIfOperStatus("10.2.22.3", ".1.3.6.1.2.1.2.2.1.8.440000512", "GFI", "161");
    String status831DC2 = port831DC2.substring(35, port831DC2.length() - 1);
    String etat831DC2 = status831DC2.contains("1") ? "Up" : "Down";

    //PORT 8/31 IN ERROR
//    String[] port831DC2Error = list.get(15).getRes();
//    String error831DC2 = port831DC2Error[0];
//    error831DC2 = error831DC2.contains("0") && error831DC2.length()<=5 ? "true" : "false";
//
//    //PORT 8/31 OUT ERROR
//    String out831DC2 = port831DC2Error[1];

%>

<%
    //CCHEBDC1
    //PORT 2/17 STATUS
    String port217 = snmp.getIfOperStatus("10.2.23.51", ".1.3.6.1.2.1.2.2.1.8.436797440", "GFI", "161");
    String status217 = port217.substring(35, port217.length() - 1);
    String etat217 = status217.contains("1") ? "Up" : "Down";

    //PORT 2/17 IN ERROR
//    String[] port217Error = list.get(16).getRes();
//    String error217 = port217Error[0];
//    error217 = error217.contains("0") && error217.length()<=5 ? "true" : "false";
//
//    //PORT 2/17 OUT ERROR
//    String out217 = port217Error[1];


    //PORT 9/17 STATUS
    String port917 = snmp.getIfOperStatus("10.2.23.51", ".1.3.6.1.2.1.2.2.1.8.440467456", "GFI", "161");
    String status917 = port917.substring(35, port917.length() - 1);
    String etat917 = status917.contains("1") ? "Up" : "Down";

    //PORT 9/17 IN ERROR
//    String[] port917Error = list.get(17).getRes();
//    String error917 = port917Error[0];
//    error917 = error917.contains("0") && error917.length()<=5 ? "true" : "false";
//
//    //PORT 9/17 OUT ERROR
//    String out917 = port917Error[1];


    //====================================================================================================
    //CCHEBDC41
    //PORT 8/17 STATUS
    String port817 = snmp.getIfOperStatus("10.2.21.51", ".1.3.6.1.2.1.2.2.1.8.439943168", "gfirec", "161");
    String status817 = port817.substring(35, port817.length() - 1);
    String etat817 = status817.contains("1") ? "Up" : "Down";

    //PORT 8/17 IN ERROR
//    String[] port817Error = list.get(18).getRes();
//    String error817 = port817Error[0];
//    error817 = error817.contains("0") && error817.length()<=5 ? "true" : "false";
//
//    //PORT 8/17 OUT ERROR
//    String out817 = port817Error[1];


    //PORT 8/18 STATUS
    String port818 = snmp.getIfOperStatus("10.2.21.51", ".1.3.6.1.2.1.2.2.1.8.439947264", "gfirec", "161");
    String status818 = port818.substring(35, port818.length() - 1);
    String etat818 = status818.contains("1") ? "Up" : "Down";

    //PORT 8/18 IN ERROR
//    String[] port818Error = list.get(19).getRes();
//    String error818 = port818Error[0];
//    error818 = error818.contains("0") && error818.length()<=5 ? "true" : "false";
//
//    //PORT 8/18 OUT ERROR
//    String out818 = port818Error[1];


    //PORT 3/18 STATUS
    String port318 = snmp.getIfOperStatus("10.2.21.51", ".1.3.6.1.2.1.2.2.1.8.437325824", "gfirec", "161");
    String status318 = port318.substring(35, port318.length() - 1);
    String etat318 = status318.contains("1") ? "Up" : "Down";

    //PORT 3/18 IN ERROR
//    String[] port318Error = list.get(20).getRes();
//    String error318 = port318Error[0];
//    error318 = error318.contains("0") && error318.length()<=5 ? "true" : "false";
//
//    //PORT 3/18 OUT ERROR
//    String out318 = port318Error[1];
//

    //=============================================================================================================
    //CCHEBDC42
    //PORT 8/17 STATUS
    String port817DC2 = snmp.getIfOperStatus("10.2.22.51", ".1.3.6.1.2.1.2.2.1.8.439943168", "gfirec", "161");
    String status817DC2 = port817DC2.substring(35, port817DC2.length() - 1);
    String etat817DC2 = status817DC2.contains("1") ? "Up" : "Down";

    //PORT 8/17 IN ERROR
//    String[] port817DC2Error = list.get(21).getRes();
//    String error817DC2 = port817DC2Error[0];
//    error817DC2 = error817DC2.contains("0") && error817DC2.length()<=5 ? "true" : "false";
//
//
//    //PORT 8/17 OUT ERROR
//    String out817DC2 = port817DC2Error[1];


    //PORT 8/18 STATUS
    String port818DC2 = snmp.getIfOperStatus("10.2.22.51", ".1.3.6.1.2.1.2.2.1.8.439947264", "gfirec", "161");
    String status818DC2 = port818DC2.substring(35, port818DC2.length() - 1);
    String etat818DC2 = status818DC2.contains("1") ? "Up" : "Down";

    //PORT 8/18 IN ERROR
//    String[] port818DC2Error = list.get(22).getRes();
//    String error818DC2 = port818DC2Error[0];
//    error818DC2 = error818DC2.contains("0") && error818DC2.length()<=5 ? "true" : "false";
//
//    //PORT 8/18 OUT ERROR
//    String out818DC2 = port818DC2Error[1];


    //PORT 3/18 STATUS
    String port318DC2 = snmp.getIfOperStatus("10.2.22.51", ".1.3.6.1.2.1.2.2.1.8.437325824", "gfirec", "161");
    String status318DC2 = port318DC2.substring(35, port318DC2.length() - 1);
    String etat318DC2 = status318DC2.contains("1") ? "Up" : "Down";

    //PORT 3/18 IN ERROR
//    String[] port318DC2Error = list.get(23).getRes();
//    String error318DC2 = port318DC2Error[0];
//    error318DC2 = error318DC2.contains("0") && error318DC2.length()<=5 ? "true" : "false";
//
//    //PORT 3/18 OUT ERROR
//    String out318DC2 = port318DC2Error[1];


%>

<%
    //DC1 GARSYS
    //PORT 1/32 STATUS
    String port132 = snmp.getIfOperStatus("10.2.23.50", ".1.3.6.1.2.1.2.2.1.8.436334592", "GFI", "161");
    String status132 = port132.substring(35, port132.length() - 1);
    String etat132 = status132.contains("1") ? "Up" : "Down";

    //PORT 1/32 IN ERROR
//    String[] port132Error = list.get(24).getRes();
//    String error132 = port132Error[0];
//    error132 = error132.contains("0") && error132.length()<=5 ? "true" : "false";
//
//    //PORT 1/32 OUT ERROR
//    String out132 = port132Error[1];


    //PORT 10/32 STATUS
    String port1032 = snmp.getIfOperStatus("10.2.23.50", ".1.3.6.1.2.1.2.2.1.8.441053184", "GFI", "161");
    String status1032 = port1032.substring(35, port1032.length() - 1);
    String etat1032 = status1032.contains("1") ? "Up" : "Down";

    //PORT 10/32 IN ERROR
//    String[] port1032Error = list.get(25).getRes();
//    String error1032 = port1032Error[0];
//    error1032 = error1032.contains("0") && error1032.length()<=5 ? "true" : "false";
//
//    //PORT 10/32 OUT ERROR
//    String out1032 = port1032Error[1];


    //DC41 GARSYS
    //PORT 2/32 STATUS
    String port232GAR = snmp.getIfOperStatus("10.2.21.50", ".1.3.6.1.2.1.2.2.1.8.436858880", "GFI", "161");
    String status232GAR = port232GAR.substring(35, port232GAR.length() - 1);
    String etat232GAR = status232GAR.contains("1") ? "Up" : "Down";

    //PORT 2/32 IN ERROR
//    String[] port232GARError = list.get(26).getRes();
//    String error232GAR = port232GARError[0];
//    error232GAR = error232GAR.contains("0") && error232GAR.length()<=5 ? "true" : "false";
//
//    //PORT 2/32 OUT ERROR
//    String out232GAR = port232GARError[1];


    //PORT 2/30 STATUS
    String port230 = snmp.getIfOperStatus("10.2.21.50", ".1.3.6.1.2.1.2.2.1.8.436850688", "GFI", "161");
    String status230 = port230.substring(35, port230.length() - 1);
    String etat230 = status230.contains("1") ? "Up" : "Down";

    //PORT 2/30 IN ERROR
//    String[] port230Error = list.get(27).getRes();
//    String error230 = port230Error[0];
//    error230 = error230.contains("0") && error230.length()<=5 ? "true" : "false";
//
//    //PORT 2/30 OUT ERROR
//    String out230 = port230Error[1];


    //PORT 9/30 STATUS
    String port930 = snmp.getIfOperStatus("10.2.21.50", ".1.3.6.1.2.1.2.2.1.8.440520704", "GFI", "161");
    String status930 = port930.substring(35, port930.length() - 1);
    String etat930 = status930.contains("1") ? "Up" : "Down";

    //PORT 9/30 IN ERROR
//    String[] port930Error = list.get(28).getRes();
//    String error930 = port930Error[0];
//    error930 = error930.contains("0") && error930.length()<=5 ? "true" : "false";
//
//    //PORT 9/30 OUT ERROR
//    String out930 = port930Error[1];


    //DC42 GARSYS
    //PORT 2/32 DC2 STATUS
    String port232GARDC2 = snmp.getIfOperStatus("10.2.22.50", ".1.3.6.1.2.1.2.2.1.8.436858880", "GFI", "161");
    String status232GARDC2 = port232GARDC2.substring(35, port232GARDC2.length() - 1);
    String etat232GARDC2 = status232GARDC2.contains("1") ? "Up" : "Down";

    //PORT 2/32 DC2 IN ERROR
//    String[] port232GARDC2Error = list.get(29).getRes();
//    String error232GARDC2 = port232GARDC2Error[0];
//    error232GARDC2 = error232GARDC2.contains("0") && error232GARDC2.length()<=5 ? "true" : "false";
//
//    //PORT 2/32 OUT ERROR
//    String out232GARDC2 = port232GARDC2Error[1];


    //PORT 2/30 DC2 STATUS
    String port230GARDC2 = snmp.getIfOperStatus("10.2.22.50", ".1.3.6.1.2.1.2.2.1.8.436850688", "GFI", "161");
    String status230GARDC2 = port230GARDC2.substring(35, port230GARDC2.length() - 1);
    String etat230GARDC2 = status230GARDC2.contains("1") ? "Up" : "Down";

    //PORT 2/30 DC2 IN ERROR
//    String[] port230GARDC2Error = list.get(30).getRes();
//    String error230GARDC2 = port230GARDC2Error[0];
//    error230GARDC2 = error230GARDC2.contains("0") && error230GARDC2.length()<=5 ? "true" : "false";
//
//    //PORT 2/30 OUT ERROR
//    String out230GARDC2 = port230GARDC2Error[1];


    //PORT 9/30 DC2 Status
    String port930GARDC2 = snmp.getIfOperStatus("10.2.22.50", ".1.3.6.1.2.1.2.2.1.8.440520704", "GFI", "161");
    String status930GARDC2 = port930GARDC2.substring(35, port930GARDC2.length() - 1);
    String etat930GARDC2 = status930GARDC2.contains("1") ? "Up" : "Down";

    //PORT 9/30 DC2 IN ERROR
//    String[] port930GARDC2Error = list.get(31).getRes();
//    String error930GARDC2 = port930GARDC2Error[0];
//    error930GARDC2 = error930GARDC2.contains("0") && error930GARDC2.length()<=5 ? "true" : "false";
//
//    //PORT 9/30 OUT ERROR
//    String out930GARDC2 = port930GARDC2Error[1];
%>


<p id="0" data-value="<%=status21%>"></p>
<p id="1" data-value="<%=status91%>"></p>
<p id="2" data-value="<%=status81%>"></p>
<p id="3" data-value="<%=status82%>"></p>
<p id="4" data-value="<%=status32%>"></p>
<p id="5" data-value="<%=status81dc2%>"></p>
<p id="6" data-value="<%=status82dc2%>"></p>
<p id="7" data-value="<%=status32dc2%>"></p>

<p id="8" data-value="<%=status232%>"></p>
<p id="9" data-value="<%=status932%>"></p>
<p id="10" data-value="<%=status832%>"></p>
<p id="11" data-value="<%=status331%>"></p>
<p id="12" data-value="<%=status831%>"></p>
<p id="13" data-value="<%=status832DC2%>"></p>
<p id="14" data-value="<%=status331DC2%>"></p>
<p id="15" data-value="<%=status831DC2%>"></p>

<p id="16" data-value="<%=status217%>"></p>
<p id="17" data-value="<%=status917%>"></p>
<p id="18" data-value="<%=status817%>"></p>
<p id="19" data-value="<%=status818%>"></p>
<p id="20" data-value="<%=status318%>"></p>
<p id="21" data-value="<%=status817DC2%>"></p>
<p id="22" data-value="<%=status818DC2%>"></p>
<p id="23" data-value="<%=status318DC2%>"></p>


<p id="24" data-value="<%=status132%>"></p>
<p id="25" data-value="<%=status1032%>"></p>
<p id="26" data-value="<%=status232GAR%>"></p>
<p id="27" data-value="<%=status230%>"></p>
<p id="28" data-value="<%=status930%>"></p>
<p id="29" data-value="<%=status232GARDC2%>"></p>
<p id="30" data-value="<%=status230GARDC2%>"></p>
<p id="31" data-value="<%=status930GARDC2%>"></p>


<span style="position: absolute;padding-left: 20px;padding-top: 15px;font-weight: bold;color: red;font-size: 1.2em">LAN 7K</span>
<span style="position: absolute;padding-left: 760px;padding-top: 5px;font-weight: bold;color: red;font-size: 1.2em">DMZ 7K</span>
<span style="position: absolute;padding-left: 20px;padding-top: 380px;font-weight: bold;color: red;font-size: 1.2em">HEB 7K</span>
<span style="position: absolute;padding-left: 760px;padding-top: 380px;font-weight: bold;color: red;font-size: 1.2em">OTV ( GARSYS ) 7K</span>

<span id="date"
      style="position: absolute;padding-left: 1330px;padding-top: 5px">Last update at : <%=new Date().toString().substring(11, 20)%></span>

<div class="progress" style="position:absolute;margin-top: 300px;width: 50%;height:7.4%;margin-left: 24%">
    <div class="progress-bar" role="progressbar" aria-valuenow="70"
         aria-valuemin="0" aria-valuemax="100" style="background-color: forestgreen">
        <span class="sr-only"> </span>
    </div>
</div>


<div class="graphOSRE">

    <div id="lineH"></div>


    <div id="lineV"></div>

    <span style="position:absolute;padding-left: 195px;padding-top: 90px">Eth 2/1</span>
    <span style="position:absolute;padding-left: 95px;padding-top: 185px">Eth 8/1</span>
    <span style="position:absolute;padding-left: 395px;padding-top: 90px">Eth 9/1</span>
    <span style="position:absolute;padding-left: 500px;padding-top: 185px">Eth 8/1</span>
    <span style="position:absolute;padding-left: 235px;padding-top: 210px">Eth 8/2</span>
    <span style="position:absolute;padding-left: 235px;padding-top: 265px">Eth 3/2</span>
    <span style="position:absolute;padding-left: 345px;padding-top: 210px">Eth 8/2</span>
    <span style="position:absolute;padding-left: 345px;padding-top: 265px">Eth 3/2</span>

    <%--    DMZ--%>
    <span style="position:absolute;padding-left: 965px;padding-top: 90px">Eth 2/32</span>
    <span style="position:absolute;padding-left: 1195px;padding-top: 90px">Eth 9/32</span>
    <span style="position:absolute;padding-left: 860px;padding-top: 185px">Eth 8/32</span>
    <span style="position:absolute;padding-left: 1300px;padding-top: 185px">Eth 8/32</span>
    <span style="position:absolute;padding-left: 1020px;padding-top: 210px">Eth 3/31</span>
    <span style="position:absolute;padding-left: 1130px;padding-top: 210px">Eth 3/31</span>
    <span style="position:absolute;padding-left: 1020px;padding-top: 265px">Eth 8/31</span>
    <span style="position:absolute;padding-left: 1130px;padding-top: 265px">Eth 8/31</span>

    <%--    HEB--%>
    <span style="position: absolute;padding-left: 175px;padding-top: 420px">Eth 2/17</span>
    <span style="position: absolute;padding-left: 85px;padding-top: 505px">Eth 8/17</span>
    <span style="position: absolute;padding-left: 395px;padding-top: 420px">Eth 9/17</span>
    <span style="position: absolute;padding-left: 230px;padding-top: 530px">Eth 8/18</span>
    <span style="position: absolute;padding-left: 230px;padding-top: 590px">Eth 3/18</span>
    <span style="position: absolute;padding-left: 335px;padding-top: 530px">Eth 8/18</span>
    <span style="position: absolute;padding-left: 335px;padding-top: 590px">Eth 3/18</span>
    <span style="position: absolute;padding-left: 490px;padding-top: 505px">Eth 8/17</span>

    <%--    GARSYS--%>
    <span style="position: absolute;padding-left: 970px;padding-top: 422px">Eth 1/32</span>
    <span style="position: absolute;padding-left: 875px;padding-top: 505px">Eth 2/32</span>
    <span style="position: absolute;padding-left: 1190px;padding-top: 422px">Eth 10/32</span>
    <span style="position: absolute;padding-left: 1280px;padding-top: 505px">Eth 2/32</span>
    <span style="position: absolute;padding-left: 1025px;padding-top: 530px">Eth 2/30</span>
    <span style="position: absolute;padding-left: 1025px;padding-top: 590px">Eth 9/30</span>
    <span style="position: absolute;padding-left: 1130px;padding-top: 530px">Eth 2/30</span>
    <span style="position: absolute;padding-left: 1130px;padding-top: 590px">Eth 9/30</span>

    <div class="landc1 function" data-content="Adresse IP : 10.2.23.6 <br> Hostname : CCLANEQDC1"
         data-title="CCLANEQDC1">
        <span></br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;LAN DC1</span>
    </div>
    <div id="dc1-dc41"></div>
    <div id="dc1-dc41hov" class='function'
         data-title="DC1-DC41"></div>
    <div class="landc41 function" data-content="Adresse IP : 10.2.21.6 <br> Hostname : CCLAN41DC1"
         data-title="CCLAN41DC1">
        <span></br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;LAN DC41</span>
    </div>
    <div id="dc1-dc42"></div>
    <div id="dc1-dc42hov" class='function'
         data-title="DC1-DC42"></div>
    <div class="landc42 function" data-content="Adresse IP : 10.2.22.6 <br> Hostname : CCLAN42DC2"
         data-title="CCLAN42DC2">
        <span></br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;LAN DC42</span>
    </div>
    <div id="dc41-dc42"></div>
    <div id="dc41-dc42hov" class='function'
         data-title="DC41-DC42"></div>

    <div id="dc42-dc41"></div>
    <div id="dc42-dc41hov" class='function'
         data-title="DC42-DC41"></div>


    <div class="DMZDC1 function" data-content="Adresse IP : 10.2.23.3 <br> Hostname : CCDMZEQDC1"
         data-title="CCDMZEQDC1">
        <span>DMZ DC1</span>
    </div>
    <div id="dc1-dc41DMZ"></div>
    <div id="dc1-dc41hovDMZ" class='function'
         data-title="DC1-DC41">
    </div>

    <div class="DMZDC41 function" data-content="Adresse IP : 10.2.21.3 <br> Hostname : CCDMZ41DC1"
         data-title="CCDMZ41DC1">
        <span>DMZ DC41</span>
    </div>
    <div id="dc1-dc42DMZ"></div>
    <div id="dc1-dc42hovDMZ" class='function'
         data-title="DC1-DC42">
    </div>

    <div class="DMZDC42 function" data-content="Adresse IP : 10.2.22.3 <br> Hostname : CCDMZ42DC2"
         data-title="CCDMZ42DC2">
        <span>DMZ DC42</span>
    </div>

    <div id="dc41-dc42DMZ"></div>
    <div id="dc41-dc42hovDMZ" class='function'
         data-title="DC41-DC42">
    </div>

    <div id="dc42-dc41DMZ"></div>
    <div id="dc42-dc41hovDMZ" class='function'
         data-title="DC42-DC41">
    </div>


    <div class="HEBDC1 function" data-content="Adresse IP : 10.2.23.51 <br> Hostname : CCHEB01R703"
         data-title="CCHEB01R703">
        <span>HEB DC1</span>
    </div>
    <div id="dc1-dc41HEB"></div>
    <div id="dc1-dc41hovHEB" class='function'
         data-title="DC1-DC41">
    </div>

    <div class="HEBDC41 function" data-content="Adresse IP : 10.2.21.51 <br> Hostname : CCHEB41F10"
         data-title="CCHEB41F10">
        <span>HEB DC41</span>
    </div>
    <div id="dc1-dc42HEB"></div>
    <div id="dc1-dc42hovHEB" class='function'
         data-title="DC1-DC42">
    </div>

    <div class="HEBDC42 function" data-content="Adresse IP : 10.2.22.51 <br> Hostname : CCHEB42E08"
         data-title="CCHEB42E08">
        <span>HEB DC42</span>
    </div>
    <div id="dc41-dc42HEB"></div>
    <div id="dc41-dc42hovHEB" class='function'
         data-title="DC41-DC42">
    </div>

    <div id="dc42-dc41HEB"></div>
    <div id="dc42-dc41hovHEB" class='function'
         data-title="DC42-DC41">
    </div>


    <div class="GARSYSDC1">
        <span>GARSYS DC1</span>
    </div>
    <div id="dc1-dc41GARSYS"></div>
    <div id="dc1-dc41hovGARSYS" class='function'
         data-title="DC1-DC41">
    </div>

    <div class="GARSYSDC41">
        <span>GARSYS DC41</span>
    </div>
    <div id="dc1-dc42GARSYS"></div>
    <div id="dc1-dc42hovGARSYS" class='function' data-title="DC1-DC42"></div>

    <div class="GARSYSDC42">
        <span>GARSYS DC42</span>
    </div>
    <div id="dc41-dc42GARSYS"></div>
    <div id="dc41-dc42hovGARSYS" class='function' data-title="DC41-DC42"></div>

    <div id="dc42-dc41GARSYS"></div>
    <div id="dc42-dc41hovGARSYS" class='function' data-title="DC42-DC41"></div>
    <br>
</div>
</body>
</html>

<script type="text/javascript">
    $(document).ready(function () {
        Tipped.create('.function', function (element) {
            return {
                title: $(element).data('title'),
                content: $(element).data('content')
            };
        }, {
            skin: 'light'
        });
    });
</script>
