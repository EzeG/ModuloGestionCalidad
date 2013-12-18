/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
registro_nc= document.getElementById("registro_nc");
situacion_nc= document.getElementById("situacion_nc");
clausula_nc= document.getElementById("clausula_nc");
requisito_nc= document.getElementById("requisito_nc");
declaracion_nc= document.getElementById("declaracion_nc");
codigo_nc= document.getElementById("codigo_nc");
submit=document.getElementById("submit");

//se definen contadores de textareas
situacion_nc_counter= document.getElementById("situacion_nc_counter");
requisito_nc_counter= document.getElementById("requisito_nc_counter");
declaracion_nc_counter= document.getElementById("declaracion_nc_counter");

//se definen los mensajes de error
registro_nc_error= document.getElementById("registro_nc_error");
situacion_nc_error= document.getElementById("situacion_nc_error");
clausula_nc_error= document.getElementById("clausula_nc_error");
requisito_nc_error= document.getElementById("requisito_nc_error");
declaracion_nc_error= document.getElementById("declaracion_nc_error");
codigo_nc_error= document.getElementById("codigo_nc_error");

//se definen las variables de validacion
registro_nc_value= false;
situacion_nc_value= false;
clausula_nc_value= false;
requisito_nc_value= false;
declaracion_nc_value= false;
codigo_nc_value= false;

//se inicializan los textbox
registro_nc.value = "Codigo";
situacion_nc.value = "Describa la inconformidad";
clausula_nc.value = "Clausula";
requisito_nc.value = "Requisito";
declaracion_nc.value = "Declaracion";
codigo_nc.value = "Codigo";
submit.disabled = true;

situacion_nc.onkeydown = function(){
    cantidad = situacion_nc.value.length;
    if (cantidad>4999){
        situacion_nc_counter.setAttribute("style", "font-size: 10px; color: #B22222");
    } else{
        situacion_nc_counter.setAttribute("style", "font-size: 10px; color: gray");
    }
    situacion_nc_counter.innerHTML= (4999 - cantidad).toString();
}

situacion_nc.onkeypress = function(){
    cantidad = situacion_nc.value.length;
    if (cantidad>4999){
        situacion_nc_counter.setAttribute("style", "font-size: 10px; color: #B22222");
    } else{
        situacion_nc_counter.setAttribute("style", "font-size: 10px; color: gray");
    }
    situacion_nc_counter.innerHTML= (4999 - cantidad).toString();
}

requisito_nc.onkeydown = function(){
    cantidad = requisito_nc.value.length;
     if (cantidad>4999){
        requisito_nc_counter.setAttribute("style", "font-size: 10px; color: #B22222");
    } else{
        requisito_nc_counter.setAttribute("style", "font-size: 10px; color: gray");
    }
    requisito_nc_counter.innerHTML= (4999 - cantidad).toString();
}

requisito_nc.onkeypress = function(){
    cantidad = requisito_nc.value.length;
     if (cantidad>4999){
        requisito_nc_counter.setAttribute("style", "font-size: 10px; color: #B22222");
    } else{
        requisito_nc_counter.setAttribute("style", "font-size: 10px; color: gray");
    }
    requisito_nc_counter.innerHTML= (4999 - cantidad).toString();
}

declaracion_nc.onkeydown = function(){
    cantidad = declaracion_nc.value.length;
    if (cantidad > 4999){
        declaracion_nc_counter.setAttribute("style", "font-size: 10px; color: #B22222");
    } else{
        declaracion_nc_counter.setAttribute("style", "font-size: 10px; color: gray");
    }
    declaracion_nc_counter.innerHTML= (4999 - cantidad).toString();
}

declaracion_nc.onkeypress = function(){
    cantidad = declaracion_nc.value.length;
    if (cantidad > 4999){
        declaracion_nc_counter.setAttribute("style", "font-size: 10px; color: #B22222");
    } else{
        declaracion_nc_counter.setAttribute("style", "font-size: 10px; color: gray");
    }
    declaracion_nc_counter.innerHTML= (4999 - cantidad).toString();
}

registro_nc.onclick = function() {
 if (registro_nc.value == "Codigo") {
     registro_nc.setAttribute("style", "width:100px; color: black; font-size: 14px; border-color: #127ba5");
     registro_nc_error.innerHTML = "";
     registro_nc.value = "";
 }
}

situacion_nc.onclick = function() {
 if (situacion_nc.value == "Describa la inconformidad") {
     situacion_nc.setAttribute("style", "height: 100px; width:300px; color: black; font-size: 14px; border-color: #127ba5");
     situacion_nc.value = "";
     situacion_nc_error.innerHTML = "";
 }
}

clausula_nc.onclick = function() {
 if (clausula_nc.value == "Clausula") {
     clausula_nc.setAttribute("style", "color: black; font-size: 14px; border-color: #127ba5");
     clausula_nc.value = "";
     clausula_nc_error.innerHTML = "";

 }
}

requisito_nc.onclick = function() {
 if (requisito_nc.value == "Requisito") {
     requisito_nc.setAttribute("style", "height: 100px; width:250px; color: black;font-size: 14px; border-color: #127ba5");
     requisito_nc.value = "";
     requisito_nc_error.innerHTML = "";

 }
}

declaracion_nc.onclick = function() {
 if (declaracion_nc.value == "Declaracion") {
     declaracion_nc.value = "";
     declaracion_nc.setAttribute("style", "height: 100px; width:250px; color: black;font-size: 14px; border-color: #127ba5");
     declaracion_nc_error.innerHTML = "";

 }
}

