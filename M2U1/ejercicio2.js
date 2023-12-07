const textarea= document.getElementById('texto');
const contador= document.getElementById('contador');


function actualizarContador(){
    contador.innerText = textarea.value.length;

    }

textarea.addEventListener('input', actualizarContador);

actualizarContador();

