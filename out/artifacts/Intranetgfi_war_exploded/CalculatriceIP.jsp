<%@ page import="java.net.InetAddress" %>
<%@ page import="java.util.Arrays" %><%--
  Created by IntelliJ IDEA.
  User: theo.lietar-tmp
  Date: 17/04/2019
  Time: 11:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Calculatrice IP</title>
    <link rel="stylesheet" href="animate.css">
    <link rel="stylesheet" href="styles.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="hover.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<style>
    #myFooter {
        background-color: #3c3d41;
        color: white;
        padding-top: 10px;
    }

    #myFooter .footer-copyright {
        background-color: #333333;
        padding-top: 3px;
        padding-bottom: 3px;
        text-align: center;
    }

    #myFooter .row {
        margin-bottom: 60px;
    }

    #myFooter .navbar-brand {
        margin-top: 45px;
        height: 65px;
    }

    #myFooter .footer-copyright p {
        margin: 10px;
        color: #ccc;
    }

    #myFooter ul {
        list-style-type: none;
        padding-left: 0;
        line-height: 1.7;
    }

    #myFooter h5 {
        font-size: 18px;
        color: white;
        font-weight: bold;
        margin-top: 30px;
    }

    #myFooter h2 a{
        font-size: 50px;
        text-align: center;
        color: #fff;
    }

    #myFooter a {
        color: #d2d1d1;
        text-decoration: none;
    }

    #myFooter a:hover,
    #myFooter a:focus {
        text-decoration: none;
        color: white;
    }

    #myFooter .social-networks {
        text-align: center;
        padding-top: 30px;
        padding-bottom: 16px;
    }

    #myFooter .social-networks a {
        font-size: 32px;
        color: #f9f9f9;
        padding: 10px;
        transition: 0.2s;
    }

    #myFooter .social-networks a:hover {
        text-decoration: none;
    }

    #myFooter .facebook:hover {
        color: #0077e2;
    }

    #myFooter .google:hover {
        color: #ef1a1a;
    }

    #myFooter .twitter:hover {
        color: #00aced;
    }

    #myFooter .btn {
        color: white;
        background-color: #d84b6b;
        border-radius: 20px;
        border: none;
        width: 150px;
        display: block;
        margin: 0 auto;
        margin-top: 10px;
        line-height: 25px;
    }

    @media screen and (max-width: 767px) {
        #myFooter {
            text-align: center;
        }
    }


    /* CSS used for positioning the footers at the bottom of the page. */
    /* You can remove this. */

    .content{
        flex: 1 0 auto;
        -webkit-flex: 1 0 auto;
        min-height: 200px;
    }

    #myFooter{
        flex: 0 0 auto;
        -webkit-flex: 0 0 auto;
    }

    .result {
        border-right: 1px solid grey;
        border-bottom: grey;
        background-color: rgb(231, 231, 231);
        border-right: 1px double dimgrey;
        border-bottom: 1px double dimgrey;
    }

    .result .label {
        display: inline-block;
        width: 200px;
        background-color: rgb(231, 231, 231);
    }

    span.label {
        border-right: 1px double dimgrey;
    }

    #browsers {
        width: 212px;
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

        <div class="wrapper2">
            <button onclick="deco()" class="btn btn-4 btn-4a icon-arrow-right hvr-overline-from-right">Deconnexion
            </button>
        </div>


        </div>

    </nav>
