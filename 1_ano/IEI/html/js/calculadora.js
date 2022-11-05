function mover(){
    var e = document.getElementById( "btn" );
    e.style.position = "absolute";
    e.style.top = (Math.random() * window.innerHeight)+"px";
    e.style.left = (Math.random() * window.innerWidth)+"px";
}

function operation(){
    var e=document.getElementById("op");
    op=e.options[e.selectedIndex].value;
    var opt=document.getElementById("op-view");
    opt.innerHTML=op;
    return op;
}

function sum(){
    var x = document.getElementById( "op1" );
    var y = document.getElementById( "op2" );
    var res = document.getElementById("res");
    var op=operation();
    switch (op){
        case "-":
            res.value=parseFloat(x.value)-parseFloat(y.value);
        break;
        case "/":
            res.value=parseFloat(x.value)/parseFloat(y.value);
            break;
        case "*":
            res.value=parseFloat(x.value)*parseFloat(y.value);
            break;
        default:
            res.value=parseFloat(x.value)+parseFloat(y.value);
            break;
    }
}