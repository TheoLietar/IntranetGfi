
let reponses = [];
let nbReponse = 0;
const nbRequetes = 32;

/**
 * Ci-dessous l'ensemble de mes requêtes AJAX concernant chaque port
 */

$.ajax({
    url: './servletJSCH',
    type: 'POST',
    data: {
        "host": "10.2.23.6",
        "user": "tsenami.rad",
        "pwd": "ts3n4m1",
        "command": "sh int eth2/1",
        "id": "0"
    },
    success: function (resp) {
        reponses[0] = resp;
        incrReponse();
    }
});


let req = $.ajax({
    url: './servletJSCH',
    type: 'POST',
    data: {"host": "10.2.23.6", "user": "tsenami.rad", "pwd": "ts3n4m1", "command": "show int eth9/1", "id": "1"},
    success: function (resp) {
        console.log(resp);
        reponses[1] = resp;
        incrReponse();
    }
});


$.ajax({
    url: './servletJSCH',
    type: 'POST',
    data: {"host": "10.2.21.6", "user": "tsenami.rad", "pwd": "ts3n4m1", "command": "show int eth8/1", "id": "2"},
    success: function (resp) {
        console.log(resp);
        reponses[2] = resp;
        incrReponse();
    }
});


$.ajax({
    url: './servletJSCH',
    type: 'POST',
    data: {"host": "10.2.21.6", "user": "tsenami.rad", "pwd": "ts3n4m1", "command": "show int eth8/2", "id": "3"},
    success: function (resp) {
        console.log(resp);
        reponses[3] = resp;
        incrReponse();
    }
});


$.ajax({
    url: './servletJSCH',
    type: 'POST',
    data: {"host": "10.2.21.6", "user": "tsenami.rad", "pwd": "ts3n4m1", "command": "show int eth3/2", "id": "4"},
    success: function (resp) {
        console.log(resp);
        reponses[4] = resp;
        incrReponse();
    }
});

$.ajax({
    url: './servletJSCH',
    type: 'POST',
    data: {"host": "10.2.22.6", "user": "tsenami.rad", "pwd": "ts3n4m1", "command": "show int eth8/1", "id": "5"},
    success: function (resp) {
        console.log(resp);
        reponses[5] = resp;
        incrReponse();
    }
});

$.ajax({
    url: './servletJSCH',
    type: 'POST',
    data: {"host": "10.2.22.6", "user": "tsenami.rad", "pwd": "ts3n4m1", "command": "show int eth8/2", "id": "6"},
    success: function (resp) {
        console.log(resp);
        reponses[6] = resp;
        incrReponse();
    }
});

$.ajax({
    url: './servletJSCH',
    type: 'POST',
    data: {"host": "10.2.22.6", "user": "tsenami.rad", "pwd": "ts3n4m1", "command": "show int eth3/2", "id": "7"},
    success: function (resp) {
        console.log(resp);
        reponses[7] = resp;
        incrReponse();
    }
});

//===========================================

$.ajax({
    url: './servletJSCH',
    type: 'POST',
    data: {"host": "10.2.23.3", "user": "tsenami.rad", "pwd": "ts3n4m1", "command": "show int eth2/32", "id": "8"},
    success: function (resp) {
        console.log(resp);
        reponses[8] = resp;
        incrReponse();
    }
});

$.ajax({
    url: './servletJSCH',
    type: 'POST',
    data: {"host": "10.2.23.3", "user": "tsenami.rad", "pwd": "ts3n4m1", "command": "show int eth9/32", "id": "9"},
    success: function (resp) {
        console.log(resp);
        reponses[9] = resp;
        incrReponse();
    }

});

$.ajax({
    url: './servletJSCH',
    type: 'POST',
    data: {"host": "10.2.21.3", "user": "tsenami.rad", "pwd": "ts3n4m1", "command": "show int eth8/32", "id": "10"},
    success: function (resp) {
        console.log(resp);
        reponses[10] = resp;
        incrReponse();
    }
});

$.ajax({
    url: './servletJSCH',
    type: 'POST',
    data: {"host": "10.2.21.3", "user": "tsenami.rad", "pwd": "ts3n4m1", "command": "show int eth3/31", "id": "11"},
    success: function (resp) {
        console.log(resp);
        reponses[11] = resp;
        incrReponse();
    }
});

