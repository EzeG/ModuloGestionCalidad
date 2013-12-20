
/*
 * textboxs y textareas
 * 
 */
nombre_grupo= document.getElementById("nombre_grupo");
miembros_grupo= document.getElementById("string_grupo");
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
nombre_grupo_error = document.getElementById("nombre_grupo_error");
string_grupo_error = document.getElementById("string_grupo_error");
registro_nc_error= document.getElementById("registro_nc_error");
situacion_nc_error= document.getElementById("situacion_nc_error");
clausula_nc_error= document.getElementById("clausula_nc_error");
requisito_nc_error= document.getElementById("requisito_nc_error");
declaracion_nc_error= document.getElementById("declaracion_nc_error");
codigo_nc_error= document.getElementById("codigo_nc_error");
submit_error=document.getElementById("submit_error");
error_style=document.getElementById("error_style");

//se definen las variables de validacion
nombre_grupo_value = false;
string_grupo_value = false;
registro_nc_value= false;
situacion_nc_value= false;
clausula_nc_value= false;
requisito_nc_value= false;
declaracion_nc_value= false;
codigo_nc_value= false;
/*
 * se desactiva el boton de submit hasta que se llene correctamente el formulario
 */
submit.disabled = true;

//se inicializan los estilos de los textbox y textareas
if(nombre_grupo.value== "Nombre del Grupo"){
    nombre_grupo.setAttribute("style", "width:500px; color: gray; font-size: 14px");
}else{
    string_grupo_value = true;
    registro_nc_value= true;
    situacion_nc_value= true;
    clausula_nc_value= true;
    requisito_nc_value= true;
    declaracion_nc_value= true;
    codigo_nc_value= true;
    if(error_style.value=="El grupo ya existe."){
        nombre_grupo.setAttribute("style", "width:500px; color: black; font-size: 14px; border-color: #B22222");
    }else{
        nombre_grupo.setAttribute("style", "width:500px; color: black; font-size: 14px");
    }  
}

if(miembros_grupo.value=="Integrante Uno, Integrante Dos, Integrante Tres..." ){
    miembros_grupo.setAttribute("style","width:500px; color:gray; font-size: 14px");
}else{
    nombre_grupo_value = true;
    registro_nc_value= true;
    situacion_nc_value= true;
    clausula_nc_value= true;
    requisito_nc_value= true;
    declaracion_nc_value= true;
    codigo_nc_value= true;
    if(error_style.value=="Uno o mas integrantes del grupo no pertenecen a la base de datos del sistema."
            || error_style.value=="Debe ingresar al menos un usuario en el grupo."){
        miembros_grupo.setAttribute("style","width:500px; color:black; font-size: 14px; border-color: #B22222");
    }else{
        miembros_grupo.setAttribute("style","width:500px; color:black; font-size: 14px");
    }
}       

if(registro_nc.value=="Registro"){
    registro_nc.setAttribute("style","width:100px; color: gray; font-size: 14px");
}else{
    nombre_grupo_value = true;
    string_grupo_value = true;
    situacion_nc_value= true;
    clausula_nc_value= true;
    requisito_nc_value= true;
    declaracion_nc_value= true;
    codigo_nc_value= true;
    if(error_style.value=="Ya existe una no conformidad con este nombre."){
        registro_nc.setAttribute("style","width:100px; color: black; font-size: 14px; border-color: #B22222");
    }else{
        registro_nc.setAttribute("style","width:100px; color: black; font-size: 14px");
    }
}

if(situacion_nc.value=="Describa la inconformidad"){
    situacion_nc.setAttribute("style","height: 100px; width:300px; color: gray; font-size: 14px");
}else{
    situacion_nc.setAttribute("style","height: 100px; width:300px; color: black; font-size: 14px");
    cantidad = situacion_nc.value.length;
    situacion_nc_counter.innerHTML= (4999 - cantidad).toString();
}

if(clausula_nc.value=="Clausula"){
    clausula_nc.setAttribute("style","color: gray; font-size: 14px");    
}else{
    clausula_nc.setAttribute("style","color: black; font-size: 14px");
}

