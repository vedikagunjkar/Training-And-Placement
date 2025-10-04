
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author asus
 */
public class Database {
    Connection cn=null;
    Statement st=null;
    
    public String ConnectDB()
    {
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/New_Online_Training_And_Placement_System","root","root");
            return("Database Connected");
        }catch(Exception ex)
        {
        
            
            return(ex.toString());
        }
        }
    
    public String Query(String sql,String Message)
    {
        try{
            st=cn.createStatement();
            st.executeUpdate(sql);
            return(Message);
        }catch(Exception ex)
        {
            return(ex.toString());
        }
    }
 }
    
    

