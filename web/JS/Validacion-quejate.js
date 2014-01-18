/*
 * textboxs y textareas
 * 
 */
registro= document.getElementById("registro");
empresa= document.getElementById("empresa");
telefono= document.getElementById("telefono");
fax = document.getElementById("fax");
celular = document.getElementById("celular");
direccion = document.getElementById("direccion");
contacto = document.getElementById("contacto");
email = document.getElementById("email");
contrato = document.getElementById("contrato");
exposicion = document.getElementById("exposicion");
acciones = document.getElementById("acciones");
submit=document.getElementById("submit");

//se definen contadores de textareas
direccion_counter = document.getElementById("direccion_counter");
exposicion_counter = document.getElementById("exposicion_counter");
acciones_counter = document.getElementById("acciones_counter");

//se definen los mensajes de error
registro_error= document.getElementById("registro_error");
empresa_error= document.getElementById("empresa_error");
telefono_error= document.getElementById("telefono_error");
fax_error = document.getElementById("fax_error");
celular_error = document.getElementById("celular_error");
direccion_error = document.getElementById("direccion_error");
contacto_error = document.getElementById("contacto_error");
email_error = document.getElementById("email_error");
contrato_error = document.getElementById("contrato_error");
exposicion_error = document.getElementById("exposicion_error");
acciones_error = document.getElementById("acciones_error");

//se definen las variables de validacion
registro_value= false;
empresa_value= false;
telefono_value= false;
fax_value = false;
celular_value = false;
direccion_value = false;
contacto_value = false;
email_value = false;
contrato_value = false;
exposicion_value = false;
acciones_value = false;


/*
 * se desactiva el boton de submit hasta que se llene correctamente el formulario
 */
submit.disabled = true;

//se inicializan los estilos de los textbox y textareas


if(registro.value == "registro"){
    registro.setAttribute("style"," width:100px; color: gray; font-size: 14px");
}else{
    empresa_value= true;
    telefono_value= true;
    fax_value = true;
    celular_value = true;
    direccion_value = true;
    contacto_value = true;
    email_value = true;
    contrato_value = true;
    exposicion_value = true;
    acciones_value = true;
    submit_value= true;
    registro.setAttribute("style","width:100px; color: black; font-size: 14px; border-color: #B22222");
}
        
if(empresa.value == "empresa"){
    empresa.setAttribute("style","width:300px; color: gray; font-size: 14px");
}else{
    empresa.setAttribute("style","width:300px; color: black; font-size: 14px");
}

if(telefono.value == "telefono"){
    telefono.setAttribute("style","width:100px; color: gray; font-size: 14px");
}else{
    telefono.setAttribute("style","width:100px; color: black; font-size: 14px");
}

if(fax.value == "fax"){
    fax.setAttribute("style","width:100px; color: gray; font-size: 14px");
}else{
    fax.setAttribute("style","width:100px; color: black; font-size: 14px");
}

if(celular.value == "celular"){
    celular.setAttribute("style","width:100px; color: gray; font-size: 14px");
}else{
    celular.setAttribute("style","width:100px; color: black; font-size: 14px");
}

if(direccion.value == "direccion"){
    direccion.setAttribute("style","height:50px; width:300px; color: gray; font-size: 14px");
}else{
    direccion.setAttribute("style","height:50px; width:300px; color: black; font-size: 14px");
}

if(contacto.value == "contacto"){
    contacto.setAttribute("style"," width:300px; color: gray; font-size: 14px");
}else{
    contacto.setAttribute("style"," width:300px; color: black; font-size: 14px");
}

if(email.value == "email"){
    email.setAttribute("style","width:300px; color: gray; font-size: 14px");
}else{
    email.setAttribute("style","width:300px; color: black; font-size: 14px");
}

if(contrato.value == "contrato"){
    contrato.setAttribute("style","width:100px; color: gray; font-size: 14px");
}else{
    contrato.setAttribute("style","width:100px; color: black; font-size: 14px");
}

if(exposicion.value == "exposicion"){
    exposicion.setAttribute("style","height:100px; width:300px; color: gray; font-size: 14px");
}else{
    exposicion.setAttribute("style","height:100px; width:300px; color: black; font-size: 14px");
}

if(acciones.value == "acciones"){
    acciones.setAttribute("style","height:100px; width:300px; color: gray; font-size: 14px");
}else{
    acciones.setAttribute("style","height:100px; width:300px; color: black; font-size: 14px");
}

/*
 * 
 * onfocusevents
 */