if(requisito_nc.value=="Requisito"){
    requisito_nc.setAttribute("style","height: 100px; width:250px; color: gray; font-size: 14px"); 
}else{
    requisito_nc.setAttribute("style","height: 100px; width:250px; color: black; font-size: 14px");
    cantidad = requisito_nc.value.length;
    requisito_nc_counter.innerHTML= (4999 - cantidad).toString();
}

if(declaracion_nc.value=="Declaracion"){
    declaracion_nc.setAttribute("style","height: 100px; width:250px; color: gray; font-size: 14px");   
}else{
    declaracion_nc.setAttribute("style","height: 100px; width:250px; color: black; font-size: 14px");
    cantidad = declaracion_nc.value.length;
    declaracion_nc_counter.innerHTML= (4999 - cantidad).toString();
}

if(codigo_nc.value=="Codigo"){
    codigo_nc.setAttribute("style","color: gray; font-size: 14px");      
}else{
    codigo_nc.setAttribute("style","color: black; font-size: 14px");  
}






situacion_nc.onkeydown = function(){
    cantidad = situacion_nc.value.length;
    if (cantidad>4999){
        situacion_nc_counter.setAttribute("style", "margin-left: 290px; font-size: 10px; color: #B22222");
    } else{
        situacion_nc_counter.setAttribute("style", "margin-left: 290px; font-size: 10px; color: gray");
    }
    situacion_nc_counter.innerHTML= (4999 - cantidad).toString();
}

situacion_nc.onkeypress = function(){
    cantidad = situacion_nc.value.length;
    if (cantidad>4999){
        situacion_nc_counter.setAttribute("style", "margin-left: 290px; font-size: 10px; color: #B22222");
    } else{
        situacion_nc_counter.setAttribute("style", "margin-left: 290px; font-size: 10px; color: gray");
    }
    situacion_nc_counter.innerHTML= (4999 - cantidad).toString();
}

requisito_nc.onkeydown = function(){
    cantidad = requisito_nc.value.length;
     if (cantidad>4999){
        requisito_nc_counter.setAttribute("style", "margin-left: 220px; font-size: 10px; color: #B22222");
    } else{
        requisito_nc_counter.setAttribute("style", "margin-left: 220px; font-size: 10px; color: gray");
    }
    requisito_nc_counter.innerHTML= (4999 - cantidad).toString();
}

requisito_nc.onkeypress = function(){
    cantidad = requisito_nc.value.length;
     if (cantidad>4999){
        requisito_nc_counter.setAttribute("style", "margin-left: 220px; font-size: 10px; color: #B22222");
    } else{
        requisito_nc_counter.setAttribute("style", "margin-left: 220px; font-size: 10px; color: gray");
    }
    requisito_nc_counter.innerHTML= (4999 - cantidad).toString();
}

declaracion_nc.onkeydown = function(){
    cantidad = declaracion_nc.value.length;
    if (cantidad > 4999){
        declaracion_nc_counter.setAttribute("style", "margin-left: 220px; font-size: 10px; color: #B22222");
    } else{
        declaracion_nc_counter.setAttribute("style", "margin-left: 220px; font-size: 10px; color: gray");
    }
    declaracion_nc_counter.innerHTML= (4999 - cantidad).toString();
}

declaracion_nc.onkeypress = function(){
    cantidad = declaracion_nc.value.length;
    if (cantidad > 4999){
        declaracion_nc_counter.setAttribute("style", "margin-left: 220px; font-size: 10px; color: #B22222");
    } else{
        declaracion_nc_counter.setAttribute("style", "margin-left: 220px; font-size: 10px; color: gray");
    }
    declaracion_nc_counter.innerHTML= (4999 - cantidad).toString();
}

/*
 * 
 * onclick events
 */

nombre_grupo.onclick = function() {
    nombre_grupo.setAttribute("style", "width:500px; color:black; font-size: 14px; border-color: #127ba5");
    nombre_grupo_error.innerHTML = "";
 if (nombre_grupo.value == "Nombre del Grupo") {
     nombre_grupo.value = "";
 }
}

