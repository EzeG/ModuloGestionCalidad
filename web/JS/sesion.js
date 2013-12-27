/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

encargado = document.getElementById("encargado");
submit = document.getElementById("agregarp");

if (encargado.value == "visible"){
    submit.setAttribute("style", "visibility : visible");
}else{
    submit.setAttribute("style", "visibility : hidden");
}