$.ajax({
    url: './servletJSCH',
    type: 'POST',
    data: {"host": "10.2.21.3", "user": "tsenami.rad", "pwd": "ts3n4m1", "command": "show int eth8/31", "id": "12"},
    success: function (resp) {
        console.log(resp);
        reponses[12] = resp;
        incrReponse();
    }
});

$.ajax({
    url: './servletJSCH',
    type: 'POST',
    data: {"host": "10.2.22.3", "user": "tsenami.rad", "pwd": "ts3n4m1", "command": "show int eth8/32", "id": "13"},
    success: function (resp) {
        console.log(resp);
        reponses[13] = resp;
        incrReponse();
    }
});

$.ajax({
    url: './servletJSCH',
    type: 'POST',
    data: {"host": "10.2.22.3", "user": "tsenami.rad", "pwd": "ts3n4m1", "command": "show int eth3/31", "id": "14"},
    success: function (resp) {
        console.log(resp);
        reponses[14] = resp;
        incrReponse();
    }
});

$.ajax({
    url: './servletJSCH',
    type: 'POST',
    data: {"host": "10.2.22.3", "user": "tsenami.rad", "pwd": "ts3n4m1", "command": "show int eth8/31", "id": "15"},
    success: function (resp) {
        console.log(resp);
        reponses[15] = resp;
        incrReponse();
    }
});

//////////////////////////////////////////////////////


$.ajax({
    url: './servletJSCH',
    type: 'POST',
    data: {"host": "10.2.23.51", "user": "tsenami.rad", "pwd": "ts3n4m1", "command": "show int eth2/17", "id": "16"},
    success: function (resp) {
        console.log(resp);
        reponses[16] = resp;
        incrReponse();
    }
});

$.ajax({
    url: './servletJSCH',
    type: 'POST',
    data: {"host": "10.2.23.51", "user": "tsenami.rad", "pwd": "ts3n4m1", "command": "show int eth9/17", "id": "17"},
    success: function (resp) {
        console.log(resp);
        reponses[17] = resp;
        incrReponse();
    }
});

$.ajax({
    url: './servletJSCH',
    type: 'POST',
    data: {"host": "10.2.21.51", "user": "tsenami.rad", "pwd": "ts3n4m1", "command": "show int eth8/17", "id": "18"},
    success: function (resp) {
        console.log(resp);
        reponses[18] = resp;
        incrReponse();
    }
});

$.ajax({
    url: './servletJSCH',
    type: 'POST',
    data: {"host": "10.2.21.51", "user": "tsenami.rad", "pwd": "ts3n4m1", "command": "show int eth8/18", "id": "19"},
    success: function (resp) {
        console.log(resp);
        reponses[19] = resp;
        incrReponse();
    }
});

$.ajax({
    url: './servletJSCH',
    type: 'POST',
    data: {"host": "10.2.21.51", "user": "tsenami.rad", "pwd": "ts3n4m1", "command": "show int eth3/18", "id": "20"},
    success: function (resp) {
        console.log(resp);
        reponses[20] = resp;
        incrReponse();
    }
});

$.ajax({
    url: './servletJSCH',
    type: 'POST',
    data: {"host": "10.2.22.51", "user": "tsenami.rad", "pwd": "ts3n4m1", "command": "show int eth8/17", "id": "21"},
    success: function (resp) {
        console.log(resp);
        reponses[21] = resp;
        incrReponse();
    }
});

$.ajax({
    url: './servletJSCH',
    type: 'POST',
    data: {"host": "10.2.22.51", "user": "tsenami.rad", "pwd": "ts3n4m1", "command": "show int eth8/18", "id": "22"},
    success: function (resp) {
        console.log(resp);
        reponses[22] = resp;
        incrReponse();
    }
});

$.ajax({
    url: './servletJSCH',
    type: 'POST',
    data: {"host": "10.2.22.51", "user": "tsenami.rad", "pwd": "ts3n4m1", "command": "show int eth3/18", "id": "23"},
    success: function (resp) {
        console.log(resp);
        reponses[23] = resp;
        incrReponse();
    }
});

$.ajax({
    url: './servletJSCH',
    type: 'POST',
    data: {"host": "10.2.23.50", "user": "tsenami.rad", "pwd": "ts3n4m1", "command": "show int eth1/32", "id": "24"},
    success: function (resp) {
        console.log(resp);
        reponses[24] = resp;
        incrReponse();
    }
});

