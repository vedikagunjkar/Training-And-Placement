/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author asus
 */
public class Admin_Login extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        PrintWriter out=resp.getWriter();
        String adminemail=req.getParameter("txt_AdminEmail");
        String adminpassword=req.getParameter("txt_Adminpassword");
        
        String event=req.getParameter("txt_Adminsubmit");
        
        out.println(adminemail);
        out.println(adminpassword);
        
         Database db=new Database();
        out.println(db.ConnectDB());
       
      
        
        Connection cn=null;
        Statement st=null;
        if(event.equals("Login"))
        {
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/New_Online_Training_And_Placement_System","root","root");
                st=cn.createStatement();
                String sql="select * from admin_signup_tbl where a_email='"+adminemail+"' and a_password='"+adminpassword+"'";
                ResultSet rs=st.executeQuery(sql);
                if(rs.next())
                {
                    resp.sendRedirect("Add_Employee_Details.jsp");
                }
                else
                {
                   resp.setContentType("text/html");
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Login Failed');");
                    out.println("location='Admin_Login.jsp';");
                    out.println("</script>");
                }
                
            }catch(Exception ex)
            {
                out.println(ex.toString());
            }
        }
        
    }
    
        }
    

    
