<%-- 
    Document   : List_result
    Created on : Feb 20, 2024, 3:41:59 PM
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
        <title>Result</title>
         <link rel="stylesheet" href="bootstrap.css">
         <%@include file="User_Header.jsp" %>
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

            }
            
                </style>
    </head>
    <body>
        <br>
        <!--<div class="container"  style="border:2px solid black;padding:10px;background-color: white">-->
        <h2 class="styleh2">Result</h2>
        <br>
        <table class="table table-striped">
  <thead class="thead-dark">
    <tr>
      
      <th scope="col">User Name</th>
      <th scope="col">Email</th>
      <th scope="col">Contact</th>
      
      
          </tr>
  </thead>
  <tbody>
      <%
      Connection cn=null;
      Statement st=null;
      String uname="";
       String email="";
       String contact="";
     
      try{
          
         Class.forName("com.mysql.jdbc.Driver");
           cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/New_Online_Training_And_Placement_System","root","root");
           st=cn.createStatement();
           
        
           
           String sql="Select * from user_question_bank where email='"+session.getAttribute("email")+"'";
           ResultSet rs=st.executeQuery(sql);
           while(rs.next())
           {
               uname=rs.getString("user_name");
               email=rs.getString("email");
               contact=rs.getString("contact");
        
           }
      
      }catch(Exception ex)
      {
      out.println(ex.toString());
      }
      

    
      %>
        <tr>
             
      
     
      
      <td><input type="text" name="" value="<%=uname%>" class="form-control"/></td>
       <td><input type="text" name="" value="<%=email%>" class="form-control"/></td>
      <td><input type="text" name="" value="<%=contact%>" class="form-control"/></td>
      
     
      
    </tr>
    
    
      
      <%
      String sum="";
      try{
          
         Class.forName("com.mysql.jdbc.Driver");
           cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/new_online_training_and_placement_system","root","root");
           st=cn.createStatement();
           
            String sql="Select Sum(marks) as sumprice from user_question_bank where email='"+session.getAttribute("email")+"'";
            ResultSet rs=st.executeQuery(sql);
  
                          if(rs.next())
                          {
                               sum = rs.getString("sumprice");
                              
                          }
           
          
      
      }catch(Exception ex)
      {
      out.println(ex.toString());
      }
           %>
           
           
      <tr>
          <td></td>
        
            <td>Total :</td>
            
          <td><%=sum%></td>
      </tr>
  </tbody>
</table>
    </body>
</html>
