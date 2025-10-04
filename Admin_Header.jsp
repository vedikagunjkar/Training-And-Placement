<%-- 
    Document   : Admin_Header
    Created on : Jan 13, 2024, 9:27:19 AM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Header</title>
        <link rel="stylesheet" href="bootstrap.css">
        
        <style>
           
        </style>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-dark">
  <a class="navbar-brand" style="color: white;"  href="#">Training & Placement</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
          <a class="nav-link" style="color: white;" href="Add_Employee_Details.jsp">Employee Details<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" style="color: white;" href="Add_Company_Details.jsp">Company Details</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" style="color: white;" href="Add_Placement_Details.jsp">Placement Details</a>
      </li>
      <li class="nav-item">
          <a class="nav-link" style="color: white;" href="My_Course_Details.jsp">Course Details</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" style="color:white;" href="Add_Training_Services.jsp">Training Services</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" style="color: white;" href="Add_Training_Videos_And_Notes.jsp">Training Videos & Notes</a>
      </li>
      
      <li class="nav-item">
        <a class="nav-link" style="color: white;" href="Add_Question_Bank.jsp">Question Bank</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" style="color: white;" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
         List Pages
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="List_Employee_Details.jsp"> Employee Details List</a>
          <a class="dropdown-item" href="List_Company_Details.jsp">Company Details List</a>
          <a class="dropdown-item" href="List_Job.jsp">Job List</a>
          <a class="dropdown-item" href="List_My_Course_Details.jsp">Course Details List</a>
          <a class="dropdown-item" href="List_Training_Services.jsp">Training Services List</a>
          <a class="dropdown-item" href="List_Question_Bank.jsp">Question Bank List</a>
          <a class="dropdown-item" href="List_Training_Video_And_Notes.jsp">Training Videos And Notes List</a>
          <a class="dropdown-item" href="Applied_Student_List.jsp">Applied Student List</a>
          <a class="dropdown-item" href="Admin_Feedback_List.jsp">Feedback List</a>
          
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link" style="color: white;" href="Report.jsp">Reports</a>
      </li>
        </ul>
        <a class="btn btn-danger" style="color:scrollbar" href="index.html">Logout</a>
  </div>
</nav>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </body>
</html>
