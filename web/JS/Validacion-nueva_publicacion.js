titulo_publicacion= document.getElementById("titulo_publicacion");
contenido_publicacion= document.getElementById("contenido_publicacion");
submit= document.getElementById("submit");



//se definen contadores de textareas
contenido_publicacion_counter= document.getElementById("contenido_publicacion_counter");

//se definen los mensajes de error
titulo_publicacion_error = document.getElementById("titulo_publicacion_error");
contenido_publicacion_error= document.getElementById("contenido_publicacion_error");


//se definen las variables de validacion
titulo_publicacion_value = false;
contenido_publicacion_value= false;
submit.disabled= true;





//se inicializan los textbox
//estilo del titulo de la publicacion
if (titulo_publicacion.value == "Titulo de la Publicacion"){
    titulo_publicacion.setAttribute("style", "width:500px; color: gray; font-size: 14px");
} else {
    contenido_publicacion_value= true;
    titulo_publicacion.setAttribute("style", "width:500px; color:black; font-size: 14px; border-color: #B22222");
}
//estilo del contenido de la publicacion
if (contenido_publicacion.value == "Escriba aqui el contenido de la publicacion"){
    contenido_publicacion.setAttribute("style", "height: 100px; width:495px; color: gray; font-size: 14px");
} else {
    contenido_publicacion.setAttribute("style", "height: 100px; width:495px; color: black; font-size: 14px");
    cantidad = contenido_publicacion.value.length;
    contenido_publicacion_counter.innerHTML= (4999 - cantidad).toString();

}

contenido_publicacion.onkeydown = function(){
    cantidad = contenido_publicacion.value.length;
    if (cantidad>4999){
        contenido_publicacion_counter.setAttribute("style", "margin-left: 480px; font-size: 10px; color: #B22222");
    } else{
        contenido_publicacion_counter.setAttribute("style", "margin-left: 480px; font-size: 10px; color: gray");
    }
    contenido_publicacion_counter.innerHTML= (4999 - cantidad).toString();
}

contenido_publicacion.onkeypress = function(){
    cantidad = contenido_publicacion.value.length;
    if (cantidad>4999){
        contenido_publicacion_counter.setAttribute("style", "margin-left: 480px; font-size: 10px; color: #B22222");
    } else{
        contenido_publicacion_counter.setAttribute("style", "margin-left: 480px; font-size: 10px; color: gray");
    }
    contenido_publicacion_counter.innerHTML= (4999 - cantidad).toString();
}

titulo_publicacion.focus = function() {
    titulo_publicacion.setAttribute("style", "width:500px; color:black; font-size: 14px; border-color: #127ba5");
    titulo_publicacion_error.innerHTML = "";
 if (titulo_publicacion.value == "Titulo de la Publicacion") {
     titulo_publicacion.value = "";
 }
}

contenido_publicacion.focus = function() {
    contenido_publicacion.setAttribute("style", "height: 100px; width:495px; color: black; font-size: 14px; border-color: #127ba5");
    contenido_publicacion_error.innerHTML = "";
 if (contenido_publicacion.value == "Escriba aqui el contenido de la publicacion") {
     contenido_publicacion.value = "";   
 }
}

titulo_publicacion.focus = function() {
    titulo_publicacion.value = titulo_publicacion.value.trim();
    minuscula=titulo_publicacion.value.charAt(0)+"";
    mayuscula=minuscula.toUpperCase();
    titulo_publicacion.value = mayuscula + titulo_publicacion.value.substring(1, titulo_publicacion.value.length);
 if (titulo_publicacion.value == "") {
     titulo_publicacion.setAttribute("style", "width:500px; color: gray; font-size: 14px; border-color: #B22222");
     titulo_publicacion_error.innerHTML = "La publicacion debe tener un titulo";
     titulo_publicacion.value = "Titulo de la Publicacion";
     titulo_publicacion_value = false;
 }else{
     if (titulo_publicacion.value.length > 199){
         titulo_publicacion.setAttribute("style", " width:500px; color: black; font-size: 14px; border-color: #B22222");
         titulo_publicacion_error.innerHTML = "El titulo de la publicacion es muy largo";
         titulo_publicacion_value = false;
     }else{
        titulo_publicacion.setAttribute("style", "width:500px; color:black; font-size: 14px");
        titulo_publicacion_value = true;
    }
 }
  submit.disabled = !(contenido_publicacion_value && titulo_publicacion_value);
}

contenido_publicacion.onblur = function() {
    cantidad = contenido_publicacion.value.length;
    contenido_publicacion.value = contenido_publicacion.value.trim();
    minuscula=contenido_publicacion.value.charAt(0)+"";
    mayuscula=minuscula.toUpperCase();
    contenido_publicacion.value = mayuscula + contenido_publicacion.value.substring(1, contenido_publicacion.value.length);
 if (contenido_publicacion.value == "") {
     contenido_publicacion.setAttribute("style", "height: 100px; width:495px; color: gray; font-size: 14px; border-color: #B22222");
     contenido_publicacion_error.innerHTML = "Su publicacion debe tener un contenido";
     contenido_publicacion.value = "Escriba aqui el contenido de la publicacion";
     contenido_publicacion_value= false;
     contenido_publicacion_counter.innerHTML = "4999";
 }else{
     if (cantidad > 4999){
         contenido_publicacion.setAttribute("style", "height: 100px; width:495px; color: black; font-size: 14px; border-color: #B22222");
         contenido_publicacion_error.innerHTML = "La publicacion excede el limite de caracteres disponibles";
         contenido_publicacion_value= false;
    }else{
        contenido_publicacion_error.innerHTML = "";
        contenido_publicacion.setAttribute("style", "height: 100px; width:495px; color: black; font-size: 14px");
        contenido_publicacion_value= true;
    }
 }
  submit.disabled = !(contenido_publicacion_value && titulo_publicacion_value);
}