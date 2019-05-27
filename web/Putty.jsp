<%@ page import="javax.xml.parsers.DocumentBuilderFactory" %>
<%@ page import="javax.xml.parsers.DocumentBuilder" %>
<%@ page import="javax.xml.parsers.ParserConfigurationException" %>
<%@ page import="org.w3c.dom.Document" %>
<%@ page import="java.io.File" %>
<%@ page import="org.xml.sax.SAXException" %>
<%@ page import="java.io.IOException" %>
<%@ page import="org.w3c.dom.Element" %>
<%@ page import="org.w3c.dom.NodeList" %>
<%@ page import="org.w3c.dom.Node" %>
<%@ page import="java.util.Arrays" %><%--
  Created by IntelliJ IDEA.
  User: theo.lietar-tmp
  Date: 11/04/2019
  Time: 15:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Putty</title>
    <link rel="apple-touch-icon" sizes="180x180" href="/WEB-INF/ressources/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="/WEB-INF/ressourcesfavicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="/WEB-INF/ressources/favicon-16x16.png">
    <link rel="manifest" href="/site.webmanifest">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jstree/3.2.1/themes/default/style.min.css"/>
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
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jstree/3.2.1/jstree.min.js"></script>
</head>
<style>
    #sessionmanager {
        display: block;
        height: 400pt;
        width: 300px;
        overflow: scroll;
    }

    #ifram {
        width: 85%;
        height: 85%;
        padding-left: 500px;
    }

    footer {
        position: absolute;
        bottom: 0;
    }

    html,body{
        margin: 0;
        padding: 0;
        height: 100%;
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
    }

    #contain{
        position: relative;
        width: 100%;
        margin: 0 auto;
        min-height: 100%;
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

</style>
<body>
<%
    session = request.getSession(true);
    System.out.println(session.getAttribute("login"));
    if(session.getAttribute("login") == null){
        response.sendRedirect("Authentification.jsp");
    }
%>
<div id="contain">
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


</nav>
</header>

<h5>
    Sessions Manager
