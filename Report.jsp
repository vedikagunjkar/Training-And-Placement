<%-- 
    Document   : Report
    Created on : Mar 8, 2024, 12:10:14 PM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Report</title>
         <%@include file="Admin_Header.jsp" %>
         <style type="text/css">
             .jumbotron{
                width:50%;
                /*height:670px;*/
                margin: auto auto auto auto;
                margin-top:50px;
               border-radius: 10px;
               border: 3px solid black;
                
             }
             body{
             background: #83a4d4;  /* fallback for old browsers */
             background: -webkit-linear-gradient(to right, #b6fbff, #83a4d4);  /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to right, #b6fbff, #83a4d4); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
             }
             </style>
    </head>
    <body>
        <br>
        <div class="jumbotron">
        <div class="container">
            <form action="view_report.jsp" method="post">
        <h2 style="text-align: center;margin-top: -30px;">Reports</h2>
        <br>
        <div class="row">
            <div class="col-sm-6">
        
                <input type="submit" name="btn" value="Employee Details" class="btn btn-info form-control">
            </div>
            <br>
            <div class="col-sm-6">
                <input type="submit" name="btn" value="Placement Details" class="btn btn-info form-control">
            </div>
        </div>
        <br>
         <div class="row">
            <div class="col-sm-6">
                <input type="submit" name="btn" value="Courses" class="btn btn-info form-control">
            </div>
             <br>
            <div class="col-sm-6">
                <input type="submit" name="btn" value="Training Services" class="btn btn-info form-control">
            </div>
        </div>
        <br>
         <div class="row">
            <div class="col-sm-6">
                <input type="text" name="type" placeholder="Enter Type" class="form-control">
            </div>
             <br>
            <div class="col-sm-6">
                 <input type="submit" name="btn" value="Training Videos/Notes" class="btn btn-info ">
                
            </div>
        </div>
            </form>
        </div>
        </div>
    </body>
</html>
