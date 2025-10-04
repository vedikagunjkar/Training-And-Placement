<%-- 
    Document   : Training_Services_List
    Created on : Jan 9, 2024, 8:12:09 PM
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
        <title>Training Services List</title>
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

            }
            
                </style>
    </head>
    <body>
        <br>
        <!--<div class="container"  style="border:2px solid black;padding:10px;background-color: white">-->
        <h2 class="styleh2">Training Services List</h2>
        <br>
        <table class="table table-striped">
  <thead class="thead-dark">
    <tr>
      <th scope="col">Id</th>
      <th scope="col">Service Name</th>
      <th scope="col">Service Image</th>
      <th scope="col">Amount</th>
      <th scope="col">Description</th>
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
           String sql="Select * from Add_Training_Services_tbl";
           ResultSet rs=st.executeQuery(sql);
           while(rs.next())
           {
           %>
        <tr>
            <form action="Add_Training_Services" method="post">
            <td><%=rs.getString("t_id")%></td>
            <input type="hidden" name="txt_trainingId" value="<%=rs.getString("t_id")%>" />
            <td><input type="text" name="txt_Services" value="<%=rs.getString("service_name")%>" class="form-control" /></td>
            <td>
                <div class="row">
                    <div class="col-sm-6">
            <input type="text" name="txt_trainingImage" value="<%=rs.getString("service_img")%>" class="form-control" />
                    </div>
                    <div class="col-sm-6">
                   <img src='image2/<%=rs.getString("service_img")%>' width="65" height="65"/>
                   </div>
                   </div></td>
            <td><input type="text" name="txt_Amount" value="<%=rs.getString("t_amount")%>" class="form-control" />
            <td><input type="text" name="txt_TraDescription" value="<%=rs.getString("t_description")%>" class="form-control" /></td>
            <td><input type="submit" name="txt_training" value="Update" class="btn btn-info form-control"></td>
            <td><input type="submit" name="txt_training" value="Delete" class="btn btn-danger form-control"</td>
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
