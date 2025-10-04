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
import javax.servlet.http.HttpSession;

/**
 *
 * @author asus
 */
public class methodpay extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       
        
        PrintWriter out=resp.getWriter();
        
        
        HttpSession session=req.getSession();
        
        String amount=req.getParameter("amount");
        String couname=req.getParameter("cou_name");
        String coucategory=req.getParameter("cou_category");
        String coudiscount=req.getParameter("discount");
        String coutotal=req.getParameter("total");
        String Event=req.getParameter("btn");
        String ucid=req.getParameter("uid");
        
         Database db=new Database();
        out.println(db.ConnectDB());
       
        
        
        
        
        if(Event.equals("Apply Here"))
        {
        String sql="insert into User_Courses_tbl(cour_amount,cour_name,cour_category,cour_discount,cour_total,uname,uemail) values('"+amount+"','"+couname+"','"+coucategory+"','"+coudiscount+"','"+coutotal+"','"+session.getAttribute("name")+"','"+session.getAttribute("email")+"')";
        String result=db.Query(sql,"You applied successfully for these course..");
        out.println(result);
         session.setAttribute("amount", amount);
         
         resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('"+result+"');");
            out.println("location='payment_method.jsp';");
            out.println("</script>");
         
         
     
        }
        if(Event.equals("Cancel"))
        {
            String sql="delete from User_Courses_tbl where uc_id='"+ucid+"'";
        String result=db.Query(sql,"Your Payment will refund in working three days..");
        out.println(result);
        
        resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('"+result+"');");
            out.println("location='List_User_Courses.jsp';");
            out.println("</script>");
        }
        
    }

   

}
