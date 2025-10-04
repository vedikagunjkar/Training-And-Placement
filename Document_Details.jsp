<%-- 
    Document   : Document_Details
    Created on : Jan 2, 2024, 9:25:09 PM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Document_Details</title>
        <link rel="stylesheet" href="bootstrap.css">
        <script src="validation.js"></script>
        <style>
         .jumbotron{
                width:60%;
                height:600px;
                margin: auto auto auto auto;
                margin-top: 20px;
                margin-bottom: 40px;
              
               margin-left: 580px;
               border-radius: 10px;
               border: 3px solid black;
                
             }
            body{
                background-image: url("Image/doc.jpg");
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
            input[type="file"]{
                   
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
                <form action="Document_Details" method="post">
                <h2 class="styleh2" style="margin-top:-20px;">Document Details</h2><br>
               
                <label>Photo</label><span>*</span>
                <input type="file" name="txt_DOCPhoto" class="form-control" required/>
                   <br>
                   <label>Resume</label><span>*</span>
                   <input type="file" name="txt_Resume" class="form-control" required/> 
                        <br>
                        <div class="row">
                            <div class="col-sm-6">
                                <label>Aadhar Card</label><span>*</span>
                                <input type="text" name="txt_AadharCard" onkeypress="javascript:return isNumber(event)"  maxlength="12"placeholder="Enter Aadhar Card " class="form-control" required/>
                            </div>
                            
                <div class="col-sm-6">
                    <label>PAN Card</label>
                    <input type="text" name="txt_PANCard" pattern="[A-Z]{3}[ABCFGHLJPTF]{1}[A-Z]{1}[0-9]{4}[A-Z]{1}" onkeypress="javascript:return isAlphanumric(event)" maxlength="10" placeholder="Enter PAN Card"class="form-control" />
                        </div>
                        </div>
                <br>
                <label>Bank Passbook</label><span>*</span>
                <input type="file" name="txt_BankPassbook"  placeholder="Enter Bank Details" class="form-control" required/>
                <br>
                <div class="row">
                    <div class="col-sm-3"></div>
                    <div class="col-sm-6">
                <input type="submit" name="txt_DocSave" value="Save" class="btn btn-info btn-lg form-control">
                    </div>
                    
                </div>
                </form>
            </div>
        </div>

 
    </body>
</html>
