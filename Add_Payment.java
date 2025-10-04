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
public class Add_Payment extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out=resp.getWriter();
        String UPI=req.getParameter("txt_UPINo");
         String Amount=req.getParameter("txt_Amount");
         String Event=req.getParameter("txt_payment");
         
         out.println(UPI);
         out.println(Amount);
         
         Database db= new Database();
         out.println(db.ConnectDB());
         
         if(Event.equals("Proceed"))
         {
         String sql="insert into UPI_tbl(upi_no,amount) values('"+UPI+"','"+Amount+"')";
         String result=db.Query(sql,"Payment Proceed Successfully..");
         out.println(result);
         
         resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('"+result+"');");
            out.println("location='Add_Payment.jsp';");
            out.println("</script>");

         }
         
    }
    

        }
    

    