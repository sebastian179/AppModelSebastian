/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.isft.logic.collection;

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
        System.out.println("A");
            DataBase db = new DataBase(new HashMap());
            System.out.println("B");
            ResultSet rst = null;
            System.out.println("C");
            Connection cn = db.getConnection();
            System.out.println("D");
            Statement s = cn.createStatement();
            System.out.println("E");
            rst = s.executeQuery("SELECT * FROM Cliente");   
            while(rst.next()){
                vec.add(rst.getString("idCliente")  + " - " + rst.getString("apellido") + "-" + rst.getString("nombre"));
            }
        }catch(Exception exc){
            System.out.println("EXCEPCION AL INTENTAR CONECTAR CON LA BASE DE DATOS : " + exc.getMessage());
        }
        return vec;
    }
   
}
