
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
public class Add_Training_Services extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out=resp.getWriter();
        String service=req.getParameter("txt_Services");
        String serviceImg=req.getParameter("txt_trainingImage");
        String traAmount=req.getParameter("txt_Amount");
        String tradescr=req.getParameter("txt_TraDescription");
        String Event=req.getParameter("txt_training");
        String traid=req.getParameter("txt_trainingId");
        
        out.println(service);
        out.println(serviceImg);
        out.println(traAmount);
        out.println(tradescr);
        
        Database db=new Database();
        out.println(db.ConnectDB());
        
        if(Event.equals("Save"))
        {
        String sql="insert into Add_Training_Services_tbl(service_name,service_img,t_amount,t_description) values('"+service+"','"+serviceImg+"','"+traAmount+"','"+tradescr+"')";
        String result=db.Query(sql,"Training Details Added Successfully..");
        out.println(result);
        
        resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('"+result+"');");
            out.println("location='Add_Training_Services.jsp';");
            out.println("</script>");
        }
        
        if(Event.equals("Update"))
        {
        String sql="update Add_Training_Services_tbl set service_name='"+service+"',service_img='"+serviceImg+"',t_amount='"+traAmount+"',t_description='"+tradescr+"' where t_id='"+traid+"'";
        String result=db.Query(sql,"Training Details Updated Successfully..");
        out.println(result);
        
        resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('"+result+"');");
            out.println("location='List_Training_Services.jsp';");
            out.println("</script>");

        
        }
        
        if(Event.equals("Delete"))
        {
        String sql="delete from Add_Training_Services_tbl where t_id='"+traid+"'";
        String result=db.Query(sql,"Training Details Deleted Successfully..");
        out.println(result);
        
        resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('"+result+"');");
            out.println("location='List_Training_Services.jsp';");
            out.println("</script>");

        }
    }
            
        }
    
