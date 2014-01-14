/*
 * textboxs y textareas
 * 
 */
nombre_grupo= document.getElementById("nombre_grupo");
miembros_grupo= document.getElementById("string_grupo");
registro_nc= document.getElementById("registro_nc");
situacion_nc= document.getElementById("situacion_nc");
clausula_nc1= document.getElementById("clausula_nc1");
requisito_nc1= document.getElementById("requisito_nc1");
declaracion_nc1= document.getElementById("declaracion_nc1");
codigo_nc1= document.getElementById("codigo_nc1");
clausula_nc2= document.getElementById("clausula_nc2");
requisito_nc2= document.getElementById("requisito_nc2");
declaracion_nc2= document.getElementById("declaracion_nc2");
submit=document.getElementById("submit");





//se definen contadores de textareas
situacion_nc_counter= document.getElementById("situacion_nc_counter");
requisito_nc1_counter= document.getElementById("requisito_nc1_counter");
declaracion_nc1_counter= document.getElementById("declaracion_nc1_counter");
requisito_nc2_counter= document.getElementById("requisito_nc2_counter");
declaracion_nc2_counter= document.getElementById("declaracion_nc2_counter");

//se definen los mensajes de error
nombre_grupo_error = document.getElementById("nombre_grupo_error");
string_grupo_error = document.getElementById("string_grupo_error");
registro_nc_error= document.getElementById("registro_nc_error");
situacion_nc_error= document.getElementById("situacion_nc_error");
clausula_nc1_error= document.getElementById("clausula_nc1_error");
requisito_nc1_error= document.getElementById("requisito_nc1_error");
declaracion_nc1_error= document.getElementById("declaracion_nc1_error");
codigo_nc1_error= document.getElementById("codigo_nc1_error");
clausula_nc2_error= document.getElementById("clausula_nc2_error");
requisito_nc2_error= document.getElementById("requisito_nc2_error");
declaracion_nc2_error= document.getElementById("declaracion_nc2_error");

submit_error=document.getElementById("submit_error");
error_style=document.getElementById("error_style");

nombre_grupo_image = document.getElementById("nombre_grupo_image");
string_grupo_image = document.getElementById("string_grupo_image");
registro_nc_image= document.getElementById("registro_nc_image");
situacion_nc_image= document.getElementById("situacion_nc_image");
clausula_nc1_image= document.getElementById("clausula_nc1_image");
requisito_nc1_image= document.getElementById("requisito_nc1_image");
declaracion_nc1_image= document.getElementById("declaracion_nc1_image");
codigo_nc1_image= document.getElementById("codigo_nc1_image");
clausula_nc2_image= document.getElementById("clausula_nc2_image");
requisito_nc2_image= document.getElementById("requisito_nc2_image");
declaracion_nc2_image= document.getElementById("declaracion_nc2_image");

