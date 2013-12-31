/*
 * textboxs y textareas
 * 
 */
accion= document.getElementById("accion");
proceso= document.getElementById("proceso");
responsable= document.getElementById("responsable");
recursos= document.getElementById("recursos");
submit=document.getElementById("submit");

//se definen contadores de textareas
recursos_counter= document.getElementById("recursos_counter");

//se definen los mensajes de error
accion_error= document.getElementById("accion_error");
proceso_error= document.getElementById("proceso_error");
responsable_error= document.getElementById("responsable_error");
recursos_error= document.getElementById("recursos_error");

//se definen las variables de validacion
accion_value= false;
proceso_value= false;
responsable_value= false;
recursos_value= false;

/*
 * se desactiva el boton de submit hasta que se llene correctamente el formulario
 */
submit.disabled = true;

//se inicializan los estilos de los textbox y textareas


if(accion.value=="Accion"){
    accion.setAttribute("style","width:300px; color:gray; font-size: 14px");
}else{
    proceso_value= true;
    responsable_value= true;
    recursos_value= true;   
    accion.setAttribute("style","width:300px; color: black; font-size: 14px; border-color: #B22222"); 
}

if(recursos.value=="Recursos"){
    recursos.setAttribute("style","height: 100px; width:300px; color: gray; font-size: 14px");
}else{
    recursos.setAttribute("style","height: 100px; width:300px; color: black; font-size: 14px");
    cantidad = recursos.value.length;
    recursos_counter.innerHTML= (199 - cantidad).toString();
}

if(proceso.value=="Proceso"){
    proceso.setAttribute("style","width:300px; color: gray; font-size: 14px");    
}else{
    proceso.setAttribute("style","width:300px; color: black; font-size: 14px");
}

if(responsable.value=="Responsable"){
    responsable.setAttribute("style","width:300px; color: gray; font-size: 14px");    
}else{
    responsable.setAttribute("style","width:300px; color: black; font-size: 14px");
}



recursos.onkeydown = function(){
    cantidad = recursos.value.length;
    if (cantidad>199){
        recursos_counter.setAttribute("style", "margin-left: 290px; font-size: 10px; color: #B22222");
    } else{
        recursos_counter.setAttribute("style", "margin-left: 290px; font-size: 10px; color: gray");
    }
    recursos_counter.innerHTML= (199 - cantidad).toString();
};

recursos.onkeypress = function(){
    cantidad = recursos.value.length;
    if (cantidad>199){
        recursos_counter.setAttribute("style", "margin-left: 290px; font-size: 10px; color: #B22222");
    } else{
        recursos_counter.setAttribute("style", "margin-left: 290px; font-size: 10px; color: gray");
    }
    recursos_counter.innerHTML= (199 - cantidad).toString();
};

/*
 * 
 * onclick events
 */


accion.onclick = function() {
    accion.setAttribute("style", "width:300px; color: black; font-size: 14px; border-color: #127ba5");
    accion_error.innerHTML = "";
 if (accion.value == "Accion") {
     accion.value = "";
 }
}

recursos.onclick = function() {
    recursos.setAttribute("style", "height: 100px; width:300px; color: black; font-size: 14px; border-color: #127ba5");
    recursos_error.innerHTML = "";
 if (recursos.value == "Recursos") {
     recursos.value = "";   
 }
}

proceso.onclick = function() {
    proceso_error.innerHTML = "";
    proceso.setAttribute("style", "width:300px; color: black; font-size: 14px; border-color: #127ba5");
 if (proceso.value == "Proceso") {
     proceso.value = "";
     
 }
};

responsable.onclick = function() {
     responsable.setAttribute("style", "width:300px; color: black;font-size: 14px; border-color: #127ba5");
     responsable_error.innerHTML = "";
 if (responsable.value == "Responsable") {
     responsable.value = "";
 }
};

/*
 * onblur events
 * 
 */

accion.onblur = function() {
    accion.value = accion.value.trim();
 if (accion.value == "") {
     accion.setAttribute("style", "width:300px; color: gray; font-size: 14px; border-color: #B22222");
     accion_error.innerHTML = "El titulo de la accion es obligatorio";
     accion.value = "Accion";
     accion_value = false;
 }else{
     if (accion.value.length > 99){
         accion.setAttribute("style", "width:300px; color: black; font-size: 14px; border-color: #B22222");
         accion_error.innerHTML = "El titulo de la accion es muy largo";
         accion_value = false;
     }else{
         accion_error.innerHTML = "";
         accion.setAttribute("style", "width:300px; color: black; font-size: 14px");
         accion_value = true;
    }
 }
  submit.disabled = !(accion_value && proceso_value && recursos_value && responsable_value);
};

recursos.onblur = function() {
    cantidad = recursos.value.length;
    recursos.value = recursos.value.trim();
    minuscula=recursos.value.charAt(0)+"";
    mayuscula=minuscula.toUpperCase();
    recursos.value = mayuscula + recursos.value.substring(1, recursos.value.length);
 if (recursos.value == "") {
     recursos.setAttribute("style", "height: 100px; width:300px; color: gray; font-size: 14px; border-color: #B22222");
     recursos_error.innerHTML = "Especifique los recursos";
     recursos.value = "Recursos";
     recursos_value= false;
     recursos_counter.innerHTML = "199";
 }else{
     if (cantidad > 199){
         recursos.setAttribute("style", "height: 100px; width:300px; color: black; font-size: 14px; border-color: #B22222");
         recursos_error.innerHTML = "Recursos excede el limite de caracteres";
         recursos_value= false;
    }else{
        recursos_error.innerHTML = "";
        recursos.setAttribute("style", "height: 100px; width:300px; color: black; font-size: 14px");
        recursos_value= true;
    }
 }
   submit.disabled = !(accion_value && proceso_value && recursos_value && responsable_value);
};

responsable.onblur = function() {
    responsable.value = responsable.value.trim();
 if (responsable.value == "") {
     responsable.setAttribute("style", "width:300px; color: gray; font-size: 14px; border-color: #127ba5; border-color: #B22222");
     responsable_error.innerHTML = "Indique el responsable";
     responsable.value = "Responsable";
     responsable_value = false;
 }else{
     if (responsable.value.length > 99){
         responsable.setAttribute("style", "width:300px; color: black; font-size: 14px; border-color: #127ba5; border-color: #B22222");
         responsable_error.innerHTML = "El nombre del responsable es muy largo";
         responsable_value = false;
     }else{
        responsable.setAttribute("style", "width:300px; color: black; font-size: 14px");
        responsable_value = true;
    }
 }
   submit.disabled = !(accion_value && proceso_value && recursos_value && responsable_value);
};

proceso.onblur = function() {
    proceso.value = proceso.value.trim();
 if (proceso.value == "") {
     proceso.setAttribute("style", "width:300px; color: gray; font-size: 14px; border-color: #127ba5; border-color: #B22222");
     proceso_error.innerHTML = "Indique el proceso";
     proceso.value = "Proceso";
     proceso_value = false;
 }else{
     if (proceso.value.length > 99){
         proceso.setAttribute("style", "width:300px; color: black; font-size: 14px; border-color: #127ba5; border-color: #B22222");
         proceso_error.innerHTML = "El nombre del proceso es muy largo";
         proceso_value = false;
     }else{
        proceso.setAttribute("style", "width:300px; color: black; font-size: 14px");
        proceso_value = true;
    }
 }
   submit.disabled = !(accion_value && proceso_value && recursos_value && responsable_value);
};