$.ajax({
    url: './servletJSCH',
    type: 'POST',
    data: {"host": "10.2.23.50", "user": "tsenami.rad", "pwd": "ts3n4m1", "command": "show int eth10/32", "id": "25"},
    success: function (resp) {
        console.log(resp);
        reponses[25] = resp;
        incrReponse();
    }
});

$.ajax({
    url: './servletJSCH',
    type: 'POST',
    data: {"host": "10.2.21.50", "user": "tsenami.rad", "pwd": "ts3n4m1", "command": "show int eth2/32", "id": "26"},
    success: function (resp) {
        console.log(resp);
        reponses[26] = resp;
        incrReponse();
    }
});


$.ajax({
    url: './servletJSCH',
    type: 'POST',
    data: {"host": "10.2.21.50", "user": "tsenami.rad", "pwd": "ts3n4m1", "command": "show int eth2/30", "id": "27"},
    success: function (resp) {
        console.log(resp);
        reponses[27] = resp;
        incrReponse();
    }
});

$.ajax({
    url: './servletJSCH',
    type: 'POST',
    data: {"host": "10.2.21.50", "user": "tsenami.rad", "pwd": "ts3n4m1", "command": "show int eth9/30", "id": "28"},
    success: function (resp) {
        console.log(resp);
        reponses[28] = resp;
        incrReponse();
    }
});

$.ajax({
    url: './servletJSCH',
    type: 'POST',
    data: {"host": "10.2.22.50", "user": "tsenami.rad", "pwd": "ts3n4m1", "command": "show int eth2/32", "id": "29"},
    success: function (resp) {
        console.log(resp);
        reponses[29] = resp;
        incrReponse();
    }
});

$.ajax({
    url: './servletJSCH',
    type: 'POST',
    data: {"host": "10.2.22.50", "user": "tsenami.rad", "pwd": "ts3n4m1", "command": "show int eth2/30", "id": "30"},
    success: function (resp) {
        console.log(resp);
        reponses[30] = resp;
        incrReponse();
    }
});

$.ajax({
    url: './servletJSCH',
    type: 'POST',
    data: {"host": "10.2.22.50", "user": "tsenami.rad", "pwd": "ts3n4m1", "command": "show int eth2/32", "id": "31"},
    success: function (resp) {
        console.log(resp);
        reponses[31] = resp;
        incrReponse();
    }
});

/**
 * Methode consistant manipuler mon tableau d'objet, et gérer les différents affichages
 */
