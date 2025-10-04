<%-- 
    Document   : List_Question_Bank
    Created on : Feb 7, 2024, 10:34:59 AM
    Author     : asus
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List Question Bank</title>
        <link rel="stylesheet" href="bootstrap.css">
        <%@include file="Admin_Header.jsp" %>
                <style>
              .styleh2{
                font-family: "Arial";
                font-weight:"bold";
                text-align: center;
                color:black;
                font-size: 30px;
            }
            body{
                 /*background-color: #D6EAF8;*/
                 /*background-color: black;*/
            }
                </style>
                

    </head>
    <body>
       <br>
        <!--<div class="container" style="border:2px solid black;padding: 10px;background-color: white">-->
        <h2 class="styleh2">Question Bank List</h2>
        <br>
        <table class="table table-striped" >
  <thead class="thead-dark">
    <tr>
      <th scope="col">Id</th>
      <th scope="col">Que No</th>
      <th scope="col">Question</th>
      <th scope="col">Option A</th>
      <th scope="col">Option B</th>
      <th scope="col">Option C</th>
      <th scope="col">Option D</th>
      <th scope="col">Correct Answer</th>
      <th scope="col">Action</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
       <%
      Connection cn=null;
      Statement st=null;
      
      
      try{
          
         Class.forName("com.mysql.jdbc.Driver");
           cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/New_Online_Training_And_Placement_System","root","root");
           st=cn.createStatement();
           String sql="Select * from add_question_bank_tbl";
           ResultSet rs=st.executeQuery(sql);
           while(rs.next())
           {
           %>
      <tr>
             <form action="Add_Question_Bank" method="post">
      <td><%=rs.getString("q_id")%></td>
      <input type="hidden" name="txt_queid" value="<%=rs.getString("q_id")%>" />
      <td><input type="text" name="txt_Qno" value="<%=rs.getString("que_no")%>" class="form-control"/></td>
      <td><input type="text" name="txt_question" value="<%=rs.getString("que")%>" class="form-control"/></td>
      <td><input type="text" name="txt_optionA" value="<%=rs.getString("option_A")%>" class="form-control"/></td>
      <td><input type="text" name="txt_optionB" value="<%=rs.getString("option_B")%>" class="form-control"/></td>
      <td><input type="text" name="txt_optionC" value="<%=rs.getString("option_C")%>" class="form-control"/></td>
      <td><input type="text" name="txt_optionD" value="<%=rs.getString("option_D")%>" class="form-control"/></td>
      <td><input type="text" name="txt_answer" value="<%=rs.getString("ans")%>" class="form-control"/></td>
      <td>  <input type="submit" name="txt_que" value="Update" class="btn btn-info form-control"></td>
      <td><input type="submit" name="txt_que" value="Delete" class="btn btn-danger form-control"></td>
             </form>
      
    </tr>
    
    
    
           
           <%
           }
      
      }catch(Exception ex)
      {
      out.println(ex.toString());
      }
      

    
      %>
      
    
    
   
        
  </tbody>
</table>
        </div>

    </body>
</html>
