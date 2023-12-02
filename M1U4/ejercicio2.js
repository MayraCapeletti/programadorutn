const numero= [5,20,10,30,15]
    console.log(numero);
    
    function max (numero){
        let max = numero[0];

    for(let i = 0; i < numero.length; i++){
        console.log("orden" + numero[i])
        if (numero[i] > max ){
            max= numero[i]
        }
    }
    return max
}

const numeromayor= max(numero);
console.log ("el numero mayor es :" + numeromayor);
