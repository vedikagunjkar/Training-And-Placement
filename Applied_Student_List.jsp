<%-- 
    Document   : Applied_Student_List
    Created on : Jan 1, 2024, 9:58:34 PM
    Author     : asus
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Applied Student List</title>
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
        <h2 class="styleh2">Applied Student List</h2>
        <br>
        <table class="table table-striped" >
  <thead class="thead-dark">
    <tr>
      <th scope="col">Id</th>
      <th scope="col">Name</th>
      <th scope="col">Address</th>
      <th scope="col">Email</th>
      <th scope="col">Contact</th>
      <th scope="col">Educational Details</th>
      <th scope="col">Percentage</th>
      <th scope="col">Document Details</th>
      <th scope="col">Resume</th>
    </tr>
  </thead>
  <tbody>
      
    <%
       Connection cn=null;
    Statement st=null;
    int i=1;
try
        {
            Class.forName("com.mysql.jdbc.Driver");
            cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/New_Online_Training_And_Placement_System","root","root");
            st=cn.createStatement();
            String sql="SELECT personal_details_tbl.per_name,personal_details_tbl.per_address,personal_details_tbl.per_email,personal_details_tbl.per_contact,educational_details_tbl.board_name,educational_details_tbl.percentage,document_details_tbl.aadhar_card,document_details_tbl.d_resume FROM  personal_details_tbl INNER JOIN educational_details_tbl ON personal_details_tbl.per_id = educational_details_tbl.e_id INNER JOIN document_details_tbl ON educational_details_tbl.e_id = document_details_tbl.d_id ORDER BY personal_details_tbl.per_id";
            ResultSet rs=st.executeQuery(sql);
            while(rs.next())
            {
            
            
    

    %>  
    <tr>
      <th scope="row"><%=i++%></th>
      <td><%=rs.getString("per_name")%></td>
      <td><%=rs.getString("per_address")%></td>
      <td><%=rs.getString("per_email")%></td>
      <td><%=rs.getString("per_contact")%></td>
      <td><%=rs.getString("board_name")%></td>
      <td><%=rs.getString("percentage")%></td>
      <td><%=rs.getString("aadhar_card")%></td>
      <td><%=rs.getString("d_resume")%></td>
      
    </tr>
     <%
     }
        }catch(Exception ex)
        {
  
        }
     %>
  </tbody>
</table>
        </div>
    </body>
</html>
