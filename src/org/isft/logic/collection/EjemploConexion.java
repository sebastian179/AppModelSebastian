/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.isft.logic.collection;
import org.isft.domain.Usuario;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.HashMap;
import java.util.Vector;
import org.isft.jdbc.DataBase;

/**
 *
 * @author Jose
 */
public class EjemploConexion {
 
    public Vector traerClientes(){
        Vector vec = new Vector();
        try{
            DataBase db = new DataBase(new HashMap());
            ResultSet rst = null;
            Connection cn = db.getConnection();
            Statement s = cn.createStatement();
            rst = s.executeQuery("SELECT * FROM Cliente");   
            while(rst.next()){
                vec.add(rst.getString("idCliente")  + " - " + rst.getString("apellido") + "-" + rst.getString("nombre"));
            }
        }catch(Exception exc){
            System.out.println("EXCEPCION AL INTENTAR CONECTAR CON LA BASE DE DATOS : " + exc.getMessage());
        }
        return vec;
    }
    public boolean traerCliente(Usuario usuario,HashMap paramSQL){
        //Vector vec = new Vector();
        boolean result = false;
        try{
            /*
             * pasar al hashmap la db 'login'
             */
            DataBase db = new DataBase(paramSQL);
            //DataBase db = new DataBase(new HashMap());
            ResultSet rst = null;
            Connection cn = db.getConnection();
            Statement s = cn.createStatement();
            rst = s.executeQuery("SELECT * FROM usuario WHERE usuario='"+usuario.getUsuario()+"' AND password='"+usuario.getPassword()+"'");
            while(rst.next()){
                result = true;
                //vec.add(rst.getString("idCliente")  + " - " + rst.getString("apellido") + "-" + rst.getString("nombre"));
            }
        }catch(Exception exc){
            System.out.println("EXCEPCION AL INTENTAR CONECTAR CON LA BASE DE DATOS : " + exc.getMessage());
        }
        return result;
    }
   
}