registro.onfocus = function(){
registro.setAttribute("style","width:100px; color: black; font-size: 14px; border-color: #127ba5"); 
registro_error.innerHTML = ""; 
if (registro.value == "registro") {
 registro.value="";
 }
 };
 
empresa.onfocus = function(){
empresa.setAttribute("style","width:300px; color: black; font-size: 14px; border-color: #127ba5"); 
empresa_error.innerHTML = ""; 
if (empresa.value == "empresa") { 
empresa.value="";
}
};

telefono.onfocus = function(){
telefono.setAttribute("style","width:100px; color: black; font-size: 14px; border-color: #127ba5"); 
telefono_error.innerHTML = ""; 
if (telefono.value == "telefono") { 
telefono.value="";
}
};

fax.onfocus = function(){
fax.setAttribute("style","width:100px; color: black; font-size: 14px; border-color: #127ba5"); 
fax_error.innerHTML = ""; 
if (fax.value == "fax") { 
fax.value="";
}
};

celular.onfocus = function(){
celular.setAttribute("style","width:100px; color: black; font-size: 14px; border-color: #127ba5"); 
celular_error.innerHTML = ""; 
if (celular.value == "celular") { 
celular.value="";
}
};

direccion.onfocus = function(){
direccion.setAttribute("style","height:50px; width:300px; color: black; font-size: 14px; border-color: #127ba5"); 
direccion_error.innerHTML = ""; 
if (direccion.value == "direccion") { 
direccion.value="";
}
};

contacto.onfocus = function(){
contacto.setAttribute("style","width:300px; color: black; font-size: 14px; border-color: #127ba5"); 
contacto_error.innerHTML = ""; 
if (contacto.value == "contacto") { 
contacto.value="";
}
};

email.onfocus = function(){
email.setAttribute("style","width:300px; color: black; font-size: 14px; border-color: #127ba5"); 
email_error.innerHTML = ""; 
if (email.value == "email") { 
email.value="";
}
};

contrato.onfocus = function(){
contrato.setAttribute("style","width:100px; color: black; font-size: 14px; border-color: #127ba5"); 
contrato_error.innerHTML = ""; 
if (contrato.value == "contrato") { 
contrato.value="";
}
};

exposicion.onfocus = function(){
exposicion.setAttribute("style","height:100px; width:300px; color: black; font-size: 14px; border-color: #127ba5"); 
exposicion_error.innerHTML = ""; 
if (exposicion.value == "exposicion") { 
exposicion.value="";
}
};

acciones.onfocus = function(){
acciones.setAttribute("style","height:100px; width:300px; color: black; font-size: 14px; border-color: #127ba5"); 
acciones_error.innerHTML = ""; 
if (acciones.value == "acciones") { 
acciones.value="";
}
};

var dateTel = /^\d{7}$/;

 
function evaluarCampos(){
  return  !(registro_value && empresa_value 
          && direccion_value && contacto_value && email_value && contrato_value &&  
          exposicion_value  && acciones_value);
}

