<%-- 
    Document   : Add_Employee_Details
    Created on : Dec 28, 2023, 10:10:41 AM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add_Employee_Details</title>
                <link rel="stylesheet" href="bootstrap.css">
                <script src="validation.js"></script>
        <style type="text/css">
            .jumbotron{
                width:60%;
/*                height:600px;*/
                margin: auto auto auto auto;
                margin-top: 40px;
                margin-bottom: 40px;
               margin-left: 580px;
               border-radius: 10px;
               border: 3px solid black;
                
                    
            }
            body{
                background-image: url("Image/empy.jpg");
/*                 background-size:100% 800px;*/
          background-size: cover;
                background-repeat:no-repeat;
            }
            .styleh2{
                font-family: "Arial";
                font-weight:"bold";
                text-align: center;
                color:black;
                font-size: 30px;
            }
            input[type="text"]{
                  
                    border:1px solid black;
                  
                    border-radius: 10px;
                    
            }
            input[type="email"]{
                  
                    border:1px solid black;
                    
                    border-radius: 10px;
                    
            }
            input[type="file"]{
            
                    border:1px solid black;
                    
                    border-radius: 10px;
                    
            }
            span{
                color:red;
                /*font-size:25px;*/
            }
        </style>
         <%@include file="Admin_Header.jsp" %>
    </head>
    <body>
        <div class="container">
            <div class="jumbotron">
                <form action="Add_Employee_Details" method="post">
                <h2 class="styleh2" style="margin-top:-20px;">Add Employee Details</h2><br>
                 
                 <label>Employee Name</label><span>*</span>
                 <input type="text" name="txt_EmployeeName" onkeypress="javascript:return isString(event)" placeholder="Enter Employee Name" class="form-control" required/>
                <br>
                
                <label>Employee Address</label><span>*</span>
                <textarea name="txt_Empaddress" rows="2" class="form-control"  style="border-radius:10px;border:1px solid black; required"></textarea>
                <br>
                <div class="row">
                    <div class="col-sm-6">
                        <label>Email</label><span>*</span>
                        <input type="email" name="txt_EmployeeEmail"   placeholder="Enter Employee Email" class="form-control" required/>
                    </div>
                        <div class="col-sm-6">
                            <label>Contact No</label><span>*</span>
                            <input type="text" name="txt_EmployeeContact" onkeypress="javascript:return isContactno(event)" minlength="10" maxlength="10" placeholder="Enter Employee Contact " class="form-control" required/>  
                        </div>
                    </div>
                <br>
                <div class="row">
                    <div class="col-sm-6">
                        <label>Photo</label><span>*</span>
                        <input type="file" name="txt_EmployeePhoto"  class="form-control required">
                    </div>
                    <div class="col-sm-6">
                        <label>Gender</label>
                        <br>
                        <input type="radio"  name="gender" value="Male" >Male
                        <input type="radio" name="gender" value="Female" >Female
                        <input type="radio" name="gender" value="Other" >Other
                        
                        
                </div>
                </div>
                <br>
                <div class="row">
                    <div class="col-sm-3"></div>
                    <div class="col-sm-6">
                <input type="submit" name="txt_EmpSave" value="Save" class="btn btn-info btn-lg form-control">
                    </div>
                    
                        
                </div>  
                </form>
        </div>
        </div>
       
    </body>
</html>
