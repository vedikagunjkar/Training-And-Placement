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
public class Add_Employee_Details extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        PrintWriter out=resp.getWriter();
        String EmpName=req.getParameter("txt_EmployeeName");
        String EmpAddress=req.getParameter("txt_Empaddress");
        String EmpEmail=req.getParameter("txt_EmployeeEmail");
        String EmpContact=req.getParameter("txt_EmployeeContact");
        String EmpPhoto=req.getParameter("txt_EmployeePhoto");
        String EmpGender=req.getParameter("gender");
        String Event=req.getParameter("txt_EmpSave");
        String empid=req.getParameter("txt_empid");
        
        out.println(EmpName);
        out.println(EmpAddress);
        out.println(EmpEmail);
        out.println(EmpContact);
        out.println(EmpPhoto);
        out.println(EmpGender);
        
        Database db=new Database();
        out.println(db.ConnectDB());
        
        if(Event.equals("Save"))
        {
        String sql="insert into Add_Employee_Details_tbl(emp_name,emp_address,emp_email,emp_contact,emp_photo,emp_gender) values('"+EmpName+"','"+EmpAddress+"','"+EmpEmail+"','"+EmpContact+"','"+EmpPhoto+"','"+EmpGender+"')";
        String result=db.Query(sql,"Employee Details Added Successfully..");
        out.println(result);
        
        resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('"+result+"');");
            out.println("location='Add_Employee_Details.jsp';");
            out.println("</script>");

        }
        
        if(Event.equals("Update"))
        {
        String sql="update Add_Employee_Details_tbl set emp_name='"+EmpName+"',emp_address='"+EmpAddress+"',emp_email='"+EmpEmail+"',emp_contact='"+EmpContact+"',emp_photo='"+EmpPhoto+"',emp_gender='"+EmpGender+"' where emp_id='"+empid+"'";
         String result=db.Query(sql,"Employee Details Updated Successfully..");
         out.println(result);
         
         resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('"+result+"');");
            out.println("location='List_Employee_Details.jsp';");
            out.println("</script>");

        }
        
        if(Event.equals("Delete"))
        {
        String sql="delete from Add_Employee_Details_tbl where emp_id='"+empid+"'";
        String result=db.Query(sql,"Employee Details Deleted Successfully..");
        out.println(result);
        
        
        resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('"+result+"');");
            out.println("location='List_Employee_Details.jsp';");
            out.println("</script>");

        }
    }
        

        }
    

    