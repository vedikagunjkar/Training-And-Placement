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
public class Educational_Details extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out=resp.getWriter();
        String collegename=req.getParameter("txt_CollegeName");
        String boardname=req.getParameter("txt_boardName");
        String year=req.getParameter("txt_YearOFPassing");
        String obtmarks=req.getParameter("txt_ObtMarks");
        String percentage=req.getParameter("txt_percentage");
        String Event=req.getParameter("txt_EduSave");
        String eduid=req.getParameter("txt_eduid");
        
        out.println(collegename);
        out.println(boardname);
        out.println(year);
        out.println(obtmarks);
        out.println(percentage);
        
        Database db=new Database();
        out.println(db.ConnectDB());
        
        if(Event.equals("Save"))
        {
        String sql="insert into Educational_Details_tbl(college_name,board_name,year_of_passing,obtained_marks,percentage) values('"+collegename+"','"+boardname+"','"+year+"','"+obtmarks+"','"+percentage+"')";
        String result=db.Query(sql,"Educational Details Added Successfully..");
        out.println(result);
        
        resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('"+result+"');");
            out.println("location='Educational_Details.jsp';");
            out.println("</script>");

        }
        
        if(Event.equals("Update"))
        {
        String sql="update Educational_Details_tbl set college_name='"+collegename+"',board_name='"+boardname+"',year_of_passing='"+year+"',obtained_marks='"+obtmarks+"',percentage='"+percentage+"' where e_id='"+eduid+"' ";
        String result=db.Query(sql,"Educational Details Updated Successfully..");
        out.println(result);
        
        resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('"+result+"');");
            out.println("location='Educational_Details.jsp';");
            out.println("</script>");

         
        }
         
         if(Event.equals("Delete"))
        {
        String sql="delete from Educational_Details_tbl where e_id='"+eduid+"' ";
         String result=db.Query(sql,"Educational Details Deleted Successfully..");
         out.println(result);
         
         resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('"+result+"');");
            out.println("location='Educational_Details.jsp';");
            out.println("</script>");

        }
    
          
   
        }
}  

    