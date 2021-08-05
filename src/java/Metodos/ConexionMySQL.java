/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Metodos;
import java.sql.*;
import javax.swing.JOptionPane;

public class ConexionMySQL {
 public String db = "hostel";
 public String url = "jdbc:mysql://localhost/"+db;
 public String user = "root";
 public String pass = "";

 
public Connection conectar(){
    Connection link = null; //objeto de tipo Connection 
    
    try{
        Class.forName("com.mysql.jdbc.Driver");
        link = DriverManager.getConnection(this.url, this.user, this.pass);
    }catch(Exception ex){
        JOptionPane.showMessageDialog(null, ex);

    }
    
    return link; 
 } 

}
 