function incrReponse() {
    nbReponse++;

    document.querySelector(".progress-bar").style.width = (nbReponse/nbRequetes)*100 + '%';
    document.querySelector(".progress-bar").innerHTML = Math.round((nbReponse/nbRequetes)*100) + '% Complete';
    document.querySelector('.graphOSRE').style.filter = 'blur(1.4em)';
    document.querySelector("body > span:nth-child(34)").style.filter = 'blur(1.4em)';
    document.querySelector("body > span:nth-child(35)").style.filter = 'blur(1.4em)';
    document.querySelector("body > span:nth-child(36)").style.filter = 'blur(1.4em)';
    document.querySelector("body > span:nth-child(37)").style.filter = 'blur(1.4em)';
    document.querySelector("#date").style.filter = 'blur(1.4em)';


    if (nbReponse === nbRequetes) {
        document.querySelector(".progress").style.display = 'none';
        document.querySelector('.graphOSRE').style.filter = '';
        document.querySelector("body > span:nth-child(34)").style.filter = '';
        document.querySelector("body > span:nth-child(35)").style.filter = '';
        document.querySelector("body > span:nth-child(36)").style.filter = '';
        document.querySelector("body > span:nth-child(37)").style.filter = '';
        document.querySelector("#date").style.filter = '';

        let port21 = $('#0').attr('data-value').indexOf('1') > -1 ? "Up" : "Down";
        let port91 = $('#1').attr('data-value').indexOf('1') > -1 ? "Up" : "Down";
        let port81 = $('#2').attr('data-value').indexOf('1') > -1 ? "Up" : "Down";
        let port82 = $('#3').attr('data-value').indexOf('1') > -1 ? "Up" : "Down";
        let port32 = $('#4').attr('data-value').indexOf('1') > -1 ? "Up" : "Down";
        let port81dc2 = $('#5').attr('data-value').indexOf('1') > -1 ? "Up" : "Down";
        let port82dc2 = $('#6').attr('data-value').indexOf('1') > -1 ? "Up" : "Down";
        let port32dc2 = $('#7').attr('data-value').indexOf('1') > -1 ? "Up" : "Down";

        let port232 = $('#8').attr('data-value').indexOf('1') > -1 ? "Up" : "Down";
        let port932 = $('#9').attr('data-value').indexOf('1') > -1 ? "Up" : "Down";
        let port832 = $('#10').attr('data-value').indexOf('1') > -1 ? "Up" : "Down";
        let port331 = $('#11').attr('data-value').indexOf('1') > -1 ? "Up" : "Down";
        let port831 = $('#12').attr('data-value').indexOf('1') > -1 ? "Up" : "Down";
        let port832dc2 = $('#13').attr('data-value').indexOf('1') > -1 ? "Up" : "Down";
        let port331dc2 = $('#14').attr('data-value').indexOf('1') > -1 ? "Up" : "Down";
        let port831dc2 = $('#15').attr('data-value').indexOf('1') > -1 ? "Up" : "Down";

        let port217 = $('#16').attr('data-value').indexOf('1') > -1 ? "Up" : "Down";
        let port917 = $('#17').attr('data-value').indexOf('1') > -1 ? "Up" : "Down";
        let port817 = $('#18').attr('data-value').indexOf('1') > -1 ? "Up" : "Down";
        let port818 = $('#19').attr('data-value').indexOf('1') > -1 ? "Up" : "Down";
        let port318 = $('#20').attr('data-value').indexOf('1') > -1 ? "Up" : "Down";
        let port817dc2 = $('#21').attr('data-value').indexOf('1') > -1 ? "Up" : "Down";
        let port818dc2 = $('#22').attr('data-value').indexOf('1') > -1 ? "Up" : "Down";
        let port318dc2 = $('#23').attr('data-value').indexOf('1') > -1 ? "Up" : "Down";

        let port132 = $('#24').attr('data-value').indexOf('1') > -1 ? "Up" : "Down";
        let port1032 = $('#25').attr('data-value').indexOf('1') > -1 ? "Up" : "Down";
        let port232GAR = $('#26').attr('data-value').indexOf('1') > -1 ? "Up" : "Down";
        let port230 = $('#27').attr('data-value').indexOf('1') > -1 ? "Up" : "Down";
        let port930 = $('#28').attr('data-value').indexOf('1') > -1 ? "Up" : "Down";
        let port232dc2 = $('#29').attr('data-value').indexOf('1') > -1 ? "Up" : "Down";
        let port230dc2 = $('#30').attr('data-value').indexOf('1') > -1 ? "Up" : "Down";
        let port930dc2 = $('#31').attr('data-value').indexOf('1') > -1 ? "Up" : "Down";




        document.getElementById('dc1-dc41hov').setAttribute("data-content","Port 2/1 - Status : "+ port21 + " , Input Error : " + reponses[0].input + ", Output error : " + reponses[0].output + ", CRC : " + reponses[0].CRC + " <br/><br/>Port 8/1 - Status : "  + port81 + ", Input Error : " + reponses[2].input + ", Output Error : " + reponses[2].output + ", CRC : " + reponses[2].CRC);
        document.getElementById('dc1-dc42hov').setAttribute("data-content","Port 9/1 - Status : "+ port91 + " , Input Error : " + reponses[1].input + ", Output error : " + reponses[1].output + ", CRC : " + reponses[1].CRC + " <br/><br/>Port 8/1 DC2 - Status : "  + port81dc2 + ", Input Error : " + reponses[5].input + ", Output Error : " + reponses[5].output + ", CRC : " + reponses[5].CRC);
        document.getElementById('dc41-dc42hov').setAttribute("data-content","Port 8/2 - Status : "+ port82 + " , Input Error : " + reponses[3].input + ", Output error : " + reponses[3].output + ", CRC : " + reponses[3].CRC + " <br/><br/>Port 8/2 DC2 - Status : "  + port82dc2 + ", Input Error : " + reponses[6].input + ", Output Error : " + reponses[6].output + ", CRC : " + reponses[6].CRC);
        document.getElementById('dc42-dc41hov').setAttribute("data-content","Port 3/2 - Status : "+ port32 + " , Input Error : " + reponses[4].input + ", Output error : " + reponses[4].output + ", CRC : " + reponses[4].CRC + " <br/><br/>Port3/2 DC2 - Status : "  + port32dc2 + ", Input Error : " + reponses[7].input + ", Output Error : " + reponses[7].output + ", CRC : " + reponses[7].CRC);

        document.getElementById('dc1-dc41hovDMZ').setAttribute("data-content","Port 2/32 - Status : "+ port232 + " , Input Error : " + reponses[8].input + ", Output error : " + reponses[8].output + ", CRC : " + reponses[8].CRC + " <br/><br/>Port 8/32 - Status : "  + port832 + ", Input Error : " + reponses[10].input + ", Output Error : " + reponses[10].output + ", CRC : " + reponses[10].CRC);
        document.getElementById('dc1-dc42hovDMZ').setAttribute("data-content","Port 9/32 - Status : "+ port932 + " , Input Error : " + reponses[9].input + ", Output error : " + reponses[9].output + ", CRC : " + reponses[9].CRC + " <br/><br/>Port 8/32 DC2 - Status : "  + port832dc2 + ", Input Error : " + reponses[13].input + ", Output Error : " + reponses[13].output + ", CRC : " + reponses[13].CRC);
        document.getElementById('dc41-dc42hovDMZ').setAttribute("data-content","Port 3/31 - Status : "+ port331 + " , Input Error : " + reponses[11].input + ", Output error : " + reponses[11].output + ", CRC : " + reponses[11].CRC + " <br/><br/>Port 3/31 DC2 - Status : "  + port331dc2 + ", Input Error : " + reponses[14].input + ", Output Error : " + reponses[14].output + ", CRC : " + reponses[14].CRC);
        document.getElementById('dc42-dc41hovDMZ').setAttribute("data-content","Port 8/31 - Status : "+ port831 + " , Input Error : " + reponses[12].input + ", Output error : " + reponses[12].output + ", CRC : " + reponses[12].CRC + " <br/><br/>Port 8/31 DC2 - Status : "  + port831dc2 + ", Input Error : " + reponses[15].input + ", Output Error : " + reponses[15].output + ", CRC : " + reponses[15].CRC);

        document.getElementById('dc1-dc41hovHEB').setAttribute("data-content","Port 2/17 - Status : "+ port217 + " , Input Error : " + reponses[16].input + ", Output error : " + reponses[16].output + ", CRC : " + reponses[16].CRC + " <br/><br/>Port 8/17 - Status : "  + port817 + ", Input Error : " + reponses[18].input + ", Output Error : " + reponses[18].output + ", CRC : " + reponses[18].CRC);
        document.getElementById('dc1-dc42hovHEB').setAttribute("data-content","Port 9/17 - Status : "+ port917 + " , Input Error : " + reponses[17].input + ", Output error : " + reponses[17].output + ", CRC : " + reponses[17].CRC + " <br/><br/>Port 8/17 DC2 - Status : "  + port817dc2 + ", Input Error : " + reponses[21].input + ", Output Error : " + reponses[21].output + ", CRC : " + reponses[21].CRC);
        document.getElementById('dc41-dc42hovHEB').setAttribute("data-content","Port 8/18 - Status : "+ port818 + " , Input Error : " + reponses[19].input + ", Output error : " + reponses[19].output + ", CRC : " + reponses[19].CRC + " <br/><br/>Port 8/18 DC2 - Status : "  + port818dc2 + ", Input Error : " + reponses[22].input + ", Output Error : " + reponses[22].output + ", CRC : " + reponses[22].CRC);
        document.getElementById('dc42-dc41hovHEB').setAttribute("data-content","Port 3/18 - Status : "+ port318 + " , Input Error : " + reponses[20].input + ", Output error : " + reponses[20].output + ", CRC : " + reponses[20].CRC + " <br/><br/>Port 3/18 DC2 - Status : "  + port318dc2 + ", Input Error : " + reponses[23].input + ", Output Error : " + reponses[23].output + ", CRC : " + reponses[23].CRC);


        document.getElementById('dc1-dc41hovGARSYS').setAttribute("data-content","Port 1/32 - Status : "+ port132 + " , Input Error : " + reponses[24].input + ", Output error : " + reponses[24].output + ", CRC : " + reponses[24].CRC + " <br/><br/>Port 2/32 - Status : "  + port232GAR + ", Input Error : " + reponses[26].input + ", Output Error : " + reponses[26].output + ", CRC : " + reponses[26].CRC);
        document.getElementById('dc1-dc42hovGARSYS').setAttribute("data-content","Port 10/32 - Status : "+ port1032 + " , Input Error : " + reponses[25].input + ", Output error : " + reponses[25].output + ", CRC : " + reponses[25].CRC + " <br/><br/>Port 2/32 DC2 - Status : "  + port232dc2 + ", Input Error : " + reponses[29].input + ", Output Error : " + reponses[29].output + ", CRC : " + reponses[29].CRC);
        document.getElementById('dc41-dc42hovGARSYS').setAttribute("data-content","Port 2/30 - Status : "+ port230 + " , Input Error : " + reponses[27].input + ", Output error : " + reponses[27].output + ", CRC : " + reponses[27].CRC + " <br/><br/>Port 2/30 DC2 - Status : "  + port230dc2 + ", Input Error : " + reponses[30].input + ", Output Error : " + reponses[30].output + ", CRC : " + reponses[30].CRC);
        document.getElementById('dc42-dc41hovGARSYS').setAttribute("data-content","Port 9/30 - Status : "+ port930 + " , Input Error : " + reponses[28].input + ", Output error : " + reponses[28].output + ", CRC : " + reponses[28].CRC + " <br/><br/>Port 9/30 DC2 - Status : "  + port930dc2 + ", Input Error : " + reponses[31].input + ", Output Error : " + reponses[31].output + ", CRC : " + reponses[31].CRC);


        if (parseInt($('#0').attr('data-value')) === 1 && parseInt(reponses[0].input) === 0 && parseInt($('#2').attr('data-value')) === 1 && parseInt(reponses[2].input) === 0) {
            document.getElementById('dc1-dc41').style.borderTop = '2px solid green';
        } else if (parseInt($('#0').attr('data-value')) === 1 && parseInt($('#2').attr('data-value')) === 1 && (parseInt(reponses[0].input) !== 0 || parseInt(reponses[2].input) !== 0)) {
            document.getElementById('dc1-dc41').style.borderTop = '2px solid orange';
        } else
            document.getElementById('dc1-dc41').style.borderTop = '2px solid red';


        if (parseInt($('#1').attr('data-value')) === 1 && parseInt(reponses[1].input) === 0 && parseInt($('#5').attr('data-value')) === 1 && parseInt(reponses[5].input) === 0) {
            document.getElementById('dc1-dc42').style.borderTop = '2px solid green';
        } else if (parseInt($('#1').attr('data-value')) === 1 && parseInt($('#5').attr('data-value')) === 1 && (parseInt(reponses[1].input) !== 0 || parseInt(reponses[5].input) !== 0)) {
            document.getElementById('dc1-dc42').style.borderTop = '2px solid orange';
        } else
            document.getElementById('dc1-dc42').style.borderTop = '2px solid red';


        if (parseInt($('#3').attr('data-value')) === 1 && parseInt(reponses[3].input) === 0 && parseInt($('#6').attr('data-value')) === 1 && parseInt(reponses[6].input) === 0) {
            document.getElementById('dc41-dc42').style.borderTop = '2px solid green';
        } else if (parseInt($('#3').attr('data-value')) === 1 && parseInt($('#6').attr('data-value')) === 1 && (parseInt(reponses[3].input) !== 0 || parseInt(reponses[6].input) !== 0)) {
            document.getElementById('dc41-dc42').style.borderTop = '2px solid orange';
        } else
            document.getElementById('dc41-dc42').style.borderTop = '2px solid red';


        if (parseInt($('#4').attr('data-value')) === 1 && parseInt(reponses[4].input) === 0 && parseInt($('#7').attr('data-value')) === 1 && parseInt(reponses[7].input) === 0) {
            document.getElementById('dc42-dc41').style.borderTop = '2px solid green';
        } else if (parseInt($('#4').attr('data-value')) === 1 && parseInt($('#7').attr('data-value')) === 1 && (parseInt(reponses[4].input) !== 0 || parseInt(reponses[7].input) !== 0)) {
            document.getElementById('dc42-dc41').style.borderTop = '2px solid orange';
        } else
            document.getElementById('dc42-dc41').style.borderTop = '2px solid red';




        if (parseInt($('#8').attr('data-value')) === 1 && parseInt(reponses[8].input) === 0 && parseInt($('#10').attr('data-value')) === 1 && parseInt(reponses[10].input) === 0) {
            document.getElementById('dc1-dc41DMZ').style.borderTop = '2px solid green';
        } else if (parseInt($('#8').attr('data-value')) === 1 && parseInt($('#10').attr('data-value')) === 1 && (parseInt(reponses[8].input) !== 0 || parseInt(reponses[10].input) !== 0)) {
            document.getElementById('dc1-dc41DMZ').style.borderTop = '2px solid orange';
        } else
            document.getElementById('dc1-dc41DMZ').style.borderTop = '2px solid red';


        if (parseInt($('#9').attr('data-value')) === 1 && parseInt(reponses[9].input) === 0 && parseInt($('#13').attr('data-value')) === 1 && parseInt(reponses[13].input) === 0) {
            document.getElementById('dc1-dc42DMZ').style.borderTop = '2px solid green';
        } else if (parseInt($('#9').attr('data-value')) === 1 && parseInt($('#13').attr('data-value')) === 1 && (parseInt(reponses[9].input) !== 0 || parseInt(reponses[13].input) !== 0)) {
            document.getElementById('dc1-dc42DMZ').style.borderTop = '2px solid orange';
        } else
            document.getElementById('dc1-dc42DMZ').style.borderTop = '2px solid red';


        if (parseInt($('#11').attr('data-value')) === 1 && parseInt(reponses[11].input) === 0 && parseInt($('#14').attr('data-value')) === 1 && parseInt(reponses[14].input) === 0) {
            document.getElementById('dc41-dc42DMZ').style.borderTop = '2px solid green';
        } else if (parseInt($('#11').attr('data-value')) === 1 && parseInt($('#14').attr('data-value')) === 1 && (parseInt(reponses[11].input) !== 0 || parseInt(reponses[14].input) !== 0)) {
            document.getElementById('dc41-dc42DMZ').style.borderTop = '2px solid orange';
        } else
            document.getElementById('dc41-dc42DMZ').style.borderTop = '2px solid red';


        if (parseInt($('#12').attr('data-value')) === 1 && parseInt(reponses[12].input) === 0 && parseInt($('#15').attr('data-value')) === 1 && parseInt(reponses[15].input) === 0) {
            document.getElementById('dc42-dc41DMZ').style.borderTop = '2px solid green';
        } else if (parseInt($('#12').attr('data-value')) === 1 && parseInt($('#15').attr('data-value')) === 1 && (parseInt(reponses[12].input) !== 0 || parseInt(reponses[15].input) !== 0)) {
            document.getElementById('dc42-dc41DMZ').style.borderTop = '2px solid orange';
        } else
            document.getElementById('dc42-dc41DMZ').style.borderTop = '2px solid red';



        if (parseInt($('#16').attr('data-value')) === 1 && parseInt(reponses[16].input) === 0 && parseInt($('#18').attr('data-value')) === 1 && parseInt(reponses[18].input) === 0) {
            document.getElementById('dc1-dc41HEB').style.borderTop = '2px solid green';
        } else if (parseInt($('#16').attr('data-value')) === 1 && parseInt($('#18').attr('data-value')) === 1 && (parseInt(reponses[16].input) !== 0 || parseInt(reponses[18].input) !== 0)) {
            document.getElementById('dc1-dc41HEB').style.borderTop = '2px solid orange';
        } else
            document.getElementById('dc1-dc41HEB').style.borderTop = '2px solid red';


        if (parseInt($('#17').attr('data-value')) === 1 && parseInt(reponses[17].input) === 0 && parseInt($('#21').attr('data-value')) === 1 && parseInt(reponses[21].input) === 0) {
            document.getElementById('dc1-dc42HEB').style.borderTop = '2px solid green';
        } else if (parseInt($('#17').attr('data-value')) === 1 && parseInt($('#21').attr('data-value')) === 1 && (parseInt(reponses[17].input) !== 0 || parseInt(reponses[21].input) !== 0)) {
            document.getElementById('dc1-dc42HEB').style.borderTop = '2px solid orange';
        } else
            document.getElementById('dc1-dc42HEB').style.borderTop = '2px solid red';


        if (parseInt($('#19').attr('data-value')) === 1 && parseInt(reponses[19].input) === 0 && parseInt($('#22').attr('data-value')) === 1 && parseInt(reponses[22].input) === 0) {
            document.getElementById('dc41-dc42HEB').style.borderTop = '2px solid green';
        } else if (parseInt($('#19').attr('data-value')) === 1 && parseInt($('#22').attr('data-value')) === 1 && (parseInt(reponses[19].input) !== 0 || parseInt(reponses[22].input) !== 0)) {
            document.getElementById('dc41-dc42HEB').style.borderTop = '2px solid orange';
        } else
            document.getElementById('dc41-dc42HEB').style.borderTop = '2px solid red';


        if (parseInt($('#20').attr('data-value')) === 1 && parseInt(reponses[20].input) === 0 && parseInt($('#23').attr('data-value')) === 1 && parseInt(reponses[23].input) === 0) {
            document.getElementById('dc42-dc41HEB').style.borderTop = '2px solid green';
        } else if (parseInt($('#20').attr('data-value')) === 1 && parseInt($('#23').attr('data-value')) === 1 && (parseInt(reponses[20].input) !== 0 || parseInt(reponses[23].input) !== 0)) {
            document.getElementById('dc42-dc41HEB').style.borderTop = '2px solid orange';
        } else
            document.getElementById('dc42-dc41HEB').style.borderTop = '2px solid red';


        if (parseInt($('#24').attr('data-value')) === 1 && parseInt(reponses[24].input) === 0 && parseInt($('#26').attr('data-value')) === 1 && parseInt(reponses[26].input) === 0) {
            document.getElementById('dc1-dc41GARSYS').style.borderTop = '2px solid green';
        } else if (parseInt($('#24').attr('data-value')) === 1 && parseInt($('#26').attr('data-value')) === 1 && (parseInt(reponses[24].input) !== 0 || parseInt(reponses[26].input) !== 0)) {
            document.getElementById('dc1-dc41GARSYS').style.borderTop = '2px solid orange';
        } else
            document.getElementById('dc1-dc41GARSYS').style.borderTop = '2px solid red';


        if (parseInt($('#25').attr('data-value')) === 1 && parseInt(reponses[25].input) === 0 && parseInt($('#29').attr('data-value')) === 1 && parseInt(reponses[29].input) === 0) {
            document.getElementById('dc1-dc42GARSYS').style.borderTop = '2px solid green';
        } else if (parseInt($('#25').attr('data-value')) === 1 && parseInt($('#29').attr('data-value')) === 1 && (parseInt(reponses[25].input) !== 0 || parseInt(reponses[29].input) !== 0)) {
            document.getElementById('dc1-dc42GARSYS').style.borderTop = '2px solid orange';
        } else
            document.getElementById('dc1-dc42GARSYS').style.borderTop = '2px solid red';



        if (parseInt($('#27').attr('data-value')) === 1 && parseInt(reponses[27].input) === 0 && parseInt($('#30').attr('data-value')) === 1 && parseInt(reponses[30].input) === 0) {
            document.getElementById('dc41-dc42GARSYS').style.borderTop = '2px solid green';
        } else if (parseInt($('#27').attr('data-value')) === 1 && parseInt($('#30').attr('data-value')) === 1 && (parseInt(reponses[27].input) !== 0 || parseInt(reponses[30].input) !== 0)) {
            document.getElementById('dc41-dc42GARSYS').style.borderTop = '2px solid orange';
        } else
            document.getElementById('dc41-dc42GARSYS').style.borderTop = '2px solid red';



        if (parseInt($('#28').attr('data-value')) === 1 && parseInt(reponses[28].input) === 0 && parseInt($('#31').attr('data-value')) === 1 && parseInt(reponses[31].input) === 0) {
            document.getElementById('dc42-dc41GARSYS').style.borderTop = '2px solid green';
        } else if (parseInt($('#28').attr('data-value')) === 1 && parseInt($('#31').attr('data-value')) === 1 && (parseInt(reponses[28].input) !== 0 || parseInt(reponses[31].input) !== 0)) {
            document.getElementById('dc42-dc41GARSYS').style.borderTop = '2px solid orange';
        } else
            document.getElementById('dc42-dc41GARSYS').style.borderTop = '2px solid red';


    }


}

