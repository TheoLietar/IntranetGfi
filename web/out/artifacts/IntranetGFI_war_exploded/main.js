$( ".cta" ).click(function() {
    $( ".transition").toggleClass( "anim-trans" );
});

$('.ml16').each(function(){
    $(this).html($(this).text().replace(/([^\x00-\x80]|\w)/g, "<span class='letter'>$&</span>"));
});

anime.timeline({loop: true})
    .add({
        targets: '.ml16 .letter',
        translateY: [-100,0],
        easing: "easeOutExpo",
        duration: 1400,
        delay: function(el, i) {
            return 30 * i;
        }
    }).add({
    targets: '.ml16',
    opacity: 0,
    duration: 1000,
    easing: "easeOutExpo",
    delay: 1000
});

function check_empty() {
    if (document.getElementById('login').value == "") {
        alert("Fill All Fields !");
    } else {
        document.getElementById('form').submit();
        alert("Form Submitted Successfully...");
    }
}
//Function To Display Popup
function div_show() {
    document.getElementById('abc').style.display = "block";
}
//Function to Hide Popup
function div_hide(){
    document.getElementById('abc').style.display = "none";
}

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
        document.getElementById('ssl').style.display = 'none';
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
        document.getElementById('ssl').style.display = 'none';
        document.getElementById('LLB').style.display = 'block';
    } else if (chaine === '5400') {
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
        document.getElementById('ssl').style.display = 'none';
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
        document.getElementById('ssl').style.display = 'none';
        document.getElementById('3600').style.display = 'block';
    } else if(chaine === 'ssl'){
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
        document.getElementById('clientsGrid').style.display = 'none';
        document.getElementById('3600').style.display = 'none';
        document.getElementById('ssl').style.display = 'block';
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
        document.getElementById('ssl').style.display = 'none';
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
        document.getElementById('ssl').style.display = 'none';
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
        document.getElementById('checkpoint').style.display = 'none';
        document.getElementById('lan7k').style.display = 'none';
        document.getElementById('lan5k').style.display = 'none';
        document.getElementById('lb').style.display = 'none';
        document.getElementById('cw').style.display = 'none';
        document.getElementById('nfs5k').style.display = 'none';
        document.getElementById('clientsGrid').style.display = 'none';
        document.getElementById('interoute').style.display = 'none';
        document.getElementById('zayo').style.display = 'none';
        document.getElementById('ssl').style.display = 'none';
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
        document.getElementById('ssl').style.display = 'none';
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
        document.getElementById('ssl').style.display = 'none';
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
        document.getElementById('ssl').style.display = 'none';
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
        document.getElementById('ssl').style.display = 'none';
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
        document.getElementById('ssl').style.display = 'none';
        document.getElementById('lb').style.display = 'block';
    } else if (chaine === 'cw') {
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
        document.getElementById('ssl').style.display = 'none';
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
        document.getElementById('ssl').style.display = 'none';
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
        document.getElementById('ssl').style.display = 'none';
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

