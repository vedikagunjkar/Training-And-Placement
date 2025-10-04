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
import javax.servlet.http.HttpSession;

/**
 *
 * @author asus
 */
public class User_Login extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
         PrintWriter out=resp.getWriter();
        String useremail=req.getParameter("txt_UserEmail");
        String userpassword=req.getParameter("txt_Userpassword");
        String Event=req.getParameter("txt_Usubmit");
        
        out.println(useremail);
        out.println(userpassword);
        
        Database db=new Database();
        out.println(db.ConnectDB());
        HttpSession session=req.getSession();
        Connection cn=null;
        Statement st=null;
        if(Event.equals("Login"))
        {
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/New_Online_Training_And_Placement_System","root","root");
                st=cn.createStatement();
                String sql="select * from user_signup_tbl where u_email='"+useremail+"' and u_password='"+userpassword+"'";
                ResultSet rs=st.executeQuery(sql);
                if(rs.next())
                {
                    session.setAttribute("name", rs.getString("u_name"));
                    session.setAttribute("contact", rs.getString("u_contact"));
                    session.setAttribute("email", rs.getString("u_email"));
                    session.setAttribute("qno", "1");
                    resp.sendRedirect("Personal_Details.jsp");
                }
                else
                {
                   resp.setContentType("text/html");
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Login Failed');");
                    out.println("location='User_Login.jsp';");
                    out.println("</script>");
                }
                
            }catch(Exception ex)
            {
                out.println(ex.toString());
            }
        }
        
 
    }
       

        }
    

   