codigo_nc.onclick = function() {
 if (codigo_nc.value == "Codigo") {
     codigo_nc.setAttribute("style", "color: black; font-size: 14px; border-color: #127ba5");
     codigo_nc.value = "";
     codigo_nc_error.innerHTML = "";

 }
}

registro_nc.onblur = function() {
    registro_nc.value = registro_nc.value.trim();
 if (registro_nc.value == "") {
     registro_nc.setAttribute("style", "width:100px; color: gray; font-size: 14px; border-color: #B22222");
     registro_nc_error.innerHTML = "El numero de registro es obligatorio";
     registro_nc.value = "Codigo";
     registro_nc_value = false;
 }else{
     registro_nc_error.innerHTML = "";
     registro_nc.setAttribute("style", "width:100px; color: black; font-size: 14px");
     registro_nc_value = true;
 }
 submit.disabled = !(registro_nc_value && situacion_nc_value && clausula_nc_value && requisito_nc_value && declaracion_nc_value && codigo_nc_value)
}

situacion_nc.onblur = function() {
    cantidad = situacion_nc.value.length;
    situacion_nc.value = situacion_nc.value.trim();
 if (situacion_nc.value == "") {
     situacion_nc.setAttribute("style", "height: 100px; width:300px; color: gray; font-size: 14px; border-color: #B22222");
     situacion_nc_error.innerHTML = "Debe describir la inconformidad";
     situacion_nc.value = "Describa la inconformidad";
     situacion_nc_value= false;
     situacion_nc_counter.innerHTML = "4999";
 }else{
     if (cantidad > 4999){
        situacion_nc_error.innerHTML = "Situacion excede el limite de caracteres";
        situacion_nc_value= false;
    }else{
        situacion_nc_error.innerHTML = "";
        situacion_nc.setAttribute("style", "height: 100px; width:300px; color: black; font-size: 14px");
        situacion_nc_value= true;
    }
 }
 submit.disabled = !(registro_nc_value && situacion_nc_value && clausula_nc_value && requisito_nc_value && declaracion_nc_value && codigo_nc_value);
}

clausula_nc.onblur = function() {
    clausula_nc.value = clausula_nc.value.trim();
 if (clausula_nc.value == "") {
     clausula_nc.setAttribute("style", "color: gray; font-size: 14px; border-color: #127ba5; border-color: #B22222");
     clausula_nc_error.innerHTML = "Indique la clausula";
     clausula_nc.value = "Clausula";
     clausula_nc_value = false;
 }else{
     clausula_nc.setAttribute("style", "color: black; font-size: 14px; border-color: #127ba5");
     clausula_nc_value = true;
 }
 submit.disabled = !(registro_nc_value && situacion_nc_value && clausula_nc_value && requisito_nc_value && declaracion_nc_value && codigo_nc_value)
}

requisito_nc.onblur = function() {
    clausula_nc.value = clausula_nc.value.trim();
    cantidad = situacion_nc.value.length;
 if (requisito_nc.value == "") {
     requisito_nc.setAttribute("style", "height: 100px; width:250px; color: gray;font-size: 14px; border-color: #B22222");
     requisito_nc_error.innerHTML = "Requisito es obligatorio";
     requisito_nc.value = "Requisito";
     requisito_nc_value = false;
     requisito_nc_counter.innerHTML = "4999";
 }else{
     if (cantidad > 4999){
        requisito_nc_error.innerHTML = "Requisito excede el limite de caracteres";
        requisito_nc_value= false;
    }else{
        requisito_nc_error.innerHTML = "";
        requisito_nc.setAttribute("style", "height: 100px; width:250px; color: black;font-size: 14px");
        requisito_nc_value = true;
    }
 }
 submit.disabled = !(registro_nc_value && situacion_nc_value && clausula_nc_value && requisito_nc_value && declaracion_nc_value && codigo_nc_value)
}

declaracion_nc.onblur = function() {
    clausula_nc.value = clausula_nc.value.trim();
    cantidad = situacion_nc.value.length;
 if (declaracion_nc.value == "") {
    declaracion_nc.setAttribute("style", "height: 100px; width:250px; color: gray;font-size: 14px; border-color: #B22222");
    declaracion_nc_error.innerHTML = "Declaracion de la no conformidad obligatoria";
    declaracion_nc.value = "Declaracion";
    declaracion_nc_value = false;
    declaracion_nc_counter.innerHTML = "4999";
 }else{
     if (cantidad > 4999){
        declaracion_nc_error.innerHTML = "Requisito excede el limite de caracteres";
        declaracion_nc_value= false;
    }else{
        declaracion_nc.setAttribute("style", "height: 100px; width:250px; color: black;font-size: 14px");
        declaracion_nc_error.innerHTML = "";
        declaracion_nc_value = true;
    }
 }
 submit.disabled = !(registro_nc_value && situacion_nc_value && clausula_nc_value && requisito_nc_value && declaracion_nc_value && codigo_nc_value)
}

codigo_nc.onblur = function() {
    clausula_nc.value = clausula_nc.value.trim();
 if (codigo_nc.value == "") {
     codigo_nc.setAttribute("style", "color: gray; font-size: 14px; border-color: #B22222");
     codigo_nc_error.innerHTML = "Codigo de no conformidad es obligatorio";
     codigo_nc.value = "Codigo";
     codigo_nc_value = false;
 }else{
     codigo_nc.setAttribute("style", "color: black; font-size: 14px");
     codigo_nc_value = true;
 }
 submit.disabled = !(registro_nc_value && situacion_nc_value && clausula_nc_value && requisito_nc_value && declaracion_nc_value && codigo_nc_value)
}



