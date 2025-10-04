<%-- 
    Document   : Add_Payment
    Created on : Jan 7, 2024, 9:42:35 PM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Payment</title>
        <link rel="stylesheet" href="bootstrap.css">
        <script src="validation.js"></script>
        <%@include file="User_Header.jsp" %>
        <style>
            .jumbotron{
                width:50%;
                height:410px;
                margin: auto auto auto auto;
                margin-top: 100px;
                margin-bottom: 40px;
              
               margin-left: 630px;
               border-radius: 10px;
               border: 3px solid black;
                
             }
            body{
                background-image: url("Image/google2.jpg");
                 background-size:100% 800px;
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
        label{
                color:black;
                font-size: 20px;
            }
            span{
                color:red;
            }
        </style>
        
    </head>
    <body>
        <div class="container">
            <div class="jumbotron">
                <form action="Add_Payment" method="post">
                <h2 class="styleh2" style="margin-top:-20px;">Payment</h2><br>
                <label>UPI No</label><span>*</span>
                <input type="text" name="txt_UPINo"  onkeypress="javascript:return isNumber(event)"maxlength="15" placeholder="Enter UPI No" class="form-control"required/> 
                <br>
                <label>Amount</label><span>*</span>
                 <input type="text" name="txt_Amount" value="<%=session.getAttribute("amount")%>"  onkeypress="javascript:return isFloat(event)" placeholder="Enter Amount" class="form-control" required/> 
                <br><br>
                <div class="row">
                    <div class="col-sm-6">
                <input type="submit" name="txt_payment" value="Proceed" class="btn btn-info btn-lg form-control">
                    </div>
                    <div class="col-sm-6">
                        <input type="reset" name="txt_payment" value="Cancel" class="btn btn-danger btn-lg form-control">
                </div>    
                </div>
                </form>
            </div>
        </div>
    </body>
</html>
