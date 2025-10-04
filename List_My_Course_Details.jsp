<%-- 
    Document   : List_My_Course_Details
    Created on : Feb 7, 2024, 4:29:14 PM
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
        <title>List My Course Details</title>
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
/*                 background-color: #D6EAF8;*/
            }
                </style>
   
    </head>
    
    <body>
        <br>
<!--        <div class="container" style="border:2px solid black;padding: 10px;background-color: white">-->
        <h2 class="styleh2">Course Details List</h2>
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
           String sql="Select * from My_Course_Details_tbl";
           ResultSet rs=st.executeQuery(sql);
           while(rs.next())
           {
           %>
        <tr>
        <form action="My_Course_Details" method="post">
        <td><%=rs.getString("cou_id")%></td>
          <input type="hidden" name="txt_courid" value="<%=rs.getString("cou_id")%>" />
          <td><input type="text" name="txt_coursename" value="<%=rs.getString("cou_name")%>" class="form-control" /></td>
          <td><input type="text" name="Category" value="<%=rs.getString("cou_category")%>" class="form-control" /></td>
          <td><input type="text" name="txt_CouAmount" value="<%=rs.getString("cou_amount")%>" class="form-control" /></td>
          <td><input type="text" name="txt_discount" value="<%=rs.getString("discount")%>" class="form-control" /></td>
          <td><input type="text" name="txt_total" value="<%=rs.getString("total")%>" class="form-control" /></td>
          <td><input type="submit" name="txt_CouSave" value="Update" class="btn btn-info form-control"></td>
          <td><input type="submit" name="txt_CouSave" value="Delete" class="btn btn-danger form-control"></td>
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
