<%-- 
    Document   : Personal_Details
    Created on : Jan 1, 2024, 10:16:39 PM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Personal Details</title>
        <link rel="stylesheet" href="bootstrap.css">
        <script src="validation.js"></script>
        <style type="text/css">
             .jumbotron{
                width:60%;
                /*height:670px;*/
                margin: auto auto auto auto;
                margin-top: 20px;
                margin-bottom: 40px;
              
               margin-left: 580px;
               border-radius: 10px;
               border: 3px solid black;
                
             }
            body{
                background-image: url("Image/per3.jpg");
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
            input[type="date"]{
                    
                    border:1px solid black;
                    border-radius: 10px;
                    
            }
            label{
                color:black;
                font-size: 20px;
            }
            span{
                color:red;
            }
         </style>
          <%@include file="User_Header.jsp" %>
    </head>
    <body>
        <div class="container">
            <div class="jumbotron">
                <form action="Personal_Details" method="post">
                <h2 class="styleh2"style="margin-top: -30px;">Personal Details</h2>
                
                <label>Full Name</label><span>*</span>
                <input type="text" name="txt_PFullName" onkeypress="javascript:return isString(event)" placeholder="Enter Full Name" class="form-control" required/>
                   <br>
                   <div class="row">
                       <div class="col-sm-6">
                           <label>Email</label><span>*</span>
                           <input type="email" name="txt_Pemail"  placeholder="Enter Email" class="form-control" required/> 
                       </div>
                       <div class="col-sm-6">
                
                           <label>Contact</label><span>*</span>
                           <input type="text" name="txt_PContactNo" onkeypress="javascript:return isContactno(event)" minlength="10" maxlength="10" placeholder="Enter Contact Number" class="form-control" required/>
                       </div>
                   </div>
                <br>
                <label>Address</label><span>*</span>
                <textarea name="txt_Paddress" rows="2" class="form-control" style="border-radius:10px;border:1px solid black;" required></textarea>
                <br>
                <div class="row">
                    <div class="col-sm-6">
                        <label>Date Of Birth</label><span>*</span>
                        <input type="date" name="txt_pDate"  class="form-control" required/>
                    </div>
                    <div class="col-sm-6">
                        <label>Gender</label>
                <br>
                        <input type="radio" name="txt_gender" value="Male" >Male
                        <input type="radio" name="txt_gender" value="Female" >Female
                        <input type="radio" name="txt_gender" value="Other" >Other
                        
                    </div>
                </div>
                <br>
                <label>Photo</label><span>*</span>
                <input type="file" name="txt_pPhoto" class="form-control" required/>
                <br>
                <div class="row">
                    <div class="col-sm-3"></div>
                    <div class="col-sm-6">
                <input type="submit" name="txt_perSave" value="Save" class="btn btn-info btn-lg form-control">
                    </div>
                    
                </div>
                </form>
            </div>
        </div>
    </body>
</html>
