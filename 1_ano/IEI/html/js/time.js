function displayTime(){
    var t=document.getElementById("tempo")
    var hoje = new Date();
    var horas = hoje.getHours();
    var minutos = hoje.getMinutes();
    var segundos = hoje.getSeconds();
    if (segundos<10){t.innerHTML=horas+":"+minutos+":0"+segundos;}
    else t.innerHTML=horas+":"+minutos+":"+segundos;
    setTimeout("displayTime()",100);
}