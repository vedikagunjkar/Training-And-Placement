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
public class Personal_Details extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out=resp.getWriter();
        String name=req.getParameter("txt_PFullName");
        String email=req.getParameter("txt_Pemail");
        String contact=req.getParameter("txt_PContactNo");
        String address=req.getParameter("txt_Paddress");
        String date=req.getParameter("txt_pDate");
        String gender=req.getParameter("txt_gender");
        String photo=req.getParameter("txt_pPhoto");
        String Event=req.getParameter("txt_perSave");
        String persid=req.getParameter("txt_perid");
        
        out.println(name);
        out.println(email);
        out.println(contact);
        out.println(address);
        out.println(date);
        out.println(gender);
        out.println(photo);
        
        Database db=new Database();
        out.println(db.ConnectDB());
        
        if(Event.equals("Save"))
        {
        String sql="insert into personal_details_tbl(per_name,per_email,per_contact,per_address,per_dob,per_gender,per_photo) values('"+name+"','"+email+"','"+contact+"','"+address+"','"+date+"','"+gender+"','"+photo+"')";
        String result=db.Query(sql,"Personal Details Added Successfully..");
        out.println(result);
        
        resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('"+result+"');");
            out.println("location='Personal_Details.jsp';");
            out.println("</script>");

        }
         if(Event.equals("Update"))
         {
         String sql="update personal_details_tbl set per_name='"+name+"',per_email='"+email+"',per_contact='"+contact+"',per_address='"+address+"',per_dob='"+date+"',per_gender='"+gender+"',per_photo='"+photo+"' where per_id='"+persid+"'";
         String result=db.Query(sql,"Personal Details Updated Successfully..");
         out.println(result);
         
         resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('"+result+"');");
            out.println("location='Personal_Details.jsp';");
            out.println("</script>");

         }
         
         if(Event.equals("Delete"))
         {
         String sql="delete from personal_details_tbl where per_id='"+persid+"' ";
         String result=db.Query(sql,"Personal Details Deleted Successfully..");
         out.println(result);
         
         resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('"+result+"');");
            out.println("location='Personal_Details.jsp';");
            out.println("</script>");

         }
    }
      

        }
    

   