</h5>
<br>
<%--TREE PUTTY--%>
<%--<div id="sessionmanager">--%>
<div id="jstree_demo_div" style="float: left;width: 300px">
    <%
        //TODO ENLEVER LES DOSSIERS ET SOUS-DOSSIERS NON IMPORTANTS
        final DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
        try {
            final DocumentBuilder builder = factory.newDocumentBuilder();
            final Document document = builder.parse(new File("/Users/theo.lietard-tmp/IdeaProjects/intranetgfi/web/Database.dat"));
            final Element racine = document.getDocumentElement();
            final NodeList racineNoeuds = racine.getChildNodes();

            final int nbRacineNoeud = racineNoeuds.getLength();

            for (int i = 0; i < nbRacineNoeud; i++) {
                if (racineNoeuds.item(i).getNodeType() == Node.ELEMENT_NODE) {
                    final Element connection = (Element) racineNoeuds.item(i);
                    final NodeList sousrep = connection.getChildNodes();


                    out.write("<ul>"); // Premier ul
                    out.write("<li>" + connection.getAttribute("name")); // 1er niveau
                    for (int j = 0; j < sousrep.getLength(); j++) {
                        if (sousrep.item(j).getNodeType() == Node.ELEMENT_NODE) {
                            final Element constructor = (Element) sousrep.item(j);
                            final NodeList last = constructor.getChildNodes();

                            out.write("<ul>"); // 2ème ul
                            out.write("<li>" + constructor.getAttribute("name")); //2 niveau
                            for (int k = 0; k < last.getLength(); k++) {
                                if (last.item(k).getNodeType() == Node.ELEMENT_NODE) {
                                    final Element adress = (Element) last.item(k);
                                    final NodeList sousfolder = adress.getChildNodes();
                                    String link2 = "";


                                    if (adress.getAttribute("name").contains("-") && !adress.getAttribute("type").equals("folder")) {
                                        String[] tab2 = adress.getAttribute("name").split("-");
                                        if (tab2.length >= 3 && tab2[tab2.length - 1].contains(".")) {
                                            link2 = tab2[tab2.length - 1].substring(1, tab2[tab2.length - 1].length());
                                        } else {
                                            if (tab2[0].contains(".")) {
                                                link2 = tab2[0];
                                            } else {
                                                link2 = tab2[1];
                                            }
                                        }
                                    } else {
                                        link2 = adress.getAttribute("name");
                                    }

                                    if(!adress.getAttribute("type").equals("folder") && adress.getAttribute("name").substring(0,2).equals("10")){
                                        out.write("<ul>"); // 3ème ul
                                        out.write("<li><a onclick=\"pouet(\'" + link2 + "\')\" href=\"https://" + link2 + "\">" + adress.getAttribute("name") + "</a>");
                                    }else if(!adress.getAttribute("type").equals("folder") && adress.getChildNodes().item(5).getTextContent().substring(0,2).equals("10")){
                                        link2 = adress.getChildNodes().item(5).getTextContent();

                                        out.write("<ul>");
                                        out.write("<li ><a onclick=\"pouet(\'" + link2 + "\')\" href=\"https://" + link2 + "\">" + adress.getAttribute("name"));
                                        out.write("</a>");
                                    } else if(!adress.getAttribute("type").equals("folder") && !adress.getAttribute("name").contains(".")){
                                        link2 = adress.getChildNodes().item(5).getTextContent();

                                        out.write("<ul>"); // 3ème ul
                                        out.write("<li><a onclick=\"render(\'" + link2 + "\')\" href=\"https://" + link2 + "\">" + adress.getAttribute("name") + "</a>");
                                    }else {
                                        out.write("<ul>"); // 3ème ul
                                        out.write("<li><a onclick=\"render(\'" + link2 + "\')\" href=\"https://" + link2 + "\">" + adress.getAttribute("name") + "</a>");
                                    }

                                    // niveau 3

                                    if (adress.getAttribute("type").equals("folder")) {
                                        for (int l = 0; l < sousfolder.getLength(); l++) {
                                            if (sousfolder.item(l).getNodeType() == Node.ELEMENT_NODE) {
                                                final Element tmp = (Element) sousfolder.item(l);
                                                final NodeList marre = tmp.getChildNodes();
                                                String link = "";

//                                                System.out.println(tmp.getAttribute("name"));
//                                                System.out.println(tmp.getAttribute("name").substring(0,2));
                                                if (tmp.getAttribute("name").contains("-")) {
                                                    String[] tab = tmp.getAttribute("name").split(" - ");

                                                    if (tab[0].contains(".")) {
                                                        link = tab[0];
                                                    } else {
                                                        link = tab[1];
                                                    }
                                                } else {
                                                    link = tmp.getAttribute("name");
                                                }

                                                if(!tmp.getAttribute("type").equals("folder") && tmp.getAttribute("name").substring(0,2).equals("10")){
                                                    out.write("<ul>");
                                                    out.write("<li ><a onclick=\"pouet(\'" + link + "\')\" href=\"https://" + link + "\">" + tmp.getAttribute("name"));
                                                    out.write("</a>");

                                                }else if(!tmp.getAttribute("type").equals("folder") && tmp.getChildNodes().item(5).getTextContent().substring(0,2).equals("10")){
                                                    link = tmp.getChildNodes().item(5).getTextContent();

                                                    out.write("<ul>");
                                                    out.write("<li ><a onclick=\"pouet(\'" + link + "\')\" href=\"https://" + link + "\">" + tmp.getAttribute("name"));
                                                    out.write("</a>");
                                                } else if(!tmp.getAttribute("type").equals("folder") && !tmp.getAttribute("name").contains(".")){
                                                    link = tmp.getChildNodes().item(5).getTextContent();

                                                    out.write("<ul>");
                                                    out.write("<li ><a onclick=\"render(\'" + link + "\')\" href=\"https://" + link + "\">" + tmp.getAttribute("name"));
                                                    out.write("</a>");

                                                }else{
                                                    out.write("<ul>");
                                                    out.write("<li ><a onclick=\"render(\'" + link + "\')\" href=\"https://" + link + "\">" + tmp.getAttribute("name"));
                                                    out.write("</a>");
                                                }



                                                if (tmp.getAttribute("type").equals("folder")) {
                                                    for (int m = 0; m < marre.getLength(); m++) {
                                                        if (marre.item(m).getNodeType() == Node.ELEMENT_NODE) {
                                                            final Element toto = (Element) marre.item(m);
                                                            String lolo = "";

//                                                            System.out.println(toto.getAttribute("name"));
                                                            if (toto.getAttribute("name").contains("-")) {
                                                                String[] myTab = toto.getAttribute("name").split("-");

//                                                                System.out.println(Arrays.toString(myTab));
                                                                if (myTab[0].contains(".")) {
                                                                    lolo = myTab[0];
                                                                } else {
                                                                    lolo = myTab[1].substring(1,myTab[1].length());
                                                                }
                                                            } else {
                                                                lolo = toto.getAttribute("name");
                                                            }

                                                            if(!toto.getAttribute("type").equals("folder") && toto.getAttribute("name").substring(0,2).equals("10")){
                                                                out.write("<ul>");
                                                                out.write("<li><a onclick=\"pouet(\'" + lolo + "\')\" href=\"https://" + lolo+"\">" + toto.getAttribute("name") + "</a>");
                                                                out.write("</li>");
                                                                out.write("</ul>");
                                                            }else if(!toto.getAttribute("type").equals("folder") && !toto.getAttribute("name").contains(".")){
                                                                lolo = toto.getChildNodes().item(5).getTextContent();

//                                                                System.out.println(toto.getChildNodes().item(5).getTextContent());
                                                                out.write("<ul>");
                                                                out.write("<li><a onclick=\"render(\'" + lolo + "\')\" href=\"https://" + lolo+"\">" + toto.getAttribute("name") + "</a>");
                                                                out.write("</li>");
                                                                out.write("</ul>");

                                                            }else{
                                                                out.write("<ul>");
//                                                                out.write("<li><a onclick=\"render(\'" + lolo + "\')\" href=\"https://" + lolo+"\">" + toto.getAttribute("name") + "</a>");
                                                                out.write("<li><a onclick=\"render(\'" + lolo + "\')\" href=\"file:///C:\\Users\\theo.lietard-tmp\\putty.exe\">" + toto.getAttribute("name") + "</a>");
                                                                out.write("</li>");
                                                                out.write("</ul>");
                                                            }

                                                        }
                                                    }
                                                }

                                                out.write("</li>"); // fin du 4ème niveau
                                                out.write("</ul>"); // fin du ul 4
                                            }
                                        }
                                    }

                                    out.write("</li>"); // fin 3ème niveau
                                    out.write("</ul>"); // fin ul 3
                                }
                            }


                            out.write("</li>"); // fin niveay 2
                            out.write("</ul>"); // fin 2 ul
                        }
                    }

                    out.write("</li>"); // Fin du premier niveau
                    out.write("</ul>"); // Fin premier ul
                }
            }

    %>

    <%
        } catch (ParserConfigurationException e) {
            e.printStackTrace();
        } catch (final SAXException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }


    %>
