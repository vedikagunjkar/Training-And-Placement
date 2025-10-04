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
public class Add_Placement_Details extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out=resp.getWriter();
        String designation=req.getParameter("Designation");
        String Package=req.getParameter("txt_Package");
        String placementImg=req.getParameter("txt_PaclementImg");
        String startdate=req.getParameter("txt_StartDate");
        String enddate=req.getParameter("txt_EndDate");
         String location=req.getParameter("location");
         String website=req.getParameter("txt_website");
         String Event=req.getParameter("txt_PlaceSave");
         String placeid=req.getParameter("txt_placeid");
        
         out.println(designation);
         out.println(Package);
         out.println(placementImg);
         out.println(startdate);
         out.println(enddate);
         out.println(location);
         
           Database db=new Database();
           out.println(db.ConnectDB());
           
           if(Event.equals("Save"))
           {
           String sql="insert into Add_Placement_Details_tbl(p_desgination_name,p_package,p_image,p_start_date,p_end_date,p_location,p_website) values('"+designation+"','"+Package+"','"+placementImg+"','"+startdate+"','"+enddate+"','"+location+"','"+website+"')";
           String result=db.Query(sql,"Placement Details Added Successfully..");
           out.println(result);
           
           resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('"+result+"');");
            out.println("location='Add_Placement_Details.jsp';");
            out.println("</script>");

           }
           if(Event.equals("Update"))
           {
           String sql="update Add_Placement_Details_tbl set p_desgination_name='"+designation+"',p_package='"+Package+"',p_image='"+placementImg+"',p_start_date='"+startdate+"',p_end_date='"+enddate+"',p_location='"+location+"',p_website='"+website+"' where p_id='"+placeid+"'";
           String result=db.Query(sql,"Placement Details Updated Successfully..");
           out.println(result);
           
           resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('"+result+"');");
            out.println("location='List_Job.jsp';");
            out.println("</script>");

           
           }
           
           if(Event.equals("Delete"))
           {
           String sql="delete from  Add_Placement_Details_tbl where p_id='"+placeid+"'";
           String result=db.Query(sql,"Placement Details Deleted Successfully..");
           out.println(result);
           
           resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('"+result+"');");
            out.println("location='List_Job.jsp';");
            out.println("</script>");

           
           }
           
    }
           

        }


   