/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


window.addEventListener('load', function(){
    document.getElementById('btnIniciar').addEventListener('click', function(){
        var nombre=document.getElementById('txtusuario').value; 
        var contrasenia=document.getElementById('txtcontra').value; 
        
        var bandera=false; 
        if(nombre.length > 0 && contrasenia.length > 0){
            bandera=true; 
            
        }
        if(bandera){
            document.getElementById('formInicio').submit();
        }else{
            alert('Por favor llene todos los campos');
        }
        
    })
});