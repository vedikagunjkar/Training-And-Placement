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
public class Add_Payment_Details extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        PrintWriter out=resp.getWriter();
        String cardHolder=req.getParameter("txt_cardHolder");
        String cardno=req.getParameter("txt_cardNo");
        String expirydate=req.getParameter("txt_ExpiryDate");
        String CVVno=req.getParameter("txt_CVVno");
        String payamount=req.getParameter("txt_amount");
        String Event=req.getParameter("txt_pay");
        
        out.println(cardHolder);
        out.println(cardno);
        out.println(expirydate);
        out.println(CVVno);
        out.println(payamount);
        
        Database db=new Database();
        out.println(db.ConnectDB());
        
        if(Event.equals("Proceed"))
        {
        String sql="insert into Credit_Card_tbl(card_HolderName,card_No,expiry_date,CVV,amount) values('"+cardHolder+"','"+cardno+"','"+expirydate+"','"+CVVno+"','"+payamount+"')";
        String result=db.Query(sql,"Payment Proceed Successfully..");
        out.println(result);
        
        resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('"+result+"');");
            out.println("location='Add_Payment_Details.jsp';");
            out.println("</script>");

        }
    }
       
   
        }
    

    
     