registro.onblur = function(){
registro.value = registro.value.trim();
	if(registro.value==""){
		registro.setAttribute("style","width:100px; color: gray; font-size: 14px; border-color: #B22222");
		registro_error.innerHTML = "registro es requerido";
		registro.value = "registro";
		registro_value = false;
 }else{
	var inject2 = /^\b(ALTER|alter|CREATE|create|DELETE|delete|DROP|drop|EXEC(UTE){0,1}|INSERT( +INTO){0,1}|insert( +into){0,1}|MERGE|merge|SELECT|select|UPDATE|update|UNION( +ALL){0,1})|union( +all){0,1}\b/;
	var inject = /\w*((\%27)|(\'))((\%6F)|o|O|(\%4F))((\%72)|r|R|(\%52))/;
	var inject3 = /^"(.*)"|'(.*)'/;
	if(inject2.test(registro.value) || inject.test(registro.value) || inject3.test(registro.value) || registro.value.length > 19){
            registro.setAttribute("style", "width:100px; color: black; font-size: 14px; border-color: #B22222");
            registro_error.innerHTML = "registro posee un formato invalido o es muy largo";
            registro_value = false;
     }else{
        registro.setAttribute("style", "width:100px; color:black; font-size: 14px");
        registro_value = true;
        submit.disabled= evaluarCampos();
    }
 }
 };
 
 empresa.onblur = function(){
empresa.value = empresa.value.trim();
	if(empresa.value==""){
		empresa.setAttribute("style","width:300px; color: gray; font-size: 14px; border-color: #B22222");
		empresa_error.innerHTML = "empresa es requerido";
		empresa.value = "empresa";
		empresa_value = false;
 }else{
	var inject2 = /^\b(ALTER|alter|CREATE|create|DELETE|delete|DROP|drop|EXEC(UTE){0,1}|INSERT( +INTO){0,1}|insert( +into){0,1}|MERGE|merge|SELECT|select|UPDATE|update|UNION( +ALL){0,1})|union( +all){0,1}\b/;
	var inject = /\w*((\%27)|(\'))((\%6F)|o|O|(\%4F))((\%72)|r|R|(\%52))/;
	var inject3 = /^"(.*)"|'(.*)'/;
	if(inject2.test(empresa.value) || inject.test(empresa.value) || inject3.test(empresa.value) || empresa.value.length > 89){
		empresa.setAttribute("style", "width:300px; color: black; font-size: 14px; border-color: #B22222");
                empresa_error.innerHTML = "empresa posee un formato invalido o es muy largo";
                empresa_value = false;
     }else{
        empresa.setAttribute("style", "width:300px; color:black; font-size: 14px");
        empresa_value = true;
        submit.disabled= evaluarCampos();
    }
 }
 };
 
 telefono.onblur = function(){
telefono.value = telefono.value.trim();
if(telefono.value==""){
		telefono.setAttribute("style","width:100px; color: gray; font-size: 14px");
		telefono.value = "telefono";
		telefono_value = false;
 }else{
	var inject2 = /^\b(ALTER|alter|CREATE|create|DELETE|delete|DROP|drop|EXEC(UTE){0,1}|INSERT( +INTO){0,1}|insert( +into){0,1}|MERGE|merge|SELECT|select|UPDATE|update|UNION( +ALL){0,1})|union( +all){0,1}\b/;
	var inject = /\w*((\%27)|(\'))((\%6F)|o|O|(\%4F))((\%72)|r|R|(\%52))/;
	var inject3 = /^"(.*)"|'(.*)'/;
	if(inject2.test(telefono.value) || inject.test(telefono.value) || inject3.test(telefono.value) || !dateTel.test(telefono.value)){
		telefono.setAttribute("style", "width:100px; color: black; font-size: 14px; border-color: #B22222");
         telefono_error.innerHTML = "telefono posee un formato invalido";
         telefono_value = false;
     }else{
        telefono.setAttribute("style", "width:100px; color:black; font-size: 14px");
        telefono_value = true;
        submit.disabled= evaluarCampos();
    }
 }
 }
 
 fax.onblur = function(){
fax.value = fax.value.trim();
	if(fax.value==""){
		fax.setAttribute("style","width:100px; color: gray; font-size: 14px");
		fax.value = "fax";
		fax_value = false;
 }else{
	var inject2 = /^\b(ALTER|alter|CREATE|create|DELETE|delete|DROP|drop|EXEC(UTE){0,1}|INSERT( +INTO){0,1}|insert( +into){0,1}|MERGE|merge|SELECT|select|UPDATE|update|UNION( +ALL){0,1})|union( +all){0,1}\b/;
	var inject = /\w*((\%27)|(\'))((\%6F)|o|O|(\%4F))((\%72)|r|R|(\%52))/;
	var inject3 = /^"(.*)"|'(.*)'/;
	if(inject2.test(fax.value) || inject.test(fax.value) || inject3.test(fax.value) || !dateTel.test(fax.value)){
		fax.setAttribute("style", "width:100px; color: black; font-size: 14px; border-color: #B22222");
         fax_error.innerHTML = "fax posee un formato invalido";
         fax_value = false;
     }else{
        fax.setAttribute("style", "width:100px; color:black; font-size: 14px");
        fax_value = true;
        submit.disabled= evaluarCampos;
    }
 }
 }
 
 celular.onblur = function(){
celular.value = celular.value.trim();
	if(celular.value==""){
		celular.setAttribute("style","width:100px; color: gray; font-size: 14px");
		celular.value = "celular";
		celular_value = false;
 }else{
	var inject2 = /^\b(ALTER|alter|CREATE|create|DELETE|delete|DROP|drop|EXEC(UTE){0,1}|INSERT( +INTO){0,1}|insert( +into){0,1}|MERGE|merge|SELECT|select|UPDATE|update|UNION( +ALL){0,1})|union( +all){0,1}\b/;
	var inject = /\w*((\%27)|(\'))((\%6F)|o|O|(\%4F))((\%72)|r|R|(\%52))/;
	var inject3 = /^"(.*)"|'(.*)'/;
	if(inject2.test(celular.value) || inject.test(celular.value) || inject3.test(celular.value) || !dateTel.test(celular.value)){
		celular.setAttribute("style", "width:100px; color: black; font-size: 14px; border-color: #B22222");
         celular_error.innerHTML = "celular posee un formato invalido";
         celular_value = false;
     }else{
        celular.setAttribute("style", "width:100px; color:black; font-size: 14px");
        celular_value = true;
        submit.disabled= evaluarCampos;
    }
 }
 }
 
 direccion.onblur = function(){
direccion.value = direccion.value.trim();
	if(direccion.value==""){
		direccion.setAttribute("style","height: 50px; width:300px; color: gray; font-size: 14px; border-color: #B22222");
		direccion_error.innerHTML = "direccion es requerido";
		direccion.value = "direccion";
		direccion_value = false;
 }else{
	var inject2 = /^\b(ALTER|alter|CREATE|create|DELETE|delete|DROP|drop|EXEC(UTE){0,1}|INSERT( +INTO){0,1}|insert( +into){0,1}|MERGE|merge|SELECT|select|UPDATE|update|UNION( +ALL){0,1})|union( +all){0,1}\b/;
	var inject = /\w*((\%27)|(\'))((\%6F)|o|O|(\%4F))((\%72)|r|R|(\%52))/;
	var inject3 = /^"(.*)"|'(.*)'/;
	if(inject2.test(direccion.value) || inject.test(direccion.value) || inject3.test(direccion.value) || direccion.value.length > 499){
		direccion.setAttribute("style", "height: 50px; width:300px; color: black; font-size: 14px; border-color: #B22222");
         direccion_error.innerHTML = "la direccion posee un formato invalido o es muy larga";
         direccion_value = false;
     }else{
        direccion.setAttribute("style", "height: 50px; width:300px; color:black; font-size: 14px");
        direccion_value = true;
        submit.disabled= evaluarCampos();
    }
 }
 }
 
 contacto.onblur = function(){
contacto.value = contacto.value.trim();
	if(contacto.value==""){
		contacto.setAttribute("style","width:300px; color: gray; font-size: 14px; border-color: #B22222");
		contacto_error.innerHTML = "contacto es requerido";
		contacto.value = "contacto";
		contacto_value = false;
 }else{
	var inject2 = /^\b(ALTER|alter|CREATE|create|DELETE|delete|DROP|drop|EXEC(UTE){0,1}|INSERT( +INTO){0,1}|insert( +into){0,1}|MERGE|merge|SELECT|select|UPDATE|update|UNION( +ALL){0,1})|union( +all){0,1}\b/;
	var inject = /\w*((\%27)|(\'))((\%6F)|o|O|(\%4F))((\%72)|r|R|(\%52))/;
	var inject3 = /^"(.*)"|'(.*)'/;
	if(inject2.test(contacto.value) || inject.test(contacto.value) || inject3.test(contacto.value) || contacto.value.length > 49){
		contacto.setAttribute("style", "width:300px; color: black; font-size: 14px; border-color: #B22222");
         contacto_error.innerHTML = "contacto posee un formato invalido o muy largo";
         contacto_value = false;
     }else{
        contacto.setAttribute("style", "width:300px; color:black; font-size: 14px");
        contacto_value = true;
        submit.disabled= evaluarCampos();
    }
 }
 }
 
 email.onblur = function(){
email.value = email.value.trim();
	if(email.value==""){
		email.setAttribute("style","width:300px; color: gray; font-size: 14px; border-color: #B22222");
		email_error.innerHTML = "email es requerido";
		email.value = "email";
		email_value = false;
 }else{
	var inject2 = /^\b(ALTER|alter|CREATE|create|DELETE|delete|DROP|drop|EXEC(UTE){0,1}|INSERT( +INTO){0,1}|insert( +into){0,1}|MERGE|merge|SELECT|select|UPDATE|update|UNION( +ALL){0,1})|union( +all){0,1}\b/;
	var inject = /\w*((\%27)|(\'))((\%6F)|o|O|(\%4F))((\%72)|r|R|(\%52))/;
	var inject3 = /^"(.*)"|'(.*)'/;
        var inject4 = /^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,3})$/; 
	if(inject2.test(email.value) || inject.test(email.value) || inject3.test(email.value) || !inject4.test(email.value)){
		email.setAttribute("style", "width:300px; color: black; font-size: 14px; border-color: #B22222");
         email_error.innerHTML = "email posee un formato invalido";
         email_value = false;
     }else{
        email.setAttribute("style", "width:300px; color:black; font-size: 14px");
        email_value = true;
        submit.disabled= evaluarCampos();
    }
 }
 }
 
 contrato.onblur = function(){
contrato.value = contrato.value.trim();
	if(contrato.value==""){
		contrato.setAttribute("style","width:100px; color: gray; font-size: 14px; border-color: #B22222");
		contrato_error.innerHTML = "contrato es requerido";
		contrato.value = "contrato";
		contrato_value = false;
 }else{
	var inject2 = /^\b(ALTER|alter|CREATE|create|DELETE|delete|DROP|drop|EXEC(UTE){0,1}|INSERT( +INTO){0,1}|insert( +into){0,1}|MERGE|merge|SELECT|select|UPDATE|update|UNION( +ALL){0,1})|union( +all){0,1}\b/;
	var inject = /\w*((\%27)|(\'))((\%6F)|o|O|(\%4F))((\%72)|r|R|(\%52))/;
	var inject3 = /^"(.*)"|'(.*)'/;
	if(inject2.test(contrato.value) || inject.test(contrato.value) || inject3.test(contrato.value) || contrato.value.length > 14){
		contrato.setAttribute("style", "width:100px; color: black; font-size: 14px; border-color: #B22222");
         contrato_error.innerHTML = "contrato posee un formato invalido o es muy largo";
         contrato_value = false;
     }else{
        contrato.setAttribute("style", "width:100px; color:black; font-size: 14px");
        contrato_value = true;
        submit.disabled= evaluarCampos();
    }
 }
 }
 
 exposicion.onblur = function(){
exposicion.value = exposicion.value.trim();
	if(exposicion.value==""){
		exposicion.setAttribute("style","height: 100px; width:300px; color: gray; font-size: 14px; border-color: #B22222");
		exposicion_error.innerHTML = "exposicion es requerido";
		exposicion.value = "exposicion";
		exposicion_value = false;
 }else{
	var inject2 = /^\b(ALTER|alter|CREATE|create|DELETE|delete|DROP|drop|EXEC(UTE){0,1}|INSERT( +INTO){0,1}|insert( +into){0,1}|MERGE|merge|SELECT|select|UPDATE|update|UNION( +ALL){0,1})|union( +all){0,1}\b/;
	var inject = /\w*((\%27)|(\'))((\%6F)|o|O|(\%4F))((\%72)|r|R|(\%52))/;
	var inject3 = /^"(.*)"|'(.*)'/;
	if(inject2.test(exposicion.value) || inject.test(exposicion.value) || inject3.test(exposicion.value) || exposicion.value.length > 4999){
		exposicion.setAttribute("style", "height: 100px; width:300px; color: black; font-size: 14px; border-color: #B22222");
         exposicion_error.innerHTML = "exposicion posee un formato invalido o muy largo";
         exposicion_value = false;
     }else{
        exposicion.setAttribute("style", "height: 100px; width:300px; color:black; font-size: 14px");
        exposicion_value = true;
        submit.disabled= evaluarCampos();
    }
 }
 }
 
 acciones.onblur = function(){
acciones.value = acciones.value.trim();
	if(acciones.value==""){
		acciones.setAttribute("style","height: 100px; width:300px; color: gray; font-size: 14px; border-color: #B22222");
		acciones_error.innerHTML = "acciones es requerido";
		acciones.value = "acciones";
		acciones_value = false;
 }else{
	var inject2 = /^\b(ALTER|alter|CREATE|create|DELETE|delete|DROP|drop|EXEC(UTE){0,1}|INSERT( +INTO){0,1}|insert( +into){0,1}|MERGE|merge|SELECT|select|UPDATE|update|UNION( +ALL){0,1})|union( +all){0,1}\b/;
	var inject = /\w*((\%27)|(\'))((\%6F)|o|O|(\%4F))((\%72)|r|R|(\%52))/;
	var inject3 = /^"(.*)"|'(.*)'/;
	if(inject2.test(acciones.value) || inject.test(acciones.value) || inject3.test(acciones.value) || acciones.value.length > 4999){
		acciones.setAttribute("style", "height: 100px; width:300px; color: black; font-size: 14px; border-color: #B22222");
         acciones_error.innerHTML = "acciones posee un formato invalido o muy largo";
         acciones_value = false;
     }else{
        acciones.setAttribute("style", "height: 100px; width:300px; color:black; font-size: 14px");
        acciones_value = true;
        submit.disabled= evaluarCampos();
    }
 }
 };