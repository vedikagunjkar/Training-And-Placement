<%-- 
    Document   : Add_Company_Details
    Created on : Dec 28, 2023, 8:58:02 PM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add_Company_Details</title>
        <link rel="stylesheet" href="bootstrap.css">
        <script src="validation.js"></script>
        
        <style type="text/css">
            .jumbotron{
                width:60%;
/*                height:640px;*/
                margin: auto auto auto auto;
                margin-top: 20px;
                margin-bottom: 40px;
                
               margin-left: 580px;
               border-radius: 10px;
               border: 3px solid black;
                
                    
            }
            body{
                background-image: url("Image/company.jpg");
/*                 background-size:100% 800px;*/
                 background-size:cover;
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
                
            }
            <%@include file="Admin_Header.jsp" %>
        </style>
    </head>
    <body>
        <div class="container">
            <div class="jumbotron">
                <form action="Add_Company_Details" method="post">
                <h2 class="styleh2 " style="margin-top:-40px;">Add Company Details</h2><br>
                
                <label>Company Registration No</label><span>*</span>
                <input type="text" name="txt_CompanyRegNo" onkeypress="javascript:return isAlphanumric(event)" placeholder="Enter Company Registration No" class="form-control" required/>
                    
                <br>
                <label>Company Name</label><span>*</span>
                <input type="text" name="txt_CompanyName" onkeypress="javascript:return isString(event)" placeholder="Enter Company Name" class="form-control" required/>
                <br>
                <label>Company Image</label><span>*</span>
                <input type="file" name="txt_CompanyImage" class="form-control" required/>
                <br>
                <label>Company Address</label><span>*</span>
                <textarea name="txt_Companyaddress" rows="2" class="form-control" style="border-radius:10px;border:1px solid black;" required></textarea>
                <br>
                <div class="row">
                    <div class="col-sm-6">
                        <label>Email</label><span>*</span>
                        <input type="email" name="txt_CompanyEmail" placeholder="Enter Company Email" class="form-control" required/>
                    </div>
                        <div class="col-sm-6">
                            <label>Contact No</label><span>*</span>
                            <input type="text" name="txt_CompanyContact" onkeypress="javascript:return isContactno(event)" minlength="10" maxlength="10" placeholder="Enter Company Contact " class="form-control" required/>  
                        </div>
                    </div>
                <br>
                <div class="row">
                    <div class="col-sm-6">
                        <label>Owner</label>
                        <input type="text" name="txt_Owner" onkeypress="javascript:return isString(event)" placeholder="Enter Owner Name"class="form-control">
                    </div>
                    <div class="col-sm-6">
                        <label>Website</label><span>*</span>
                        <input type="url" name="txt_Website"  placeholder="Enter Website"class="form-control" style="border:1px solid black;border-radius: 10px;" required>
                    </div>
                    
                </div><br>
                <div class="row">
                    <div class="col-sm-3"></div>
                    <div class="col-sm-6">
                <input type="submit" name="txt_CompSave" value="Save" class="btn btn-info btn-lg form-control">
                    </div>
                    
                </div>
                </form>
                
                
            </div>
        </div>
       
       
    </body>
</html>
