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
public class Add_Company_Details extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        PrintWriter out=resp.getWriter();
        String ComReg=req.getParameter("txt_CompanyRegNo");
        String ComName=req.getParameter("txt_CompanyName");
        String ComImg=req.getParameter("txt_CompanyImage");
        String ComAddress=req.getParameter("txt_Companyaddress");
        String ComEmail=req.getParameter("txt_CompanyEmail");
        String ComContact=req.getParameter("txt_CompanyContact");
        String ComOwner=req.getParameter("txt_Owner");
        String ComWebsite=req.getParameter("txt_Website");
        String Event=req.getParameter("txt_CompSave");
        String compid=req.getParameter("txt_compid");
        
        out.println(ComReg);
        out.println(ComName);
        out.println(ComImg);
        out.println(ComAddress);
        out.println(ComEmail);
        out.println(ComContact);
        out.println(ComOwner);
        out.println(ComWebsite);
        
        
        Database db=new Database();
        out.println(db.ConnectDB());
        
        if(Event.equals("Save"))
        {
        String sql="insert into Add_Company_Details_tbl(com_RegNo,com_name,com_img,com_address,com_email,com_contact,com_owner,com_website) values('"+ComReg+"','"+ComName+"','"+ComImg+"','"+ComAddress+"','"+ComEmail+"','"+ComContact+"','"+ComOwner+"','"+ComWebsite+"')";
        String result=db.Query(sql,"Company Details Added Successfully..");
        out.println(result);
        
        resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('"+result+"');");
            out.println("location='Add_Company_Details.jsp';");
            out.println("</script>");
            out.println(result);

        }
        
        if(Event.equals("Update"))
        {
        String sql="update Add_Company_Details_tbl set com_RegNo='"+ComReg+"',com_name='"+ComName+"',com_img='"+ComImg+"',com_address='"+ComAddress+"',com_email='"+ComEmail+"',com_contact='"+ComContact+"',com_owner='"+ComOwner+"',com_website='"+ComWebsite+"' where com_id='"+compid+"'";
         String result=db.Query(sql,"Company Details Updated Successfully..");
         out.println(result);
         
         resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('"+result+"');");
            out.println("location='List_Company_Details.jsp';");
            out.println("</script>");

        }
        
        if(Event.equals("Delete"))
        {
        String sql="delete from  Add_Company_Details_tbl where com_id='"+compid+"'";
        String result=db.Query(sql,"Company Details Deleted Successfully..");
        
        resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('"+result+"');");
            out.println("location='List_Company_Details.jsp';");
            out.println("</script>");

        }
    }
    

        }
    




