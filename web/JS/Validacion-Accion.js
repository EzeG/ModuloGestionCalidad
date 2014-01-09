/*
 * textboxs y textareas
 * 
 */
accion= document.getElementById("accion");
proceso= document.getElementById("proceso");
responsable= document.getElementById("responsable");
recursos= document.getElementById("recursos");
fechainicioinput = document.getElementById("fechainicioinput");
fechafinalinput = document.getElementById("fechafinalinput");
submit=document.getElementById("submit");

//se definen contadores de textareas
recursos_counter= document.getElementById("recursos_counter");

//se definen los mensajes de error
accion_error= document.getElementById("accion_error");
proceso_error= document.getElementById("proceso_error");
responsable_error= document.getElementById("responsable_error");
recursos_error= document.getElementById("recursos_error");
fechainicioinput_error = document.getElementById("fechainicioinput_error");
fechafinalinput_error = document.getElementById("fechafinalinput_error");
//se definen las variables de validacion
accion_value= false;
proceso_value= false;
responsable_value= true;
recursos_value= true;
fechainicioinput_value = false;
fechafinalinput_value = false;

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


accion.onfocus = function() {
    accion.setAttribute("style", "width:300px; color: black; font-size: 14px; border-color: #127ba5");
    accion_error.innerHTML = "";
 if (accion.value == "Accion") {
     accion.value = "";
 }
}

recursos.onfocus = function() {
    recursos.setAttribute("style", "height: 100px; width:300px; color: black; font-size: 14px; border-color: #127ba5");
    recursos_error.innerHTML = "";
 if (recursos.value == "Recursos") {
     recursos.value = "";   
 }
}

proceso.onfocus = function() {
    proceso_error.innerHTML = "";
    proceso.setAttribute("style", "width:300px; color: black; font-size: 14px; border-color: #127ba5");
 if (proceso.value == "Proceso") {
     proceso.value = "";
     
 }
};


fechainicioinput.onfocus = function() {
     fechainicioinput.setAttribute("style", "width:300px; color: black;font-size: 14px; border-color: #127ba5");
     fechainicioinput_error.innerHTML = "";
 if (fechainicioinput.value == "dd-mm-yyyy") {
     fechainicioinput.value = "";
 }
};

