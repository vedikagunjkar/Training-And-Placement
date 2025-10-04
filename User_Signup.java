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
public class User_Signup extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
   
        PrintWriter out=resp.getWriter();
        String ufullname=req.getParameter("txt_Userfullname");
        String uaddress=req.getParameter("txt_Useraddress");
        String ucontactNo=req.getParameter("txt_Usernumber");
        String udate=req.getParameter("txt_Userdate");
        String uemail=req.getParameter("txt_Useremail");
        String upassword=req.getParameter("txt_Userpassword");
        String ucpassword=req.getParameter("txt_Userconfirmpassword");
        String Event=req.getParameter("txt_Usersignup");
        
        out.println(ufullname);
        out.println(uaddress);
        out.println(ucontactNo);
        out.println(udate);
        out.println(uemail);
        out.println(upassword);
        out.println(ucpassword);
        
        Database db=new Database();
        out.println(db.ConnectDB());
        
        if(Event.equals("Signup"))
        {
        String sql="insert into user_signup_tbl(u_name,u_address,u_contact,u_dob,u_email,u_password,u_cpassword) values('"+ufullname+"','"+uaddress+"','"+ucontactNo+"','"+udate+"','"+uemail+"','"+upassword+"','"+ucpassword+"')";
        String result=db.Query(sql,"Signup Details Added Successfully..");
        out.println(result);
        
        resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('"+result+"');");
            out.println("location='User_Login.jsp';");
            out.println("</script>");

        }
        }
}
    

    