string_grupo.onclick = function() {
    string_grupo_error.innerHTML = "";
    string_grupo.setAttribute("style", "width:500px; color:black; font-size: 14px; border-color: #127ba5");
    if (string_grupo.value == "Integrante Uno, Integrante Dos, Integrante Tres...") {
        string_grupo.value = "";
    }
}

registro_nc.onclick = function() {
    registro_nc.setAttribute("style", "width:100px; color: black; font-size: 14px; border-color: #127ba5");
    registro_nc_error.innerHTML = "";
 if (registro_nc.value == "Registro") {
     registro_nc.value = "";
 }
}

situacion_nc.onclick = function() {
    situacion_nc.setAttribute("style", "height: 100px; width:300px; color: black; font-size: 14px; border-color: #127ba5");
    situacion_nc_error.innerHTML = "";
 if (situacion_nc.value == "Describa la inconformidad") {
     situacion_nc.value = "";   
 }
}

clausula_nc.onclick = function() {
    clausula_nc_error.innerHTML = "";
    clausula_nc.setAttribute("style", "color: black; font-size: 14px; border-color: #127ba5");
 if (clausula_nc.value == "Clausula") {
     clausula_nc.value = "";
     
 }
}

requisito_nc.onclick = function() {
     requisito_nc.setAttribute("style", "height: 100px; width:250px; color: black;font-size: 14px; border-color: #127ba5");
     requisito_nc_error.innerHTML = "";
 if (requisito_nc.value == "Requisito") {
     requisito_nc.value = "";
 }
}

declaracion_nc.onclick = function() {
     declaracion_nc.setAttribute("style", "height: 100px; width:250px; color: black;font-size: 14px; border-color: #127ba5");
     declaracion_nc_error.innerHTML = "";
 if (declaracion_nc.value == "Declaracion") {
     declaracion_nc.value = "";

 }
}

codigo_nc.onclick = function() {
     codigo_nc.setAttribute("style", "color: black; font-size: 14px; border-color: #127ba5");
     codigo_nc_error.innerHTML = "";
 if (codigo_nc.value == "Codigo") {
     codigo_nc.value = "";
     
 }
}


/*
 * onblur events
 * 
 */
nombre_grupo.onblur = function() {
    nombre_grupo.value = nombre_grupo.value.trim();
    minuscula=nombre_grupo.value.charAt(0)+"";
    mayuscula=minuscula.toUpperCase();
    nombre_grupo.value = mayuscula + nombre_grupo.value.substring(1, nombre_grupo.value.length);
 if (nombre_grupo.value == "") {
     nombre_grupo.setAttribute("style", "width:500px; color: gray; font-size: 14px; border-color: #B22222");
     nombre_grupo_error.innerHTML = "Nombre del grupo es requerido";
     nombre_grupo.value = "Nombre del Grupo";
     nombre_grupo_value = false;
 }else{
     if (nombre_grupo.value.length > 29){
         nombre_grupo.setAttribute("style", "width:500px; color: black; font-size: 14px; border-color: #B22222");
         nombre_grupo_error.innerHTML = "El nombre del grupo es muy largo";
         nombre_grupo_value = false;
     }else{
        nombre_grupo.setAttribute("style", "width:500px; color:black; font-size: 14px");
        nombre_grupo_value = true;
    }
 }
  submit.disabled = !(nombre_grupo_value&& string_grupo_value && registro_nc_value && situacion_nc_value && clausula_nc_value && 
                     requisito_nc_value && declaracion_nc_value && codigo_nc_value);
}

string_grupo.onblur = function() {
 if (string_grupo.value == "") {
     string_grupo.setAttribute("style", "width:500px; color: gray; font-size: 14px; border-color: #B22222");
     string_grupo_error.innerHTML = "El grupo debe estar formado por al menos una persona";
     string_grupo.value = "Integrante Uno, Integrante Dos, Integrante Tres...";
     string_grupo_value = false;
 }else{
     string_grupo.setAttribute("style", "width:500px; color:black; font-size: 14px");
     string_grupo_value = true;
 }
 submit.disabled = !(nombre_grupo_value&& string_grupo_value && registro_nc_value && situacion_nc_value && clausula_nc_value && 
                     requisito_nc_value && declaracion_nc_value && codigo_nc_value);
}

