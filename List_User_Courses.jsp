<%-- 
    Document   : List_User_Courses
    Created on : Mar 1, 2024, 2:24:11 PM
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
        <title>User Courses</title>
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
/*                 background-color: #D6EAF8;*/
            }
                </style>
    </head>
    <body>
        <br>
<!--        <div class="container" style="border:2px solid black;padding: 10px;background-color: white">-->
        <h2 class="styleh2">My Course Details List</h2>
        <br>
        <table class="table table-striped" style="">
            <thead class="thead-dark">
    <tr>
      <th scope="col">Id</th>
      <th scope="col">Name</th>
      <th scope="col">Category</th>
      <th scope="col">Amount</th>
      <th scope="col">Discount</th>
      <th scope="col">Total</th>
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
           String sql="Select * from user_courses_tbl";
           ResultSet rs=st.executeQuery(sql);
           while(rs.next())
           {
           %>
        <tr>
        <form action="methodpay" method="post">
        <td><%=rs.getString("uc_id")%></td>
          <input type="hidden" name="uid" value="<%=rs.getString("uc_id")%>" />
          <td><input type="text" name="txt_coursename" value="<%=rs.getString("cour_name")%>" class="form-control" /></td>
          <td><input type="text" name="Category" value="<%=rs.getString("cour_category")%>" class="form-control" /></td>
          <td><input type="text" name="txt_CouAmount" value="<%=rs.getString("cour_amount")%>" class="form-control" /></td>
          <td><input type="text" name="txt_discount" value="<%=rs.getString("cour_discount")%>" class="form-control" /></td>
          <td><input type="text" name="txt_total" value="<%=rs.getString("cour_total")%>" class="form-control" /></td>
          
          <td><input type="submit" name="btn" value="Cancel" class="btn btn-danger form-control"></td>
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
     
    </body>
</html>
