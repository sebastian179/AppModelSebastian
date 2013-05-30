/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author SEBASTIAN
 */
package org.isft.logic.validator;
import org.isft.domain.Usuario;
import org.isft.logic.collection.EjemploConexion;
import java.util.Vector;
import java.util.HashMap;
//import org.isft.domain.Rol;
public class ValidarUsuario {
    public ValidarUsuario(){};
    /**
     * validacion simple
     */
    public boolean isUsuarioValido(Usuario usuario){
        boolean returnValue = false;
        try{
            String txt_usuario = usuario.getUsuario();
            String txt_password = usuario.getPassword();
            boolean user = false;
            boolean pass = false;
            
            if(txt_usuario.equals("jlopez"))
                user = true;
            
            if(txt_password.equals("lopezj"))
                pass = true;
            if(user && pass)
                returnValue=true;


            System.out.println("RESULTADO: "+returnValue);
        } catch(Exception exc){
            System.out.println(exc.getMessage());
        }
        return returnValue;
    }

    public boolean isUsuarioValidoBySql(Usuario usuario,HashMap paramSQL){
        boolean returnValue = false;
        try{
            EjemploConexion ejemplo=new EjemploConexion();

            returnValue=ejemplo.traerCliente(usuario, paramSQL);
            System.out.println("RESULTADO: "+returnValue);
        } catch(Exception exc) {
            System.out.println(exc.getMessage());
        }
        return returnValue;
    }
}