registro_nc.onblur = function() {
    registro_nc.value = registro_nc.value.trim();
 if (registro_nc.value == "") {
     registro_nc.setAttribute("style", "width:100px; color: gray; font-size: 14px; border-color: #B22222");
     registro_nc_error.innerHTML = "El numero de registro es obligatorio";
     registro_nc.value = "Registro";
     registro_nc_value = false;
 }else{
     if (registro_nc.value.length > 19){
         registro_nc.setAttribute("style", "width:100px; color: black; font-size: 14px; border-color: #B22222");
         registro_nc_error.innerHTML = "El numero de registro es muy largo";
         registro_nc_value = false;
     }else{
         registro_nc_error.innerHTML = "";
         registro_nc.setAttribute("style", "width:100px; color: black; font-size: 14px");
         registro_nc_value = true;
    }
 }
  submit.disabled = !(nombre_grupo_value&& string_grupo_value && registro_nc_value && situacion_nc_value && clausula_nc_value && 
                     requisito_nc_value && declaracion_nc_value && codigo_nc_value);
}

situacion_nc.onblur = function() {
    cantidad = situacion_nc.value.length;
    situacion_nc.value = situacion_nc.value.trim();
    minuscula=situacion_nc.value.charAt(0)+"";
    mayuscula=minuscula.toUpperCase();
    situacion_nc.value = mayuscula + situacion_nc.value.substring(1, situacion_nc.value.length);
 if (situacion_nc.value == "") {
     situacion_nc.setAttribute("style", "height: 100px; width:300px; color: gray; font-size: 14px; border-color: #B22222");
     situacion_nc_error.innerHTML = "Debe describir la inconformidad";
     situacion_nc.value = "Describa la inconformidad";
     situacion_nc_value= false;
     situacion_nc_counter.innerHTML = "4999";
 }else{
     if (cantidad > 4999){
         situacion_nc.setAttribute("style", "height: 100px; width:300px; color: black; font-size: 14px; border-color: #B22222");
         situacion_nc_error.innerHTML = "Situacion excede el limite de caracteres";
         situacion_nc_value= false;
    }else{
        situacion_nc_error.innerHTML = "";
        situacion_nc.setAttribute("style", "height: 100px; width:300px; color: black; font-size: 14px");
        situacion_nc_value= true;
    }
 }
  submit.disabled = !(nombre_grupo_value&& string_grupo_value && registro_nc_value && situacion_nc_value && clausula_nc_value && 
                     requisito_nc_value && declaracion_nc_value && codigo_nc_value);
}

clausula_nc.onblur = function() {
    clausula_nc.value = clausula_nc.value.trim();
 if (clausula_nc.value == "") {
     clausula_nc.setAttribute("style", "color: gray; font-size: 14px; border-color: #127ba5; border-color: #B22222");
     clausula_nc_error.innerHTML = "Indique la clausula";
     clausula_nc.value = "Clausula";
     clausula_nc_value = false;
 }else{
     if (clausula_nc.value.length > 29){
         clausula_nc.setAttribute("style", "color: black; font-size: 14px; border-color: #127ba5; border-color: #B22222");
         clausula_nc_error.innerHTML = "Clausula excede longitud maxima";
         clausula_nc_value = false;
     }else{
        clausula_nc.setAttribute("style", "color: black; font-size: 14px");
        clausula_nc_value = true;
    }
 }
 submit.disabled = !(nombre_grupo_value&& string_grupo_value && registro_nc_value && situacion_nc_value && clausula_nc_value && 
                     requisito_nc_value && declaracion_nc_value && codigo_nc_value);
}