//Declarando las expresiones regulares para pevenir injection
inject2 = /^\b(ALTER|alter|CREATE|create|DELETE|delete|DROP|drop|EXEC(UTE){0,1}|INSERT( +INTO){0,1}|insert( +into){0,1}|MERGE|merge|SELECT|select|UPDATE|update|UNION( +ALL){0,1})|union( +all){0,1}\b/;
inject = /\w*((\%27)|(\'))((\%6F)|o|O|(\%4F))((\%72)|r|R|(\%52))/;
inject3 = /^"(.*)"|'(.*)'/;

//se definen las variables de validacion
nombre_grupo_value = false;
string_grupo_value = false;
registro_nc_value= false;
situacion_nc_value= false;
codigo_nc1_value= false;

clausula_nc1_value= false;
requisito_nc1_value= false;
declaracion_nc1_value= false;

clausula_nc2_value= false;
requisito_nc2_value= false;
declaracion_nc2_value= false;

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
    
    clausula_nc1_value= true;
    requisito_nc1_value= true;
    declaracion_nc1_value= true;
    codigo_nc1_value= true;
    clausula_nc2_value= true;
    requisito_nc2_value= true;
    declaracion_nc2_value= true;
    
    if(error_style.value=="El grupo ya existe."){
        nombre_grupo.setAttribute("style", "width:500px; color: black; font-size: 14px; border-color: #B22222");
    }else{
        nombre_grupo.setAttribute("style", "width:500px; color: black; font-size: 14px");
    }  
}

if(miembros_grupo.value=="Encargado del Grupo" ){
    miembros_grupo.setAttribute("style","width:500px; color:gray; font-size: 14px");
}else{
    nombre_grupo_value = true;
    registro_nc_value= true;
    situacion_nc_value= true;
    
    clausula_nc1_value= true;
    requisito_nc1_value= true;
    declaracion_nc1_value= true;
    codigo_nc1_value= true;
    clausula_nc2_value= true;
    requisito_nc2_value= true;
    declaracion_nc2_value= true;
    
    if(error_style.value=="Persona no registrada."
            || error_style.value=="Debe ingresar al menos un usuario en el grupo."){
        miembros_grupo.setAttribute("style","width:500px; color:black; font-size: 14px; border-color: #B22222");
    }else{
        miembros_grupo.setAttribute("style","width:500px; color:black; font-size: 14px");
    }
}       

if(registro_nc.value=="12345"){
    registro_nc.setAttribute("style","padding-left: 48px; width:100px; color: gray; font-size: 14px");
}else{
    nombre_grupo_value = true;
    string_grupo_value = true;
    situacion_nc_value= true;
    
    clausula_nc1_value= true;
    requisito_nc1_value= true;
    declaracion_nc1_value= true;
    codigo_nc1_value= true;
    clausula_nc2_value= true;
    requisito_nc2_value= true;
    declaracion_nc2_value= true;
    
    if(error_style.value=="Ya existe una no conformidad con este registro."){
        registro_nc.setAttribute("style","padding-left: 48px; width:100px; color: black; font-size: 14px; border-color: #B22222");
    }else{
        registro_nc.setAttribute("style","padding-left: 48px; width:100px; color: black; font-size: 14px");
    }
}

if(situacion_nc.value=="Describa la no conformidad"){
    situacion_nc.setAttribute("style","height: 100px; width:300px; color: gray; font-size: 14px");
}else{
    situacion_nc.setAttribute("style","height: 100px; width:300px; color: black; font-size: 14px");
    cantidad = situacion_nc.value.length;
    situacion_nc_counter.innerHTML= (4999 - cantidad).toString();
}

if(clausula_nc1.value=="Clausula"){
    clausula_nc1.setAttribute("style","color: gray; font-size: 14px");    
}else{
    clausula_nc1.setAttribute("style","color: black; font-size: 14px");
}

if(clausula_nc2.value=="Clausula"){
    clausula_nc2.setAttribute("style","color: gray; font-size: 14px");    
}else{
    clausula_nc2.setAttribute("style","color: black; font-size: 14px");
}

if(requisito_nc1.value=="Requisito"){
    requisito_nc1.setAttribute("style","height: 100px; width:250px; color: gray; font-size: 14px"); 
}else{
    requisito_nc1.setAttribute("style","height: 100px; width:250px; color: black; font-size: 14px");
    cantidad = requisito_nc1.value.length;
    requisito_nc1_counter.innerHTML= (4999 - cantidad).toString();
}

if(requisito_nc2.value=="Requisito"){
    requisito_nc2.setAttribute("style","height: 100px; width:250px; color: gray; font-size: 14px"); 
}else{
    requisito_nc2.setAttribute("style","height: 100px; width:250px; color: black; font-size: 14px");
    cantidad = requisito_nc2.value.length;
    requisito_nc2_counter.innerHTML= (4999 - cantidad).toString();
}

if(declaracion_nc1.value=="Declaraci"+'\u00f3'+"n"){
    declaracion_nc1.setAttribute("style","height: 100px; width:250px; color: gray; font-size: 14px");   
}else{
    declaracion_nc1.setAttribute("style","height: 100px; width:250px; color: black; font-size: 14px");
    cantidad = declaracion_nc1.value.length;
    declaracion_nc1_counter.innerHTML= (4999 - cantidad).toString();
}

if(declaracion_nc2.value=="Declaraci"+'\u00f3'+"n"){
    declaracion_nc2.setAttribute("style","height: 100px; width:250px; color: gray; font-size: 14px");   
}else{
    declaracion_nc2.setAttribute("style","height: 100px; width:250px; color: black; font-size: 14px");
    cantidad = declaracion_nc2.value.length;
    declaracion_nc2_counter.innerHTML= (4999 - cantidad).toString();
}

if(codigo_nc1.value=="C"+'\u00f3'+"digo"){
    codigo_nc1.setAttribute("style","color: gray; font-size: 14px");      
}else{
    codigo_nc1.setAttribute("style","color: black; font-size: 14px");  
}


norma1 = (clausula_nc1_value && requisito_nc1_value && declaracion_nc1_value);
norma2 = (clausula_nc2_value && requisito_nc2_value && declaracion_nc2_value);


situacion_nc.onkeydown = function(){
    cantidad = situacion_nc.value.length;
    if (cantidad>4999){
        situacion_nc_counter.setAttribute("style", "margin-left: 290px; font-size: 10px; color: #B22222");
    } else{
        situacion_nc_counter.setAttribute("style", "margin-left: 290px; font-size: 10px; color: gray");
    }
    situacion_nc_counter.innerHTML= (4999 - cantidad).toString();
};

situacion_nc.onkeypress = function(){
    cantidad = situacion_nc.value.length;
    if (cantidad>4999){
        situacion_nc_counter.setAttribute("style", "margin-left: 290px; font-size: 10px; color: #B22222");
    } else{
        situacion_nc_counter.setAttribute("style", "margin-left: 290px; font-size: 10px; color: gray");
    }
    situacion_nc_counter.innerHTML= (4999 - cantidad).toString();
};

requisito_nc1.onkeydown = function(){
    cantidad = requisito_nc1.value.length;
     if (cantidad>4999){
        requisito_nc1_counter.setAttribute("style", "margin-left: 220px; font-size: 10px; color: #B22222");
    } else{
        requisito_nc1_counter.setAttribute("style", "margin-left: 220px; font-size: 10px; color: gray");
    }
    requisito_nc1_counter.innerHTML= (4999 - cantidad).toString();
};

requisito_nc1.onkeypress = function(){
    cantidad = requisito_nc1.value.length;
     if (cantidad>4999){
        requisito_nc1_counter.setAttribute("style", "margin-left: 220px; font-size: 10px; color: #B22222");
    } else{
        requisito_nc1_counter.setAttribute("style", "margin-left: 220px; font-size: 10px; color: gray");
    }
    requisito_nc1_counter.innerHTML= (4999 - cantidad).toString();
};

requisito_nc2.onkeydown = function(){
    cantidad = requisito_nc2.value.length;
     if (cantidad>4999){
        requisito_nc2_counter.setAttribute("style", "margin-left: 220px; font-size: 10px; color: #B22222");
    } else{
        requisito_nc2_counter.setAttribute("style", "margin-left: 220px; font-size: 10px; color: gray");
    }
    requisito_nc2_counter.innerHTML= (4999 - cantidad).toString();
};

requisito_nc2.onkeypress = function(){
    cantidad = requisito_nc2.value.length;
     if (cantidad>4999){
        requisito_nc2_counter.setAttribute("style", "margin-left: 220px; font-size: 10px; color: #B22222");
    } else{
        requisito_nc2_counter.setAttribute("style", "margin-left: 220px; font-size: 10px; color: gray");
    }
    requisito_nc2_counter.innerHTML= (4999 - cantidad).toString();
};

declaracion_nc1.onkeydown = function(){
    cantidad = declaracion_nc1.value.length;
    if (cantidad > 4999){
        declaracion_nc1_counter.setAttribute("style", "margin-left: 220px; font-size: 10px; color: #B22222");
    } else{
        declaracion_nc1_counter.setAttribute("style", "margin-left: 220px; font-size: 10px; color: gray");
    }
    declaracion_nc1_counter.innerHTML= (4999 - cantidad).toString();
};

declaracion_nc1.onkeypress = function(){
    cantidad = declaracion_nc1.value.length;
    if (cantidad > 4999){
        declaracion_nc1_counter.setAttribute("style", "margin-left: 220px; font-size: 10px; color: #B22222");
    } else{
        declaracion_nc1_counter.setAttribute("style", "margin-left: 220px; font-size: 10px; color: gray");
    }
    declaracion_nc1_counter.innerHTML= (4999 - cantidad).toString();
};

declaracion_nc2.onkeydown = function(){
    cantidad = declaracion_nc2.value.length;
    if (cantidad > 4999){
        declaracion_nc2_counter.setAttribute("style", "margin-left: 220px; font-size: 10px; color: #B22222");
    } else{
        declaracion_nc2_counter.setAttribute("style", "margin-left: 220px; font-size: 10px; color: gray");
    }
    declaracion_nc2_counter.innerHTML= (4999 - cantidad).toString();
};

declaracion_nc2.onkeypress = function(){
    cantidad = declaracion_nc2.value.length;
    if (cantidad > 4999){
        declaracion_nc2_counter.setAttribute("style", "margin-left: 220px; font-size: 10px; color: #B22222");
    } else{
        declaracion_nc2_counter.setAttribute("style", "margin-left: 220px; font-size: 10px; color: gray");
    }
    declaracion_nc2_counter.innerHTML= (4999 - cantidad).toString();
};

/*
 * 
 * onclick events
 */

nombre_grupo.onfocus = function() {
    nombre_grupo.setAttribute("style", "width:500px; color:black; font-size: 14px; border-color: #127ba5");
    nombre_grupo_error.innerHTML = "";
    nombre_grupo_image.setAttribute("src", "images/empty.png");
 if (nombre_grupo.value == "Nombre del Grupo") {
     nombre_grupo.value = "";
 }
};

string_grupo.onfocus = function() {
    string_grupo_error.innerHTML = "";
    string_grupo_image.setAttribute("src", "images/empty.png");
    string_grupo.setAttribute("style", "width:500px; color:black; font-size: 14px; border-color: #127ba5");
    if (string_grupo.value == "Encargado del Grupo") {
        string_grupo.value = "";
    }
};

registro_nc.onfocus = function() {
    registro_nc.setAttribute("style", "padding-left: 48px; width:100px; color: black; font-size: 14px; border-color: #127ba5");
    registro_nc_error.innerHTML = "";
    registro_nc_image.setAttribute("src", "images/empty.png");
    if (registro_nc.value == "12345") {
        registro_nc.value = "";   
    }
};

situacion_nc.onfocus = function() {
    situacion_nc.setAttribute("style", "height: 100px; width:300px; color: black; font-size: 14px; border-color: #127ba5");
    situacion_nc_error.innerHTML = "";
    situacion_nc_image.setAttribute("src", "images/empty.png");
 if (situacion_nc.value == "Describa la no conformidad") {
     situacion_nc.value = "";   
 }
};

clausula_nc1.onfocus = function() {
    clausula_nc1_error.innerHTML = "";
    clausula_nc1_image.setAttribute("src", "images/empty.png");
    clausula_nc1.setAttribute("style", "color: black; font-size: 14px; border-color: #127ba5");
 if (clausula_nc1.value == "Clausula") {
     clausula_nc1.value = "";
     
 }
};

requisito_nc1.onfocus = function() {
     requisito_nc1.setAttribute("style", "height: 100px; width:250px; color: black;font-size: 14px; border-color: #127ba5");
     requisito_nc1_error.innerHTML = "";
     requisito_nc1_image.setAttribute("src", "images/empty.png");
 if (requisito_nc1.value == "Requisito") {
     requisito_nc1.value = "";
 }
};

declaracion_nc1.onfocus = function() {
     declaracion_nc1.setAttribute("style", "height: 100px; width:250px; color: black;font-size: 14px; border-color: #127ba5");
     declaracion_nc1_error.innerHTML = "";
 if (declaracion_nc1.value == "Declaraci"+'\u00f3'+"n") {
     declaracion_nc1.value = "";

 }
};

codigo_nc1.onfocus = function() {
     codigo_nc1.setAttribute("style", "color: black; font-size: 14px; border-color: #127ba5");
     codigo_nc1_error.innerHTML = "";
     codigo_nc1_image.setAttribute("src", "images/empty.png");
 if (codigo_nc1.value == "C"+'\u00f3'+"digo") {
     codigo_nc1.value = ""; 
 }
};

clausula_nc2.onfocus = function() {
    clausula_nc2_error.innerHTML = "";
    clausula_nc2_image.setAttribute("src", "images/empty.png");
    clausula_nc2.setAttribute("style", "color: black; font-size: 14px; border-color: #127ba5");
 if (clausula_nc2.value == "Clausula") {
     clausula_nc2.value = "";
     
 }
};

requisito_nc2.onfocus = function() {
     requisito_nc2.setAttribute("style", "height: 100px; width:250px; color: black;font-size: 14px; border-color: #127ba5");
     requisito_nc2_error.innerHTML = "";
     requisito_nc2_image.setAttribute("src", "images/empty.png");
 if (requisito_nc2.value == "Requisito") {
     requisito_nc2.value = "";
 }
};

declaracion_nc2.onfocus = function() {
     declaracion_nc2.setAttribute("style", "height: 100px; width:250px; color: black;font-size: 14px; border-color: #127ba5");
     declaracion_nc2_error.innerHTML = "";
     declaracion_nc2_image.setAttribute("src", "images/empty.png");
 if (declaracion_nc2.value == "Declaraci"+'\u00f3'+"n") {
     declaracion_nc2.value = "";

 }
};

function evaluarCampos(){
  return  !(nombre_grupo_value&& string_grupo_value && registro_nc_value && situacion_nc_value &&
             codigo_nc1_value && (norma1 || norma2));
}

function evaluarNorma1(){
    
    return(declaracion_nc1_value && requisito_nc1_value && clausula_nc1_value);
}

function evaluarNorma2(){
    
    return(declaracion_nc2_value && requisito_nc2_value && clausula_nc2_value);
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
     nombre_grupo_image.setAttribute("src", "images/error.png");
     nombre_grupo.value = "Nombre del Grupo";
     nombre_grupo_value = false;
 }else{
     var inject2 = /^\b(ALTER|alter|CREATE|create|DELETE|delete|DROP|drop|EXEC(UTE){0,1}|INSERT( +INTO){0,1}|insert( +into){0,1}|MERGE|merge|SELECT|select|UPDATE|update|UNION( +ALL){0,1})|union( +all){0,1}\b/;
var inject = /\w*((\%27)|(\'))((\%6F)|o|O|(\%4F))((\%72)|r|R|(\%52))/;
var inject3 = /^"(.*)"|'(.*)'/;
     if (nombre_grupo.value.length > 29){
         nombre_grupo.setAttribute("style", "width:500px; color: black; font-size: 14px; border-color: #B22222");
         nombre_grupo_error.innerHTML = "El nombre del grupo es muy largo";
         nombre_grupo_image.setAttribute("src","images/error.png");
         nombre_grupo_value = false;
    }else if(inject2.test(nombre_grupo.value) || inject.test(nombre_grupo.value) || inject3.test(nombre_grupo.value)){
         nombre_grupo.setAttribute("style", "width:300px; color: black; font-size: 14px; border-color: #B22222");
         nombre_grupo_error.innerHTML = "Formato invalido para el nombre del grupo";
         nombre_grupo_image.setAttribute("src","images/error.png");
         nombre_grupo_value = false;
     }else{
        nombre_grupo.setAttribute("style", "width:500px; color:black; font-size: 14px");
        nombre_grupo_image.setAttribute("src","images/checked.png");
        nombre_grupo_value = true;
    }
 }
  submit.disabled = evaluarCampos();
};

string_grupo.onblur = function() {
 if (string_grupo.value == "") {
     string_grupo.setAttribute("style", "width:500px; color: gray; font-size: 14px; border-color: #B22222");
     string_grupo_error.innerHTML = "El grupo debe estar formado por al menos una persona";
     string_grupo.value = "Encargado del Grupo";
     string_grupo_image.setAttribute("src", "images/error.png");
     string_grupo_value = false;
 }else{
    if(inject2.test(string_grupo.value) || inject.test(string_grupo.value) || inject3.test(string_grupo.value)){
         string_grupo.setAttribute("style", "width:300px; color: black; font-size: 14px; border-color: #B22222");
         string_grupo_error.innerHTML = "Formato invalido para los integrantes del grupo";
         string_grupo_image.setAttribute("src", "images/error.png");
         string_grupo_value = false;
     } else {
     string_grupo.setAttribute("style", "width:500px; color:black; font-size: 14px");
     string_grupo_image.setAttribute("src", "images/checked.png");
     string_grupo_value = true;
 }
 }
 submit.disabled = evaluarCampos();
};

registro_nc.onblur = function() {
    registro_nc.value = registro_nc.value.trim();
 if (registro_nc.value == "") {
     registro_nc.setAttribute("style", "padding-left: 48px; width:100px; color: gray; font-size: 14px; border-color: #B22222");
     registro_nc_error.innerHTML = "El numero de registro es obligatorio";
     registro_nc.value = "12345";
     registro_nc_image.setAttribute("src", "images/error.png");
     registro_nc_value = false;
 }else{
     
     if (registro_nc.value.length > 19){
         registro_nc.setAttribute("style", "padding-left: 48px; width:100px; color: black; font-size: 14px; border-color: #B22222");
         registro_nc_error.innerHTML = "El numero de registro es muy largo";
         registro_nc_image.setAttribute("src", "images/error.png");
         registro_nc_value = false;
     }else{
            registro_nc_error.innerHTML = "";
            registro_nc.setAttribute("style", "padding-left: 48px; width:100px; color: black; font-size: 14px");
            registro_nc_image.setAttribute("src", "images/checked.png");
            registro_nc_value = true;
     }
    }
  submit.disabled = evaluarCampos();
};

situacion_nc.onblur = function() {
    cantidad = situacion_nc.value.length;
    situacion_nc.value = situacion_nc.value.trim();
    minuscula=situacion_nc.value.charAt(0)+"";
    mayuscula=minuscula.toUpperCase();
    situacion_nc.value = mayuscula + situacion_nc.value.substring(1, situacion_nc.value.length);
 if (situacion_nc.value == "") {
     situacion_nc.setAttribute("style", "height: 100px; width:300px; color: gray; font-size: 14px; border-color: #B22222");
     situacion_nc_error.innerHTML = "Debe describir la no conformidad";
     situacion_nc.value = "Describa la no conformidad";
     situacion_nc_image.setAttribute("src", "images/error.png");
     situacion_nc_value= false;
     situacion_nc_counter.innerHTML = "4999";
 }else{
     if (cantidad > 4999){
         situacion_nc.setAttribute("style", "height: 100px; width:300px; color: black; font-size: 14px; border-color: #B22222");
         situacion_nc_error.innerHTML = "Situación excede el limite de caracteres";
         situacion_nc_image.setAttribute("src", "images/error.png");
         situacion_nc_value= false;
     }else if(inject2.test(situacion_nc.value) || inject.test(situacion_nc.value) || inject3.test(situacion_nc.value)){
         situacion_nc.setAttribute("style", "width:300px; color: black; font-size: 14px; border-color: #B22222");
         situacion_nc.innerHTML = "Formato invalido para la situación de la no conformidad";
         situacion_nc_image.setAttribute("src", "images/error.png");
         situacion_nc_value = false;
    }else{
        situacion_nc_error.innerHTML = "";
        situacion_nc.setAttribute("style", "height: 100px; width:300px; color: black; font-size: 14px");
        situacion_nc_image.setAttribute("src", "images/checked.png");
        situacion_nc_value= true;
    }
 }
  submit.disabled = evaluarCampos();
};

clausula_nc1.onblur = function() {
    clausula_nc1.value = clausula_nc1.value.trim();
 if (clausula_nc1.value == "") {
     clausula_nc1.setAttribute("style", "color: gray; font-size: 14px; border-color: #127ba5; border-color: #B22222");
     clausula_nc1_error.innerHTML = "Indique la clausula";
     clausula_nc1.value = "Clausula";
     clausula_nc1_image.setAttribute("src", "images/error.png");
     clausula_nc1_value = false;
 }else{
     if (clausula_nc1.value.length > 29){
         clausula_nc1.setAttribute("style", "color: black; font-size: 14px; border-color: #127ba5; border-color: #B22222");
         clausula_nc1_error.innerHTML = "Clausula excede longitud maxima";
         clausula_nc1_image.setAttribute("src", "images/error.png");
         clausula_nc1_value = false;
     }else if(inject2.test(clausula_nc1.value) || inject.test(clausula_nc1.value) || inject3.test(clausula_nc1.value)){
         clausula_nc1.setAttribute("style", "width:300px; color: black; font-size: 14px; border-color: #B22222");
         clausula_nc1_error.innerHTML = "Formato invalido para la clausula de la no confomidad";
         clausula_nc1_image.setAttribute("src", "images/error.png");
         clausula_nc1_value = false;
     }else{
        clausula_nc1.setAttribute("style", "color: black; font-size: 14px");
        clausula_nc1_image.setAttribute("src", "images/checked.png");
        clausula_nc1_value = true;
    }
 }
 norma1 = evaluarNorma1();
 submit.disabled = evaluarCampos();
};

requisito_nc1.onblur = function() {
    requisito_nc1.value = requisito_nc1.value.trim();
    cantidad = requisito_nc1.value.length;
    minuscula= requisito_nc1.value.charAt(0)+"";
    mayuscula= minuscula.toUpperCase();
    requisito_nc1.value = mayuscula + requisito_nc1.value.substring(1, requisito_nc1.value.length);
 if (requisito_nc1.value == "") {
     requisito_nc1.setAttribute("style", "height: 100px; width:250px; color: gray;font-size: 14px; border-color: #B22222");
     requisito_nc1_error.innerHTML = "Requisito es obligatorio";
     requisito_nc1.value = "Requisito";
     requisito_nc1_image.setAttribute("src", "images/error.png");
     requisito_nc1_value = false;
     requisito_nc1_counter.innerHTML = "4999";
 }else{
     if (cantidad > 4999){
         requisito_nc1.setAttribute("style", "height: 100px; width:250px; color: black;font-size: 14px; border-color: #B22222");
         requisito_nc1_error.innerHTML = "Requisito excede el limite de caracteres";
         requisito_nc1_image.setAttribute("src", "images/error.png");
         requisito_nc1_value= false;
                           }else if(inject2.test(requisito_nc1.value) || inject.test(requisito_nc1.value) || inject3.test(requisito_nc1.value)){
         requisito_nc1.setAttribute("style", "width:300px; color: black; font-size: 14px; border-color: #B22222");
         requisito_nc1_error.innerHTML = "Formato invalido para el requisito de la no conformidad";
         requisito_nc1_image.setAttribute("src", "images/error.png");
         requisito_nc1_value = false;
    }else{
        requisito_nc1_error.innerHTML = "";
        requisito_nc1.setAttribute("style", "height: 100px; width:250px; color: black;font-size: 14px");
        requisito_nc1_image.setAttribute("src", "images/checked.png");
        requisito_nc1_value = true;
    }
 }
 norma1 = evaluarNorma1();
  submit.disabled = evaluarCampos();
};

declaracion_nc1.onblur = function() {
    declaracion_nc1.value = declaracion_nc1.value.trim();
    cantidad = declaracion_nc1.value.length;
    minuscula=declaracion_nc1.value.charAt(0)+"";
    mayuscula=minuscula.toUpperCase();
    declaracion_nc1.value = mayuscula + declaracion_nc1.value.substring(1, declaracion_nc1.value.length);
 if (declaracion_nc1.value == "") {
    declaracion_nc1.setAttribute("style", "height: 100px; width:250px; color: gray;font-size: 14px; border-color: #B22222");
    declaracion_nc1_error.innerHTML = "Declaraci"+'\u00f3'+"n de la no conformidad obligatoria";
    declaracion_nc1.value = "Declaraci"+'\u00f3'+"n";
    declaracion_nc1_image.setAttribute("src", "images/error.png");
    declaracion_nc1_value = false;
    declaracion_nc1_counter.innerHTML = "4999";
 }else{
     if (cantidad > 4999){
         declaracion_nc1.setAttribute("style", "height: 100px; width:250px; color: black;font-size: 14px; border-color: #B22222");
         declaracion_nc1_error.innerHTML = "Declaraci"+'\u00f3'+"n excede el limite de caracteres";
         declaracion_nc1_image.setAttribute("src", "images/error.png");
         declaracion_nc1_value= false;
                           }else if(inject2.test(declaracion_nc1.value) || inject.test(declaracion_nc1.value) || inject3.test(declaracion_nc1.value)){
         declaracion_nc1.setAttribute("style", "width:300px; color: black; font-size: 14px; border-color: #B22222");
         declaracion_nc1_error.innerHTML = "Formato invalido para la declaraci"+'\u00f3'+"n de la no conformidad.";
         declaracion_nc1_image.setAttribute("src", "images/error.png");
         declaracion_nc1_value = false;
    }else{
        declaracion_nc1.setAttribute("style", "height: 100px; width:250px; color: black;font-size: 14px");
        declaracion_nc1_error.innerHTML = "";
        declaracion_nc1_image.setAttribute("src", "images/checked.png");
        declaracion_nc1_value = true;
    }
 }
 norma1 = evaluarNorma1();
 submit.disabled = evaluarCampos();
};

codigo_nc1.onblur = function() {
    codigo_nc1.value = codigo_nc1.value.trim();
 if (codigo_nc1.value == "") {
     codigo_nc1.setAttribute("style", "color: gray; font-size: 14px; border-color: #B22222");
     codigo_nc1_error.innerHTML = "C"+'\u00f3'+"digo de no conformidad es obligatorio";
     codigo_nc1.value = "C"+'\u00f3'+"digo";
     codigo_nc1_image.setAttribute("src", "images/error.png");
     codigo_nc1_value = false;
 }else{
     if (codigo_nc1.value.length > 29){
         codigo_nc1.setAttribute("style", "color: black; font-size: 14px; border-color: #B22222");
         codigo_nc1_error.innerHTML = "El c"+'\u00f3'+"digo de la no conformidad es muy largo";
         codigo_nc1_image.setAttribute("src", "images/error.png");
         codigo_nc1_value = false;
                           }else if(inject2.test(codigo_nc1.value) || inject.test(codigo_nc1.value) || inject3.test(codigo_nc1.value)){
         codigo_nc1.setAttribute("style", "width:300px; color: black; font-size: 14px; border-color: #B22222");
         codigo_nc1_error.innerHTML = "Formato invalido para el c"+'\u00f3'+"digo de la no conformidad";
         codigo_nc1_image.setAttribute("src", "images/error.png");
         codigo_nc1_value = false;
     }else{
                codigo_nc1_error.innerHTML = "";
                codigo_nc1.setAttribute("style", "color: black; font-size: 14px");
                codigo_nc1_image.setAttribute("src", "images/checked.png");
                codigo_nc1_value = true;
   
     }
 }
 
 submit.disabled = evaluarCampos();
};

clausula_nc2.onblur = function() {
    clausula_nc2.value = clausula_nc2.value.trim();
 if (clausula_nc2.value == "") {
     clausula_nc2.setAttribute("style", "color: gray; font-size: 14px; border-color: #127ba5; border-color: #B22222");
     clausula_nc2_error.innerHTML = "Indique la clausula";
     clausula_nc2.value = "Clausula";
     clausula_nc2_image.setAttribute("src", "images/error.png");
     clausula_nc2_value = false;
 }else{
     if (clausula_nc2.value.length > 29){
         clausula_nc2.setAttribute("style", "color: black; font-size: 14px; border-color: #127ba5; border-color: #B22222");
         clausula_nc2_error.innerHTML = "Clausula excede longitud maxima";
         clausula_nc2_image.setAttribute("src", "images/error.png");
         clausula_nc2_value = false;
                           }else if(inject2.test(clausula_nc2.value) || inject.test(clausula_nc2.value) || inject3.test(clausula_nc2.value)){
         clausula_nc2.setAttribute("style", "width:300px; color: black; font-size: 14px; border-color: #B22222");
         clausula_nc2_error.innerHTML = "Formato invalido para la clausula de la no conformidad";
         clausula_nc2_image.setAttribute("src", "images/error.png");
         clausula_nc2_value = false;
     }else{
        clausula_nc2.setAttribute("style", "color: black; font-size: 14px");
        clausula_nc2_image.setAttribute("src", "images/checked.png");
        clausula_nc2_value = true;
    }
 }
 norma2 = evaluarNorma2();
 submit.disabled = evaluarCampos();
};

requisito_nc2.onblur = function() {
    requisito_nc2.value = requisito_nc2.value.trim();
    cantidad = requisito_nc2.value.length;
    minuscula= requisito_nc2.value.charAt(0)+"";
    mayuscula= minuscula.toUpperCase();
    requisito_nc2.value = mayuscula + requisito_nc2.value.substring(1, requisito_nc2.value.length);
 if (requisito_nc2.value == "") {
     requisito_nc2.setAttribute("style", "height: 100px; width:250px; color: gray;font-size: 14px; border-color: #B22222");
     requisito_nc2_error.innerHTML = "Requisito es obligatorio";
     requisito_nc2.value = "Requisito";
     requisito_nc2_image.setAttribute("src", "images/error.png");
     requisito_nc2_value = false;
     requisito_nc2_counter.innerHTML = "4999";
 }else{
     if (cantidad > 4999){
         requisito_nc2.setAttribute("style", "height: 100px; width:250px; color: black;font-size: 14px; border-color: #B22222");
         requisito_nc2_error.innerHTML = "Requisito excede el limite de caracteres";
         requisito_nc2_image.setAttribute("src", "images/error.png");
         requisito_nc2_value= false;
                           }else if(inject2.test(requisito_nc2.value) || inject.test(requisito_nc2.value) || inject3.test(requisito_nc2.value)){
         requisito_nc2.setAttribute("style", "width:300px; color: black; font-size: 14px; border-color: #B22222");
         requisito_nc2_error.innerHTML = "Formato invalido para el registro de la no conformidad";
         requisito_nc2_image.setAttribute("src", "images/error.png");
         requisito_nc2_value = false;
    }else{
        requisito_nc2_error.innerHTML = "";
        requisito_nc2.setAttribute("style", "height: 100px; width:250px; color: black;font-size: 14px");
        requisito_nc2_image.setAttribute("src", "images/checked.png");
        requisito_nc2_value = true;
    }
 }
 norma2 = evaluarNorma2();
  submit.disabled = evaluarCampos();
};

declaracion_nc2.onblur = function() {
    declaracion_nc2.value = declaracion_nc2.value.trim();
    cantidad = declaracion_nc2.value.length;
    minuscula=declaracion_nc2.value.charAt(0)+"";
    mayuscula=minuscula.toUpperCase();
    declaracion_nc2.value = mayuscula + declaracion_nc2.value.substring(1, declaracion_nc2.value.length);
 if (declaracion_nc2.value == "") {
    declaracion_nc2.setAttribute("style", "height: 100px; width:250px; color: gray;font-size: 14px; border-color: #B22222");
    declaracion_nc2_error.innerHTML = "Declaraci"+'\u00f3'+"n de la no conformidad obligatoria";
    declaracion_nc2.value = "Declaraci"+'\u00f3'+"n";
    declaracion_nc2_image.setAttribute("src", "images/error.png");
    declaracion_nc2_value = false;
    declaracion_nc2_counter.innerHTML = "4999";
 }else{
     if (cantidad > 4999){
         declaracion_nc2.setAttribute("style", "height: 100px; width:250px; color: black;font-size: 14px; border-color: #B22222");
         declaracion_nc2_error.innerHTML = "Declaraci"+'\u00f3'+"n excede el limite de caracteres";
         declaracion_nc2_image.setAttribute("src", "images/error.png");
         declaracion_nc2_value= false;
                           }else if(inject2.test(declaracion_nc2.value) || inject.test(declaracion_nc2.value) || inject3.test(declaracion_nc2.value)){
         declaracion_nc2.setAttribute("style", "width:300px; color: black; font-size: 14px; border-color: #B22222");
         declaracion_nc2_error.innerHTML = "Formato invalido para la declaraci"+'\u00f3'+"n de la no conformidad";
         clausula_nc2_image.setAttribute("src", "images/error.png");
         declaracion_nc2_value = false;
    }else{
        declaracion_nc2.setAttribute("style", "height: 100px; width:250px; color: black;font-size: 14px");
        declaracion_nc2_error.innerHTML = "";
        declaracion_nc2_image.setAttribute("src", "images/checked.png");
        declaracion_nc2_value = true;
    }
 }
 norma2 = evaluarNorma2();
 submit.disabled = evaluarCampos();
};










