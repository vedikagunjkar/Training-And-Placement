<%-- 
    Document   : Training_Video_And_Notes_List
    Created on : Jan 9, 2024, 8:41:36 PM
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
        <title>Training Videos And Notes List</title>
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
        <h2 class="styleh2">Training Videos And Notes List</h2>
        <br>
        <table class="table table-striped" style="">
            <thead class="thead-dark">
    <tr>
      <th scope="col">Id</th>
      <th scope="col">Service Name</th>
      <th scope="col">Video Title</th>
      <th scope="col">Video</th>
      <th scope="col">Notes</th>
      <th scope="col">Type</th>
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
           String sql="Select * from Add_training_Videos_And_Notes_tbl";
           ResultSet rs=st.executeQuery(sql);
           while(rs.next())
           {
           %>
        <tr>
        <form action="Add_Training_Videos_And_Notes" method="post">
        <td><%=rs.getString("v_id")%></td>
          <input type="hidden" name="txt_trainingvideoId" value="<%=rs.getString("v_id")%>" />
          <td><input type="text" name="txt_Services" value="<%=rs.getString("service_name")%>" class="form-control" /></td>
          <td><input type="text" name="txt_VideoTitle" value="<%=rs.getString("video_title")%>" class="form-control" /></td>
          <td><input type="text" name="txt_Video" value="<%=rs.getString("video")%>" class="form-control" /></td>
          <td><input type="file" name="txt_notes" value="<%=rs.getString("notes")%>" class="form-control" /></td>
          <td><input type="text" name="txt_Type" value="<%=rs.getString("type")%>" class="form-control" /></td>
          <td><input type="text" name="txt_VideoDescription" value="<%=rs.getString("description")%>" class="form-control" /></td>
          <td><input type="submit" name="txt_tra" value="Update" class="btn btn-info form-control"></td>
          <td><input type="submit" name="txt_tra" value="Delete" class="btn btn-danger form-control"></td>
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
