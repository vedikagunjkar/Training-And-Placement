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
public class User_QuestionBank extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        PrintWriter out=resp.getWriter();
        
        String question=req.getParameter("txt_question");
        String selected_ans=req.getParameter("option");
        String ans=req.getParameter("ans");
        
        int marks=0;
        Database db=new Database();
         out.println(db.ConnectDB());
         HttpSession session=req.getSession();
         
         if(selected_ans.equals(ans))
         {
         marks=1;
         }
         else
         {
         marks=0;
         }
         
         
          String sql="insert into user_question_bank(qno,question,selected_ans,ans,user_name,contact,email,marks) values('"+session.getAttribute("qno")+"','"+question+"','"+selected_ans+"','"+ans+"','"+session.getAttribute("name")+"','"+session.getAttribute("contact")+"','"+session.getAttribute("email")+"','"+marks+"')";
         String result=db.Query(sql,"Records Inserted");
         out.println(result);
        
         int qno=Integer.parseInt(session.getAttribute("qno").toString())+1;
         session.setAttribute("qno", qno);
         
         resp.sendRedirect("View_Question_Bank.jsp");
        
    }


}