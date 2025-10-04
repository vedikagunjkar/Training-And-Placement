<%-- 
    Document   : Add_Payment_Details
    Created on : Jan 7, 2024, 9:24:47 PM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Payment Details</title>
        <link rel="stylesheet" href="bootstrap.css">
        <script src="validation.js"></script>
        <style>
        .jumbotron{
                width:55%;
                height:580px;
                margin: auto auto auto auto;
                margin-top: 60px;
                margin-bottom: 40px;
              
               margin-left: 610px;
               border-radius: 10px;
               border: 3px solid black;
                
             }
            body{
                background-image: url("Image/card1.jpg");
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
                <form action="Add_Payment_Details" method="post">
                <h2 class="styleh2" style="margin-top:-30px;">Payment</h2><br>
                <label>Card Holder Name</label><span>*</span>
                <input type="text" name="txt_cardHolder" onkeypress="javascript:return isString(event)" placeholder="Enter Card Holder Name" class="form-control" required/> 
                <br>
                <div class="row">
                    <div class="col-sm-6">
                        <label>Card Number</label><span>*</span>
                        <input type="text" name="txt_cardNo" maxlength="16" onkeypress="javascript:return isNumber(event)"placeholder="Enter Card Number" class="form-control" required/> 
                    </div>
                    <div class="col-sm-6">
                        <label>Expiry Date</label><span>*</span>
                        <input type="date" name="txt_ExpiryDate"  class="form-control" required/> 
                    </div>
                </div>
                  <br>
                  <label>CVV Number</label><span>*</span>
                  <input type="text" name="txt_CVVno" onkeypress="javascript:return isNumber(event)" maxlength="3" placeholder="Enter CVV Number" class="form-control" required/>
                <br>
                 
                <label>Amount</label><span>*</span>
                <input type="text" name="txt_amount" value="<%=session.getAttribute("amount")%>" onkeypress="javascript:return isFloat(event)" placeholder="Enter Amount" class="form-control" required/>
                <br>
                <div class="row">
                    <div class="col-sm-6">
                <input type="submit" name="txt_pay" value="Proceed" class="btn btn-info btn-lg form-control">
                    </div>
                    <div class="col-sm-6">
                        <input type="reset" name="txt_pay" value="Cancel" class="btn btn-danger btn-lg form-control">
                </div>   
                </div>
                </form>
            </div>
        </div>
    </body>
</html>