requisito_nc.onblur = function() {
    requisito_nc.value = requisito_nc.value.trim();
    cantidad = requisito_nc.value.length;
    minuscula= requisito_nc.value.charAt(0)+"";
    mayuscula= minuscula.toUpperCase();
    requisito_nc.value = mayuscula + requisito_nc.value.substring(1, requisito_nc.value.length);
 if (requisito_nc.value == "") {
     requisito_nc.setAttribute("style", "height: 100px; width:250px; color: gray;font-size: 14px; border-color: #B22222");
     requisito_nc_error.innerHTML = "Requisito es obligatorio";
     requisito_nc.value = "Requisito";
     requisito_nc_value = false;
     requisito_nc_counter.innerHTML = "4999";
 }else{
     if (cantidad > 4999){
         requisito_nc.setAttribute("style", "height: 100px; width:250px; color: black;font-size: 14px; border-color: #B22222");
         requisito_nc_error.innerHTML = "Requisito excede el limite de caracteres";
         requisito_nc_value= false;
    }else{
        requisito_nc_error.innerHTML = "";
        requisito_nc.setAttribute("style", "height: 100px; width:250px; color: black;font-size: 14px");
        requisito_nc_value = true;
    }
 }
  submit.disabled = !(nombre_grupo_value&& string_grupo_value && registro_nc_value && situacion_nc_value && clausula_nc_value && 
                     requisito_nc_value && declaracion_nc_value && codigo_nc_value);
}

declaracion_nc.onblur = function() {
    declaracion_nc.value = declaracion_nc.value.trim();
    cantidad = declaracion_nc.value.length;
    minuscula=declaracion_nc.value.charAt(0)+"";
    mayuscula=minuscula.toUpperCase();
    declaracion_nc.value = mayuscula + declaracion_nc.value.substring(1, declaracion_nc.value.length);
 if (declaracion_nc.value == "") {
    declaracion_nc.setAttribute("style", "height: 100px; width:250px; color: gray;font-size: 14px; border-color: #B22222");
    declaracion_nc_error.innerHTML = "Declaracion de la no conformidad obligatoria";
    declaracion_nc.value = "Declaracion";
    declaracion_nc_value = false;
    declaracion_nc_counter.innerHTML = "4999";
 }else{
     if (cantidad > 4999){
         declaracion_nc.setAttribute("style", "height: 100px; width:250px; color: black;font-size: 14px; border-color: #B22222");
         declaracion_nc_error.innerHTML = "Requisito excede el limite de caracteres";
         declaracion_nc_value= false;
    }else{
        declaracion_nc.setAttribute("style", "height: 100px; width:250px; color: black;font-size: 14px");
        declaracion_nc_error.innerHTML = "";
        declaracion_nc_value = true;
    }
 }
 submit.disabled = !(nombre_grupo_value&& string_grupo_value && registro_nc_value && situacion_nc_value && clausula_nc_value && 
                     requisito_nc_value && declaracion_nc_value && codigo_nc_value);
}

codigo_nc.onblur = function() {
    codigo_nc.value = codigo_nc.value.trim();
 if (codigo_nc.value == "") {
     codigo_nc.setAttribute("style", "color: gray; font-size: 14px; border-color: #B22222");
     codigo_nc_error.innerHTML = "Codigo de no conformidad es obligatorio";
     codigo_nc.value = "Codigo";
     codigo_nc_value = false;
 }else{
     if (codigo_nc.value.length > 29){
         codigo_nc.setAttribute("style", "color: black; font-size: 14px; border-color: #B22222");
         codigo_nc_error.innerHTML = "El codigo de la no conformidad es muy largo";
         codigo_nc_value = false;
     }else{
                codigo_nc_error.innerHTML = "";
                codigo_nc.setAttribute("style", "color: black; font-size: 14px");
                codigo_nc_value = true;
   
     }
 }
 
 submit.disabled = !(nombre_grupo_value&& string_grupo_value && registro_nc_value && situacion_nc_value && clausula_nc_value && 
                     requisito_nc_value && declaracion_nc_value && codigo_nc_value);
}










