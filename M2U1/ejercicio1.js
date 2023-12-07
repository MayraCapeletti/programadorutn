const box1 = document.getElementById("box1");
const box2 = document.getElementById("box2");
const box3 = document.getElementById("box3");
const body = document.querySelector('body');


box1.addEventListener('click', function() {
    body.style.backgroundColor = 'red'
    
});

box2.addEventListener('click', function() {
   body.style.backgroundColor = 'blue'
   
});

box3.addEventListener('click', function() {
    body.style.backgroundColor= 'green';
  

});


