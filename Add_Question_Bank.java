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
public class Add_Question_Bank extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out=resp.getWriter();
        String Qno=req.getParameter("txt_Qno");
        String question=req.getParameter("txt_question");
        String optionA=req.getParameter("txt_optionA");
        String optionB=req.getParameter("txt_optionB");
        String optionC=req.getParameter("txt_optionC");
        String optionD=req.getParameter("txt_optionD");
        String answer=req.getParameter("txt_answer");
        String Event=req.getParameter("txt_que");  
        String qid=req.getParameter("txt_queid");
        
        out.println(Qno);
        out.println(question);
        out.println(optionA);
        out.println(optionB);
        out.println(optionC);
        out.println(optionD);
        out.println(answer);
        
        Database db=new Database();
        out.println(db.ConnectDB());
        
         if(Event.equals("Submit"))
        {
        String sql="insert into Add_Question_Bank_tbl(que_no,que,option_A,option_B,option_C,option_D,ans) values('"+Qno+"','"+question+"','"+optionA+"','"+optionB+"','"+optionC+"','"+optionD+"','"+answer+"')";
         String result=db.Query(sql,"Question Bank Added Successfully..");
         out.println(result);
        
        resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('"+result+"');");
            out.println("location='Add_Question_Bank.jsp';");
            out.println("</script>");

       
        }
         
         if(Event.equals("Update"))
         {
         String sql="update Add_Question_Bank_tbl set que_no='"+Qno+"',que='"+question+"',option_A='"+optionA+"',option_B='"+optionB+"',option_C='"+optionC+"',option_D='"+optionD+"',ans='"+answer+"' ";
         String result=db.Query(sql,"Question Bank Updated Successfully..");
         out.println(result);
         
         resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('"+result+"');");
            out.println("location='List_Question_Bank.jsp';");
            out.println("</script>");

         }
         
         if(Event.equals("Delete"))
         {
         String sql="delete from Add_Question_Bank_tbl where q_id='"+qid+"'" ;
          String result=db.Query(sql,"Question Bank Deleted Successfully..");
          out.println(result);
          
          resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('"+result+"');");
            out.println("location='List_Question_Bank.jsp';");
            out.println("</script>");

         }
    }
}

        
    

   