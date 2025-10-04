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
public class Add_Training_Videos_And_Notes extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out=resp.getWriter();
        String videoService=req.getParameter("txt_Services");
        String videotitle=req.getParameter("txt_VideoTitle");
        String video=req.getParameter("txt_Video");
        String notes=req.getParameter("txt_notes");
        String videodescr=req.getParameter("txt_VideoDescription");
        String Vtype=req.getParameter("txt_Type");
        String Event=req.getParameter("txt_tra");
        String videoId=req.getParameter("txt_trainingvideoId");
        
        out.println(videoService);
        out.println(videotitle);
        out.println(video);
        out.println(notes);
        out.println(videodescr);
        out.println(Vtype);
        
        Database db=new Database();
        out.println(db.ConnectDB());
        
        if(Event.equals("Save"))
        {
        String sql="insert into Add_training_Videos_And_Notes_tbl(service_name,video_title,video,notes,type,description) values('"+videoService+"','"+videotitle+"','"+video+"','"+notes+"','"+Vtype+"','"+videodescr+"')";
        String result=db.Query(sql,"Training Details Added Successfully..");
        out.println(result);
        
        resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('"+result+"');");
            out.println("location='Add_Training_Videos_And_Notes.jsp';");
            out.println("</script>");

        }
        
        if(Event.equals("Update"))
        {
        String sql="update Add_training_Videos_And_Notes_tbl set service_name='"+videoService+"',video_title='"+videotitle+"',video='"+video+"',notes='"+notes+"',type='"+Vtype+"',description='"+videodescr+"' where v_id='"+videoId+"' ";
         String result=db.Query(sql,"Training Details Updated Successfully..");
         out.println(result);
         
         resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('"+result+"');");
            out.println("location='List_Training_Video_And_Notes.jsp';");
            out.println("</script>");

        }
        
        if(Event.equals("Delete"))
        {
        String sql="delete from Add_training_Videos_And_Notes_tbl where v_id='"+videoId+"' ";
        String result=db.Query(sql,"Training Details Deleted Successfully..");  
        out.println(result);
        
        resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('"+result+"');");
            out.println("location='List_Training_Video_And_Notes.jsp';");
            out.println("</script>");

        }
    }
        
        }
   

    