fechafinalinput.onfocus = function() {
     fechafinalinput.setAttribute("style", "width:300px; color: black;font-size: 14px; border-color: #127ba5");
     fechafinalinput_error.innerHTML = "";
 if (fechafinalinput.value == "dd-mm-yyyy") {
     fechafinalinput.value = "";
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
     var inject2 = /^\b(ALTER|alter|CREATE|create|DELETE|delete|DROP|drop|EXEC(UTE){0,1}|INSERT( +INTO){0,1}|insert( +into){0,1}|MERGE|merge|SELECT|select|UPDATE|update|UNION( +ALL){0,1})|union( +all){0,1}\b/;
     var inject = /\w*((\%27)|(\'))((\%6F)|o|O|(\%4F))((\%72)|r|R|(\%52))/;
     var inject3 = /^"(.*)"|'(.*)'/;
        if (accion.value.length > 99){
         accion.setAttribute("style", "width:300px; color: black; font-size: 14px; border-color: #B22222");
         accion_error.innerHTML = "El titulo de la accion es muy largo";
         accion_value = false;
         
     
     }else if(inject2.test(accion.value) || inject.test(accion.value) || inject3.test(accion.value)){
         accion.setAttribute("style", "width:300px; color: black; font-size: 14px; border-color: #B22222");
         accion_error.innerHTML = "Formato invalido para el titulo de la accion";
         accion_value = false;
     
     }else{
         accion_error.innerHTML = "";
         accion.setAttribute("style", "width:300px; color: black; font-size: 14px");
         accion_value = true;
    }
 }
  submit.disabled = !(accion_value && proceso_value && recursos_value && responsable_value && fechafinalinput_value && fechainicioinput_value);
};

recursos.onblur = function() {
    cantidad = recursos.value.length;
    recursos.value = recursos.value.trim();
    minuscula=recursos.value.charAt(0)+"";
    mayuscula=minuscula.toUpperCase();
    recursos.value = mayuscula + recursos.value.substring(1, recursos.value.length);
     var inject2 = /^\b(ALTER|alter|CREATE|create|DELETE|delete|DROP|drop|EXEC(UTE){0,1}|INSERT( +INTO){0,1}|insert( +into){0,1}|MERGE|merge|SELECT|select|UPDATE|update|UNION( +ALL){0,1})|union( +all){0,1}\b/;
     var inject = /\w*((\%27)|(\'))((\%6F)|o|O|(\%4F))((\%72)|r|R|(\%52))/;
     var inject3 = /^"(.*)"|'(.*)'/;
     if (cantidad > 199){
         recursos.setAttribute("style", "height: 100px; width:300px; color: black; font-size: 14px; border-color: #B22222");
         recursos_error.innerHTML = "Recursos excede el limite de caracteres";
         recursos_value= false;
         }else if(inject2.test(recursos.value) || inject.test(recursos.value) || inject3.test(recursos.value)){
         recursos.setAttribute("style", "width:300px; color: black; font-size: 14px; border-color: #B22222");
         recursos_error.innerHTML = "Formato invalido para los recursos";
         recursos_value = false;
    }else{
        recursos_error.innerHTML = "";
        recursos.setAttribute("style", "height: 100px; width:300px; color: black; font-size: 14px");
        recursos_value= true;
    }
 
   submit.disabled = !(accion_value && proceso_value && recursos_value && responsable_value && fechafinalinput_value && fechainicioinput_value);
};



proceso.onblur = function() {
    proceso.value = proceso.value.trim();
 if (proceso.value == "") {
     proceso.setAttribute("style", "width:300px; color: gray; font-size: 14px; border-color: #127ba5; border-color: #B22222");
     proceso_error.innerHTML = "Indique el proceso";
     proceso.value = "Proceso";
     proceso_value = false;
 }else{
          var inject2 = /^\b(ALTER|alter|CREATE|create|DELETE|delete|DROP|drop|EXEC(UTE){0,1}|INSERT( +INTO){0,1}|insert( +into){0,1}|MERGE|merge|SELECT|select|UPDATE|update|UNION( +ALL){0,1})|union( +all){0,1}\b/;
     var inject = /\w*((\%27)|(\'))((\%6F)|o|O|(\%4F))((\%72)|r|R|(\%52))/;
     var inject3 = /^"(.*)"|'(.*)'/;
     if (proceso.value.length > 99){
         proceso.setAttribute("style", "width:300px; color: black; font-size: 14px; border-color: #127ba5; border-color: #B22222");
         proceso_error.innerHTML = "El nombre del proceso es muy largo";
         proceso_value = false;
         }else if(inject2.test(proceso.value) || inject.test(proceso.value) || inject3.test(proceso.value)){
         proceso.setAttribute("style", "width:300px; color: black; font-size: 14px; border-color: #B22222");
         proceso_error.innerHTML = "Formato invalido para el proceso";
         proceso_value = false;
     }else{
        proceso.setAttribute("style", "width:300px; color: black; font-size: 14px");
        proceso_value = true;
    }
 }
   submit.disabled = !(accion_value && proceso_value && recursos_value && fechafinalinput_value && fechainicioinput_value);
};

fechainicioinput.onblur = function() {
    fechainicioinput.value = fechainicioinput.value.trim();
 if (fechainicioinput.value == "") {
     fechainicioinput.setAttribute("style", "width:300px; color: gray; font-size: 14px; border-color: #127ba5; border-color: #B22222");
     fechainicioinput_error.innerHTML = "Indique fecha de inicio";
     fechainicioinput.value = "dd-mm-yyyy";
     fechainicioinput_value = false;
 }else{
     var dateReg = /^([0-2][0-9]|3[0-1])-(0[1-9]|1[0-2])-\d{4}$/;
     if (!dateReg.test(fechainicioinput.value)){
         fechainicioinput.setAttribute("style", "width:300px; color: black; font-size: 14px; border-color: #127ba5; border-color: #B22222");
         fechainicioinput_error.innerHTML = "Siga el formato preestablecido 'dd-mm-yyyy'";
         fechainicioinput_value = false;
     }else{
        fechainicioinput.setAttribute("style", "width:300px; color: black; font-size: 14px");
        fechainicioinput_value = true;
    }
 }
   submit.disabled = !(accion_value && proceso_value && recursos_value && fechafinalinput_value && fechainicioinput_value);
};

fechafinalinput.onblur = function() {
    fechafinalinput.value = fechafinalinput.value.trim();
 if (fechafinalinput.value == "") {
     fechafinalinput.setAttribute("style", "width:300px; color: gray; font-size: 14px; border-color: #127ba5; border-color: #B22222");
     fechafinalinput_error.innerHTML = "Indique fecha de finalización";
     fechafinalinput.value = "dd-mm-yyyy";
     fechafinalinput_value = false;
 }else{
     var dateReg = /^([0-2][0-9]|3[0-1])-(0[1-9]|1[0-2])-\d{4}$/;
     if (!dateReg.test(fechafinalinput.value)){
         fechafinalinput.setAttribute("style", "width:300px; color: black; font-size: 14px; border-color: #127ba5; border-color: #B22222");
         fechafinalinput_error.innerHTML = "Siga el formato preestablecido 'dd-mm-yyyy'";
         fechafinalinput_value = false;
     }else{
        fechafinalinput.setAttribute("style", "width:300px; color: black; font-size: 14px");
        fechafinalinput_value = true;
    }
 }
   submit.disabled = !(accion_value && proceso_value && recursos_value && fechafinalinput_value && fechainicioinput_value);
};