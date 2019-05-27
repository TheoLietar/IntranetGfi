let modal = document.getElementById('myModal');
console.log("modal : " + modal);

let btn = document.querySelector("#myBtn");
console.log("button : " + btn);

let span = document.getElementsByClassName("close")[0];

btn.onclick = function () {
  modal.style.display = 'block';
};

span.onclick = function () {
    modal.style.display = 'none';
};

window.onclick = function (event) {
    if(event.target == modal){
        modal.style.display = 'none';
    }
};


function checkbox() {
    console.log("toto");
    let ul = document.getElementById('link-ul');
    let childs = ul.children;
    let checkb = childs.lastChild;

    for(let i=0;i<childs.length;i++){
        childs[i].lastChild.style.visibility = 'visible';
    }
}