</header>
<br>
<br>
<h2 class="fadeIn" id="title" style="text-align: center">Calculatrice IP</h2>
<br>
<label for="exampleInputEmail1" style="padding-left: 200px;padding-right: 20px;font-weight: bold">Adresse IP </label>
<input type="text" class="" id="q1" name="q1" aria-describedby="emailHelp" placeholder=""> .
<input type="text" class="" id="q2" name="q2" aria-describedby="emailHelp" placeholder=""> .
<input type="text" class="" id="q3" name="q3" aria-describedby="emailHelp" placeholder=""> .
<input type="text" class="" id="q4" name="q4" aria-describedby="emailHelp" placeholder=""> /
<select id="browsers">
    <option>0. 0. 0. 0 &nbsp; - &nbsp; /0</option>
    <option>128. 0. 0. 0 &nbsp; - &nbsp; /1</option>
    <option>192. 0. 0. 0 &nbsp; - &nbsp; /2</option>
    <option>224. 0. 0. 0 &nbsp; - &nbsp; /3</option>
    <option>240. 0. 0. 0 &nbsp; - &nbsp; /4</option>
    <option>248. 0. 0. 0 &nbsp; - &nbsp; /5</option>
    <option>252. 0. 0. 0 &nbsp; - &nbsp; /6</option>
    <option>254. 0. 0. 0 &nbsp; - &nbsp; /7</option>
    <option>255. 0. 0. 0 &nbsp; - &nbsp; /8</option>
    <option>255. 128. 0. 0 &nbsp; - &nbsp; /9</option>
    <option>255. 192. 0. 0 &nbsp; - &nbsp; /10</option>
    <option>255. 224. 0. 0 &nbsp; - &nbsp; /11</option>
    <option>255. 240. 0. 0 &nbsp; - &nbsp; /12</option>
    <option>255. 248. 0. 0 &nbsp; - &nbsp; /13</option>
    <option>255. 252. 0. 0 &nbsp; - &nbsp; /14</option>
    <option>255. 254. 0. 0 &nbsp; - &nbsp; /15</option>
    <option>255. 255. 0. 0 &nbsp; - &nbsp; /16</option>
    <option>255. 255. 128. 0 &nbsp; - &nbsp; /17</option>
    <option>255. 255. 192. 0 &nbsp; - &nbsp; /18</option>
    <option>255. 255. 224. 0 &nbsp; - &nbsp; /19</option>
    <option>255. 255. 240. 0 &nbsp; - &nbsp; /20</option>
    <option>255. 255. 248. 0 &nbsp; - &nbsp; /21</option>
    <option>255. 255. 252. 0 &nbsp; - &nbsp; /22</option>
    <option>255. 255. 254. 0 &nbsp; - &nbsp; /23</option>
    <option>255. 255. 255. 0 &nbsp; - &nbsp; /24</option>
    <option>255. 255. 255. 128 &nbsp; - &nbsp; /25</option>
    <option>255. 255. 255. 192 &nbsp; - &nbsp; /26</option>
    <option>255. 255. 255. 224 &nbsp; - &nbsp; /27</option>
    <option>255. 255. 255. 240 &nbsp; - &nbsp; /28</option>
    <option>255. 255. 255. 248 &nbsp; - &nbsp; /29</option>
    <option>255. 255. 255. 252 &nbsp; - &nbsp; /30</option>
    <option>255. 255. 255. 254 &nbsp; - &nbsp; /31</option>
    <option>255. 255. 255. 255 &nbsp; - &nbsp; /32</option>
</select>
<input type="button" onclick="resetFields()" value="Reset" style="border-radius: 2px">
<br>
<br>
<button class="btn btn-primary" onclick="calculate();" style="margin-left: 45%">Calculer</button>
<br>
<br>

<div class="result">
    <span class="label">IP Adress : </span>
    <span class="value" id="resIP"></span>
</div>
<div class="result">
    <span class="label">Netmask : </span>
    <span class="value" id="resMask"></span>
</div>
<div class="result">
    <span class="label">Netmask Inverse : </span>
    <span class="value" id="resMaskInv"></span>
</div>
&#8594
<div class="result">
    <span class="label">Net Adress : </span>
    <span class="value" id="resNet"></span>
</div>
<div class="result">
    <span class="label"> First Adress - Last Adress : </span>
    <span class="value" id="range"></span>
</div>
<div class="result">
    <span class="label">Broadcast Adress : </span>
    <span class="value" id="resBroad"></span>
</div>
<div class="result">
    <span class="label">Nombre d'hosts : </span>
    <span class="value" id="resHost"></span>
</div>
 <br>
 <br>
