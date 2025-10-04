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
public class Feedback extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out=resp.getWriter();
        String feedname=req.getParameter("txt_feedname");
        String feedemail=req.getParameter("txt_feedemail");
        String feedcontact=req.getParameter("txt_feedcontact");
        String feeddescr=req.getParameter("txt_feeddescription");
        String Event=req.getParameter("txt_feedsubmit");
         out.println(feedname);
         out.println(feedemail);
         out.println(feedcontact);
         out.println(feeddescr);
         
         Database db=new Database();
         out.println(db.ConnectDB());
         
         
         if(Event.equals("Submit"))
         {
         String sql="insert into feedback_tbl(f_name,f_email,f_contact,f_description) values('"+feedname+"','"+feedemail+"','"+feedcontact+"','"+feeddescr+"')";
         String result=db.Query(sql,"Feedback Added Successfully..");
         out.println(result);
         
         resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('"+result+"');");
            out.println("location='Feedback.jsp';");
            out.println("</script>");

         
         }
         
         
    }
              

           }
    

    

    