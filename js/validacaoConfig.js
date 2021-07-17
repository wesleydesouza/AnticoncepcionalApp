

function validacao(){
    var input = document.querySelectorAll('.inputNumbers');
    var output = document.querySelector('#output');
    var inputText = document.querySelectorAll('.semiPreto')
  if(input[0].value <= 0 || input[1].value <= 0 || input[2].value <= 0){
       output.innerHTML = "Digite um número válido!";

       if(input[0].value == "" || input[0].value <= 0){
        inputText[0].style.color = 'red';
       }
       
       if(input[1].value == "" || input[1].value <= 0){
        inputText[1].style.color = 'red';
       }
       
       if(input[2].value == "" || input[2].value <= 0){
        inputText[2].style.color = 'red';
       }
       return false
   }else{
       return true
   }
}