</body>
</html>
<script type="text/javascript">
    function calculate() {
        let q1 = document.getElementById('q1').value;
        let q2 = document.getElementById('q2').value;
        let q3 = document.getElementById('q3').value;
        let q4 = document.getElementById('q4').value;
        let browsers = document.getElementById('browsers');
        let tmp = browsers.options[browsers.selectedIndex].value;
        let idx = tmp.indexOf("/") + 1;
        let cidr = parseInt(tmp.substr(idx, tmp.length - 1));

        if ((q1 >= 0 && q1 <= 255) && (q2 >= 0 && q2 <= 255) && (q3 >= 0 && q3 <= 255) && (q4 >= 0 && q4 <= 255)) {
            document.getElementById('resIP').innerHTML = q1 + "." + q2 + "." + q3 + "." + q4;

            let ipBin = {};
            ipBin[1] = String("00000000" + parseInt(q1, 10).toString(2)).slice(-8);
            ipBin[2] = String("00000000" + parseInt(q2, 10).toString(2)).slice(-8);
            ipBin[3] = String("00000000" + parseInt(q3, 10).toString(2)).slice(-8);
            ipBin[4] = String("00000000" + parseInt(q4, 10).toString(2)).slice(-8);

            let mask = cidr;
            let importantBlock = Math.ceil(mask / 8);
            let importantBlockBinary = ipBin[importantBlock];
            let maskBinaryBlockCount = mask % 8;

            if (maskBinaryBlockCount == 0) {
                importantBlock++;
            }

            let maskBinaryBlock = "";
            let maskBinaryBlockInv = "";
            let maskBlock = "";

            for (let i = 1; i <= 8; i++) {
                if (maskBinaryBlockCount >= i) {
                    maskBinaryBlock += "1";
                } else {
                    maskBinaryBlock += "0";
                }
            }

            for (let j = 1; j <= 8; j++) {
                if (maskBinaryBlockCount >= j) {
                    maskBinaryBlockInv += "0";
                } else {
                    maskBinaryBlockInv += "1";
                }
            }

            maskBlock = parseInt(maskBinaryBlock, 2);
            maskBlockInv = parseInt(maskBinaryBlockInv, 2);


            let netBlockBinary = "";
            let bcBlockBinary = "";

            for (let i = 1; i <= 8; i++) {
                if (maskBinaryBlock.substr(i - 1, 1) == "1") {
                    netBlockBinary += importantBlockBinary.substr(i - 1, 1);
                    bcBlockBinary += importantBlockBinary.substr(i - 1, 1);
                } else {
                    netBlockBinary += "0";
                    bcBlockBinary += "1";
                }
            }

            let hosts = Math.pow(2, 32 - cidr) - 2;
            let mask1 = "";
            let maskInv = "";
            let maskBinary = "";
            let net = "";
            let bc = "";
            let netBinary = "";
            let bcBinary = "";
            let rangeA = "";
            let rangeB = "";


//loop to put whole strings block together
            for (let i = 1; i <= 4; i++) {
                if (importantBlock > i) {
//blocks before the important block.
                    mask1 += "255";
                    maskInv += "0";
                    maskBinary += "11111111";
                    netBinary += ipBin[i];
                    bcBinary += ipBin[i];
                    net += parseInt(ipBin[i], 2);
                    bc += parseInt(ipBin[i], 2);
                    // rangeA += parseInt(ipBin[i], 2);
                    // rangeB += parseInt(ipBin[i], 2);


                } else if (importantBlock == i) {
//the important block.
                    mask1 += maskBlock;
                    maskInv += maskBlockInv;
                    maskBinary += maskBinaryBlock;
                    netBinary += netBlockBinary;
                    bcBinary += bcBlockBinary;
                    net += parseInt(netBlockBinary, 2);
                    bc += parseInt(bcBlockBinary, 2);
                    // rangeA += (parseInt(netBlockBinary, 2) + 1);
                    // rangeB += (parseInt(bcBlockBinary, 2) - 1);

                } else {
//block after the important block.
                    mask1 += 0;
                    maskInv += 255;
                    maskBinary += "00000000";
                    netBinary += "00000000";
                    bcBinary += "11111111";
                    net += "0";
                    bc += "255";
                    // rangeA += 0;
                    // rangeB += 255;
                }
//add . separator except the last block
                if (i < 4) {
                    mask1 += ".";
                    maskInv += ".";
                    maskBinary += ".";
                    netBinary += ".";
                    bcBinary += ".";
                    net += ".";
                    bc += ".";
                    // rangeA += ".";
                    // rangeB += ".";
                }

                if(i < 4){
                    rangeA = net;
                    rangeB = bc;
                }else if(cidr > 23){
                    rangeA += (parseInt(netBlockBinary,2) +1);
                    rangeB += (parseInt(bcBlockBinary,2) -1);
                }else{
                    rangeA += 1;
                    rangeB += 254;
                }

            }


//write the results to the page.
            document.getElementById('resMask').innerHTML = mask1;
            document.getElementById('resNet').innerHTML = net;
            document.getElementById('resBroad').innerHTML = bc;
            document.getElementById('resHost').innerText = hosts;
            document.getElementById('resMaskInv').innerHTML = maskInv;
            document.getElementById('range').innerHTML = rangeA + " - " + rangeB;

        } else {
            alert("invalid value");

        }

    }
</script>
<%
    String session_val = (String) session.getAttribute("login");
%>

<script type="text/javascript">
    var session_obj = '<%=session_val%>';

    if (session_obj !== 'admin') {
        document.querySelector('#adminbtn').style.display = 'none';
    }

</script>
<script>
    function deco() {
        document.location.href = "deconnexion.jsp";
    }
</script>
<script>
    function resetFields() {
        document.getElementById('q1').value = "";
        document.getElementById('q2').value = "";
        document.getElementById('q3').value = "";
        document.getElementById('q4').value = "";
        document.getElementById('browsers').selectedIndex = -1;
    }
</script>