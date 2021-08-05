
package Metodos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class SQLLoguin extends ConexionMySQL{
    
    public boolean autenticacion(String usuario, String contrasenia){
        PreparedStatement pst = null;
        ResultSet rs = null;     
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
            Logger.getLogger(SQLLoguin.class.getName()).log(Level.SEVERE, null, ex);
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
    
     public static void main(String[] args){
        SQLLoguin consultas= new SQLLoguin(); 
        System.out.println(consultas.autenticacion("Pedro", "333")); 

     }
}


