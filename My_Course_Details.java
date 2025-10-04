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
public class My_Course_Details extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out=resp.getWriter();
        String course=req.getParameter("txt_coursename");
        String category=req.getParameter("Category");
        String amount=req.getParameter("txt_CouAmount");
        String Event=req.getParameter("txt_CouSave");
        String couid=req.getParameter("txt_courid");
        String discount=req.getParameter("txt_discount");
        String total=req.getParameter("txt_total");
        
        out.println(course);
        out.println(category);
        out.println(amount);
        out.println(discount);
        out.println(total);
        
        Database db=new Database();
        out.println(db.ConnectDB());
        
        if(Event.equals("Save"))
        {
        String sql="insert into My_Course_Details_tbl(cou_name,cou_category,cou_amount,discount,total) values('"+course+"','"+category+"','"+amount+"','"+discount+"','"+total+"')";
        String result=db.Query(sql,"My Course Details Added Successfully..");
        out.println(result);
        
        resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('"+result+"');");
            out.println("location='My_Course_Details.jsp';");
            out.println("</script>");


        }
        if(Event.equals("Update"))
        {
        String sql="update My_Course_Details_tbl set cou_name='"+course+"',cou_category='"+category+"',cou_amount='"+amount+"' where cou_id='"+couid+"'";
        String result=db.Query(sql,"My Course Details Updated Successfully..");
        out.println(result);
        
        resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('"+result+"');");
            out.println("location='List_My_Course_Details.jsp';");
            out.println("</script>");

        }
        
        if(Event.equals("Delete"))
        {
        String sql="delete from My_Course_Details_tbl where cou_id='"+couid+"'";
        String result=db.Query(sql,"My Course Details Deleted Successfully..");
        out.println(result);
        
        resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('"+result+"');");
            out.println("location='List_My_Course_Details.jsp';");
            out.println("</script>");

        }
    }

         
        }
    

    