
package Metodos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Persistencia extends ConexionMySQL{
      private ResultSet rs;
      PreparedStatement ps = null;
       
    public boolean autenticacion(String usuario, String contrasenia){
        PreparedStatement pst = null;
       // ResultSet rs = null;     
        try{
            String consulta = "SELECT * FROM login WHERE usuario = ? and contrasenia = ?";
            pst = conectar().prepareStatement(consulta);
            pst.setString(1, usuario);
            pst.setString(2, contrasenia); 
            rs = pst.executeQuery();       
            if(rs.absolute(1)){
                return true;
                }
            }catch(Exception e){
            System.err.println("Error"+ e);
            }finally{
                try{
                    if(conectar()!= null)conectar().close();
                    if(pst != null) pst.close();
                    if(rs !=null) rs.close();
              
                 }catch(Exception e){
                     System.err.println("Error"+ e);
                 }
            
            }
        
        return false;
    }
    
    
    
    public boolean registrar(String usuario, String contrasenia){
        PreparedStatement ps = null;
        try { 
            String sql = "INSERT INTO login (usuario, contrasenia)VALUES (?,?)"; 
            ps = conectar().prepareStatement(sql);
            ps.setString(1, usuario);
            ps.setString(2, contrasenia); 
            
            if(ps.executeUpdate()==1){
                return true;
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(Persistencia.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            try{
                if(conectar()!=null) conectar().close();
                if(ps != null) ps.close();
            }catch(Exception e){
                System.err.println("Error" + e);
            }    
        }
        
         return false;
    }
    
    public boolean registrarHuesped(String nombre, String apellido, String mail, int edad){
        
        try { 
            String sql = "INSERT INTO clientes (nombre, apellido, mail, edad)VALUES (?,?,?,?)"; 
            ps = conectar().prepareStatement(sql);
            ps.setString(1, nombre);
            ps.setString(2, apellido);
            ps.setString(3, mail); 
            ps.setInt(4, edad);
            
            
            if(ps.executeUpdate()==1){
                return true;
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(Persistencia.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            try{
                if(conectar()!=null) conectar().close();
                if(ps != null) ps.close();
            }catch(Exception e){
                System.err.println("Error" + e);
            }    
        }
        
         return false;
    }
    
    public ResultSet consultaSQL(String busqueda){
        try {
            ps= conectar().prepareStatement(busqueda);
            rs=ps.executeQuery();
            //rsm=rs.getMetaData();
        } catch (SQLException ex) {
            Logger.getLogger(Persistencia.class.getName()).log(Level.SEVERE, null, ex);
        } 
        return rs;
    }
    
    
   
   

    /*public static void main(String[] args){
        Persistencia consultas= new Persistencia(); 
        System.out.println(consultas.consultaSQL("SELECT * FROM clientes"));
               
     }*/
}


