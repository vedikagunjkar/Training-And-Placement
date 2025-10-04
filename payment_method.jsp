<%-- 
    Document   : pyment_method
    Created on : Jan 25, 2024, 10:02:10 AM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Payment Method</title>
        <link rel="stylesheet" href="bootstrap.css">
        <script src="validation.js"></script>
        <style>
        .jumbotron{
                width:55%;
                height:300px;
                margin: auto auto auto auto;
                margin-top: 100px;
                margin-bottom: 40px;
              
               margin-left: 580px;
               border-radius: 10px;
               border: 3px solid black;
                
             }
            body{
                background-image: url("Image/pay.jpg");
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
                    color:white;
                    border-radius: 10px;
                    
                    
            }
            label{
                color:black;
                font-size: 20px;
            }
            </style>
            <%@include file="User_Header.jsp" %>
    </head>
    <body>
        <div class="container">
            <div class="jumbotron">
               
                <h2 class="styleh2" style="margin-top:-20px;">Payment Method</h2><br>
                        
                
                <div class="row">
                    <div class="col-sm-12">
                        <a href="Add_Payment_Details.jsp" class="btn btn-success form-control"> Card Payment</a>
                    </div>
                    <br>
                </div>
                <br>
                <div class="row">
                    <div class="col-sm-12">
                        <a href="Add_Payment.jsp" class="btn btn-success form-control"> UPI Payment</a>
                    </div>
                    
                </div>
               
            </div>
        </div>
    </body>
</html>
