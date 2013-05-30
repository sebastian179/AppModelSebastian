/**
 *
 * @author SEBASTIAN
 */
package org.isft.logic.collection;
import org.isft.domain.UsuarioRol;
import org.isft.domain.Usuario;
import org.isft.domain.Rol;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.HashMap;
import java.util.Vector;
import org.isft.jdbc.DataBase;

public class CollectionUsuarioRol {
    public CollectionUsuarioRol(){}

    public Vector getUsuarioRol(HashMap param){
        Vector vec = new Vector();
        try{
            
            Usuario user = (Usuario)param.get("usuario");
            Rol rol = (Rol)param.get("rol");

            System.out.println(user.getUsuarioId()+" * "+rol.getRolId());

            /*
             * pasar al hashmap la db 'login'
             */
            HashMap paramSQL = new HashMap();
            paramSQL.put("origen_datos","login");

            DataBase db = new DataBase(paramSQL);
            ResultSet rst = null;
            Connection cn = db.getConnection();
            Statement s = cn.createStatement();
            String sql = "SELECT * FROM  usuariorol WHERE idRol='"+rol.getRolId()+"' AND id_usuario='"+user.getUsuarioId()+"' ";
             //System.out.println(sql);
            rst = s.executeQuery(sql);
           
            while(rst.next()){
                Usuario usuario = new Usuario();
                usuario.setUsuarioId(rst.getInt("id_usuario"));

                Rol role = new Rol();
                role.setRolId(rst.getInt("idRol"));

                UsuarioRol ur = new UsuarioRol();
                ur.setUsuario(usuario);
                ur.setRol(role);

                vec.add(ur);
                //vec.add("Usuario valido: "+rst.getString("id_usuario")  + " - Rol Valido" + rst.getString("idRol") );
            }
        } catch(Exception exc){            
            System.out.println(exc.getMessage());
        }
        return vec;
    }
    public Vector getUsuarioRolByUsuario(HashMap param, HashMap paramSQL){
        Vector vec = new Vector();
        try{

            Usuario user = (Usuario)param.get("usuario");
            //Rol rol = (Rol)param.get("rol");

            //System.out.println(user.getUsuarioId()+" * "+rol.getRolId());

            /*
             * pasar al hashmap la db 'login'
             */
            //DataBase db = new DataBase(new HashMap());
            DataBase db = new DataBase(paramSQL);
            ResultSet rst = null;
            Connection cn = db.getConnection();
            Statement s = cn.createStatement();
            String sql = " SELECT * FROM  usuariorol UR, usuario U, rol R" +
                         " WHERE UR.id_usuario=U.id_usuario" +
                         " AND	UR.idRol = R.idRol" +
                         " AND U.usuario='"+user.getUsuario()+"' " +
                         " AND U.password='"+user.getPassword()+"' ";
            System.out.println(sql);
            rst = s.executeQuery(sql);

            while(rst.next()){
                Usuario usuario = new Usuario();
                usuario.setUsuarioId(rst.getInt("id_usuario"));
                usuario.setUsuario(rst.getString("usuario"));
                usuario.setPassword(rst.getString("password"));

                Rol role = new Rol();
                role.setRolId(rst.getInt("idRol"));
                role.setDescripcionRol(rst.getString("descripcionRol"));

                UsuarioRol ur = new UsuarioRol();
                ur.setUsuario(usuario);
                ur.setRol(role);

                vec.add(ur);
                //vec.add("Usuario valido: "+rst.getString("id_usuario")  + " - Rol Valido" + rst.getString("idRol") );
            }
        } catch(Exception exc){
            System.out.println(exc.getMessage());
        }
        return vec;
    }
}
