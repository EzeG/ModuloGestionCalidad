/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

// placeholders
nombre_grupo= document.getElementById("nombre_grupo");
miembros_grupo= document.getElementById("string_grupo");
nombre_grupo.value = "Nombre del Grupo";
string_grupo.value = "Integrante Uno, Integrante Dos, Integrante Tres...";


nombre_grupo.onclick = function() {
 if (nombre_grupo.value == "Nombre del Grupo") {
     nombre_grupo.setAttribute("style", "width:500px; color:black; font-size: 14px; border-color: #127ba5");
  nombre_grupo.value = "";
 }
}

string_grupo.onclick = function() {
 if (string_grupo.value == "Integrante Uno, Integrante Dos, Integrante Tres...") {
      string_grupo.setAttribute("style", "width:500px; color:black; font-size: 14px; border-color: #127ba5");
      string_grupo.value = "";
 }
}

nombre_grupo.onblur = function() {
 if (nombre_grupo.value == "") {
     nombre_grupo.setAttribute("style", "width:500px; color:gray; font-size: 14px");
     nombre_grupo.value = "Nombre del Grupo";
 }else{
     nombre_grupo.setAttribute("style", "width:500px; color:black; font-size: 14px");
 }
}

string_grupo.onblur = function() {
 if (string_grupo.value == "") {
     string_grupo.setAttribute("style", "width:500px; color:gray; font-size: 14px");
     string_grupo.value = "Integrante Uno, Integrante Dos, Integrante Tres...";
 }else{
     string_grupo.setAttribute("style", "width:500px; color:black; font-size: 14px");
 }
}