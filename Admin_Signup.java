/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author asus
 */
public class Admin_Signup extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out=resp.getWriter();
        String fullname=req.getParameter("txt_afullname");
        String address=req.getParameter("txt_Aaddress");
        String contactNo=req.getParameter("txt_acontactnumber");
        String date=req.getParameter("txt_adate");
        String email=req.getParameter("txt_aemail");
        String apassword=req.getParameter("txt_apassword");
        String acpassword=req.getParameter("txt_aconfirmpassword");
        String Event=req.getParameter("txt_signup");
        
        out.println(fullname);
        out.println(address);
        out.println(contactNo);
        out.println(date);
        out.println(email);
        out.println(apassword);
        out.println(acpassword);
       
        Database db=new Database();
        out.println(db.ConnectDB());
        
        if(Event.equals("Signup"))
        {
        String sql="insert into Admin_Signup_tbl(a_name,a_address,a_contact,a_dob,a_email,a_password,a_cpassword) values('"+fullname+"','"+address+"','"+contactNo+"','"+date+"','"+email+"','"+apassword+"','"+acpassword+"')";
        String result=db.Query(sql,"Signup Details Added Successfully..");
        out.println(result);
        
        resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('"+result+"');");
            out.println("location='Admin_Login.jsp';");
            out.println("</script>");

        }
    }
         

        }
    

    