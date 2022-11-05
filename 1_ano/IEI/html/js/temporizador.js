function diminuirVertical(elemento){
    var altura = parseInt(elemento.style.height) - 10 ;
    var largura = parseInt(elemento.style.width) - 10 ;
    elemento.style.height = altura+"px";
    elemento.style.width = largura+"px";
    if(altura > 0){
    setTimeout("diminuirVertical("+elemento.id+")",10);
    }
}

/*var temp = null;
    function diminuirVertical(elemento){
        if(temp == null){
        temp = setInterval("diminuirVertical("+elemento.id+")",20);
    }
    var altura = parseInt(elemento.style.height) - 10 ;
    elemento.style.height = altura+"px";
    if(altura <= 0){
        window.clearInterval(temp);
        temp = null;
    }
}*/
/*function diminuirVertical(elemento){
    var altura = parseInt(elemento.style.height,10);
    for( ; altura > 0; altura--){
    elemento.style.height = altura+"px";
    }
}*/
function reporImagem(elemento){
    elemento.style.display = "block";
    elemento.style.height = "400px";
    elemento.style.width ="500px";
}