</div>

<div id="ifram">

</div>
<script>
    $(function () {
        // 6 create an instance when the DOM is ready
        $('#jstree_demo_div').jstree();
        // 7 bind to events triggered on the tree
        $('#jstree').on("changed.jstree", function (e, data) {
            console.log(data.selected);
        });
        // 8 interact with the tree - either way is OK
        $('button').on('click', function () {
            $('#jstree').jstree(true).select_node('child_node_1');
            $('#jstree').jstree('select_node', 'child_node_1');
            $.jstree.reference('#jstree').select_node('child_node_1');
        });


        $('#jstree')
        // listen for event
            .on('changed.jstree', function (e, data) {
                let i, j, r = [];
                for (i = 0, j = data.selected.length; i < j; i++) {
                    r.push(data.instance.get_node(data.selected[i]).text);
                }
                $('#event_result').html('Selected: ' + r.join(', '));

            })
            // create the instance
            .jstree();
    });
</script>
    <%
        String session_val = (String) session.getAttribute("login");
    %>

    <script type="text/javascript">
        let session_obj = '<%=session_val%>';

        if (session_obj !== 'admin') {
            document.querySelector('#adminbtn').style.display = 'none';
        }

        // alert(session_obj);
    </script>
<script type="text/javascript">

    function render(link) {
        event.preventDefault();
        // OUVRIR UN NOUVEL ONGLET SI POSSIBLE!!
        let tmp = link;
        // document.querySelector("#ifram").innerHTML = `<iframe scrolling="no" frameborder="0" style="border: 1px solid #ccc;border-radius: 5px;overflow: hidden;width: 975px;height: 600px;" allowtransparency="true" target="_full" src=https://`+tmp+`></iframe>`;
        document.querySelector("#ifram").innerHTML = `<iframe scrolling="no" frameborder="0" style="border: 1px solid #ccc;border-radius: 5px;overflow: hidden;width: 975px;height: 600px;" allowtransparency="true" target="" src=https://` + tmp + `></iframe>`;
    }

    function pouet(link){
        event.preventDefault();
        let dummy = document.createElement("input");
        document.body.appendChild(dummy);
        dummy.setAttribute('value',link);
        dummy.select();
        document.execCommand("copy");
        document.body.removeChild(dummy);
        alert("Adresse ip copiée dans le presse-papiers");

        document.location.href = "RunPutty.jsp";
        event.preventDefault();
        return false;
    }
</script>
    <script>
        function deco() {
            document.location.href = "deconnexion.jsp";
        }
    </script>
</div>
</body>
</html>