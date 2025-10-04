<%-- 
    Document   : List_Company_Details
    Created on : Jan 9, 2024, 7:47:00 PM
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
        <title>Company List</title>
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
            }
            table{
                margin-right: 20px;
                
            }            
            
           
                </style>
    </head>
    <body>
        <br>
<!--        <div class="container" style="border:2px solid black;padding: 10px;background-color: white;">-->
        <h2 class="styleh2">Company Details List</h2>
        <br>
        <table class="table  table-striped " >
  <thead class="thead-dark">
    <tr>
      <th scope="col">Id</th>
      <th scope="col">RegNo</th>
      <th scope="col">Name</th>
      <th scope="col">Image</th>
      <th scope="col">Address</th>
      <th scope="col">Email</th>
      <th scope="col">Contact</th>
      <th scope="col">Owner</th>
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
           String sql="Select * from Add_Company_Details_tbl";
           ResultSet rs=st.executeQuery(sql);
           while(rs.next())
           {
           %>
           <tr>
                <form action="Add_Company_Details" method="post">
        <td><%=rs.getString("com_id")%> </td>
          <input type="hidden" name="txt_compid" value="<%=rs.getString("com_id")%>" />
          <td><input type="text" name="txt_CompanyRegNo" value="<%=rs.getString("com_RegNo")%>" class="form-control"/></td>
          <td><input type="text" name="txt_CompanyName" value="<%=rs.getString("com_name")%>" class="form-control" /></td>
           <td><div class="row">
                       <div class="col-sm-6">
                   <input type="file" name="txt_CompanyImage" value="<%=rs.getString("com_img")%>" class="form-control"/>
                   </div>
                   <div class="col-sm-6">
                   <img src='image2/<%=rs.getString("com_img")%>' width="65" height="65"/>
                   </div>
                   </div></td>
          <td><input type="text" name="txt_Companyaddress" value="<%=rs.getString("com_address")%>" class="form-control" /></td>
          <td><input type="text" name="txt_CompanyEmail" value="<%=rs.getString("com_email")%>" class="form-control" /></td>
          <td><input type="text" name="txt_CompanyContact" value="<%=rs.getString("com_contact")%>" class="form-control" /></td>
          <td><input type="text" name="txt_Owner" value="<%=rs.getString("com_owner")%>" class="form-control" /></td>
          <td><input type="text" name="txt_Website" value="<%=rs.getString("com_website")%>" class="form-control"/></td>
          <td><input type="submit" name="txt_CompSave" value="Update" class="btn btn-info form-control"></td>
          <td><input type="submit" name="txt_CompSave" value="Delete" class="btn btn-danger form-control"></td>
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
