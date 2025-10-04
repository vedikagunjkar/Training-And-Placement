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
public class Document_Details extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       PrintWriter out=resp.getWriter();
       String docphoto=req.getParameter("txt_DOCPhoto");
       String resume=req.getParameter("txt_Resume");
       String aadharcard=req.getParameter("txt_AadharCard");
       String pancard=req.getParameter("txt_PANCard");
       String bankpassbook=req.getParameter("txt_BankPassbook");
       String Event=req.getParameter("txt_DocSave");
       String docuid=req.getParameter("txt_documenid");
       
       out.println(docphoto);
       out.println(resume);
       out.println(aadharcard);
       out.println(pancard);
       out.println(bankpassbook);
       
       Database db=new Database();
       out.println(db.ConnectDB());
       
       if(Event.equals("Save"))
       {
         String sql="insert into Document_Details_tbl(photo,d_resume,aadhar_card,PAN_card,bank_passbook) values('"+docphoto+"','"+resume+"','"+aadharcard+"','"+pancard+"','"+bankpassbook+"')";
         String result=db.Query(sql,"Document Details Added Successfully..");
         out.println(result);
         
         resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('"+result+"');");
            out.println("location='Document_Details.jsp';");
            out.println("</script>");

       }
       
       if(Event.equals("Update"))
       {
       String sql="update Document_Details_tbl set photo='"+docphoto+"',d_resume='"+resume+"',aadhar_card='"+aadharcard+"',PAN_card='"+pancard+"',bank_passbook='"+bankpassbook+"' where d_id='"+docuid+"'";
        String result=db.Query(sql,"Document Details Updated Successfully..");
        out.println(result);
        
        resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('"+result+"');");
            out.println("location='Document_Details.jsp';");
            out.println("</script>");

       }
       
       if(Event.equals("Delete"))
       {
       String sql="delete from Document_Details_tbl where d_id='"+docuid+"'" ;
       String result=db.Query(sql,"Document Details Deleted Successfully..");
       out.println(result);
       
       resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('"+result+"');");
            out.println("location='Document_Details.jsp';");
            out.println("</script>");

       }
    }
 
   
        }
    

     