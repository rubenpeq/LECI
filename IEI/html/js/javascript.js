function square(x){
    return x**2;
}

function loop_do_while(){
    var e=0, i=0;
    do{e+=i;
    i++;
    }while(i<10);
    console.log("E="+e)
}

function loop_while(){
    var e=0, i=0;
    while(i<10){
        e+=i;
        i++;
    }
    console.log("E="+e)
}

function loop_for(){
    var e=0;
    for(var i=0; i<=10; i++){
        e+=i;
    }
    console.log("E="+e)
}

function main(){
    document.write("Exercises 1 to 10!")
    var d="9", x, s=3;
    x=2*s;
    console.log(x-s);
    console.log(s+parseInt(d))
    //alert(x);
    //document.write(x);
    /*for(var i=0;i<16;i++){
        document.write("uma-string" - 2);
        document.write("<br />");
        }
        document.write("Batman");*/
    var y=square(s);
    console.log(y)
    /*if (y===d){alert("Iguais")}
    else alert("Diferentes")*/
    var a ="3";
    switch(a) {
    case "abc": console.log("string abc"); break;
    case 3: console.log("inteiro 3"); break;
    default: console.log("outro");
    }
    loop_do_while();    
    loop_while();
    loop_for();
}

main();