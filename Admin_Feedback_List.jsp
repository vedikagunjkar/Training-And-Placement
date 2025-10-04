<%-- 
    Document   : Admin_Feedback_List
    Created on : Feb 5, 2024, 10:34:22 AM
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
        <title>Feedback List</title>
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
/*                 background-color: #D6EAF8;*/
                 /*background-color: black;*/
            }
                </style>
                


    </head>
    <body>
        <br>
<!--        <div class="container" style="border:2px solid black;padding: 10px;background-color: white">-->
        <h2 class="styleh2"> Feedback List</h2>
        <br>
        <table class="table table-striped" >
  <thead class="thead-dark">
    <tr>
      <th scope="col">Id</th>
      <th scope="col">Name</th>
      <th scope="col">Email</th>
      <th scope="col">Contact</th>
      <th scope="col">Description</th>
    
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
           String sql="Select * from feedback_tbl";
           ResultSet rs=st.executeQuery(sql);
           while(rs.next())
           {
           %>
       <tr>
      
            <td><%=rs.getString("f_id")%></td>
            <td><%=rs.getString("f_name")%></td>
            <td><%=rs.getString("f_email")%></td>
            <td><%=rs.getString("f_contact")%></td>
            <td><%=rs.getString("f_description")%></td>
                 
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
