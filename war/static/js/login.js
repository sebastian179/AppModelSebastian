 function evaluar_ingreso(){
    if(document.getElementById('txt_usuario').value=='' ||  document.getElementById('txt_password').value=='' ){
        alert("No se ingreso Usuario o Password");
        return false
    } else{
        document.getElementById('form_login').submit();
    }
 }