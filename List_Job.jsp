<%-- 
    Document   : List_Job
    Created on : Jan 11, 2024, 9:51:15 AM
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
        <title>Job List</title>
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
/*                background-color: #D6EAF8;*/
;
            }
            
                </style>
                

    </head>
    <body>
        <br>
<!--       <div class="container" style="border:2px solid black;padding: 10px;background-color: white">-->
        <h2 class="styleh2">Job List</h2>
        <br>
        <table class="table table-striped" style="">
            <thead class="thead-dark">
    <tr>
      <th scope="col">Id</th>
      <th scope="col">Designation Name</th>
      <th scope="col">Package</th>
      <th scope="col">Image</th>
      <th scope="col">Start Date</th>
      <th scope="col">End Date</th>
      <th scope="col">Location</th>
      <th scope="col">Website</th>
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
           String sql="Select * from Add_Placement_Details_tbl";
           ResultSet rs=st.executeQuery(sql);
           while(rs.next())
           {
           %>
           <tr>
                  <form action="Add_Placement_Details" method="post">
         <td><%=rs.getString("p_id")%> </td>
          <input type="hidden" name="txt_placeid" value="<%=rs.getString("p_id")%>" />
          <td><input type="text" name="Designation" value="<%=rs.getString("p_desgination_name")%>" class="form-control" /></td>
           <td><input type="text" name="txt_Package" value="<%=rs.getString("p_package")%>" class="form-control" /></td>
            <td>
                <div class="row">
               <div class="col-sm-6">
           <input type="file" name="txt_PaclementImg" value="<%=rs.getString("p_image")%>" class="form-control" />
               </div>
               <div class="col-sm-6">
                   <img src='image2/<%=rs.getString("p_image")%>' width="65" height="65"/>
               </div>
           </div>
               </td>
             <td><input type="text" name="txt_StartDate" value="<%=rs.getString("p_start_date")%>" class="form-control" /></td>
             <td><input type="text" name="txt_EndDate" value="<%=rs.getString("p_end_date")%>" class="form-control" /></td>
             <td><input type="text" name="location" value="<%=rs.getString("p_location")%>" class="form-control" /></td>
             <td><input type="text" name="txt_website" value="<%=rs.getString("p_website")%>" class="form-control" /></td>
             <td> <input type="submit" name="txt_PlaceSave" value="Update" class="btn btn-info form-control"></td>
             <td>  <input type="submit" name="txt_PlaceSave" value="Delete" class="btn btn-danger form-control"></td>
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
