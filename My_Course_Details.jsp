<%-- 
    Document   : My_Course_Details
    Created on : Jan 5, 2024, 9:14:59 AM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Course_Details</title>
        <link rel="stylesheet" href="bootstrap.css">
        <script src="validation.js"></script>
        <style>
        .jumbotron{
                width:55%;
                /*height:680px;*/
                margin: auto auto auto auto;
                margin-top: 60px;
                margin-bottom: 40px;
              
               margin-left: 580px;
               border-radius: 10px;
               border: 3px solid black;
                
             }
            body{
                background-image: url("Image/edu4.jpg");
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
            label{
                color:black;
                font-size: 20px;
            }
            span{
                color:red;
            }
            </style>
            <%@include file="Admin_Header.jsp" %>
            
            <script>
                
                function cal()
                {
                    
                    var a=document.getElementById("a").value;
                    var b=document.getElementById("d").value;
                    
                    var c=a*b/100;
                    
                    document.getElementById("t").value=parseInt(a)-parseInt(c);
                    
                }
            </script>
    </head>
    <body>
        <div class="container">
            <div class="jumbotron">
                <form action="My_Course_Details" method="post">
                <h2 class="styleh2" style="margin-top:-20px;">Course Details</h2><br>
                
                <label>Course Name</label><span>*</span>
                <input type="text" name="txt_coursename" onkeypress="javascript:return isString(event)" placeholder="Enter Course Name" class="form-control" required/> 
                <br>
                <label>Course Category</label><span>*</span>
                 <select name="Category" class="form-control" style="border:1px solid black;border-radius:10px" required>
                       <option>Select Category</option>
                      <option>HR</option>
                       <option>Software Developer</option>
                       <option>Tester</option>
                       <option>Data Analyst</option>
                       <option>Web Developer</option>
                       <option>Finance</option>
                         </select>                
                        <br>
                        <label>Amount</label><span>*</span>
                        <input type="text" name="txt_CouAmount" id="a" onkeyup="cal()" placeholder="Enter Amount" onkeypress="javascript:return isFloat(event)" class="form-control" required/>
                <br>
                <label>Discount</label>
                <input type="text" name="txt_discount" id="d" onkeyup="cal()" placeholder="Enter Discount" class="form-control"/>
                <br>
                <label>Total</label>
                <input type="text" name="txt_total" id="t" onkeyup="cal()" placeholder="Total Amount" class="form-control"/>
                <br>
                <div class="row">
                    <div class="col-sm-3"></div>
                    <div class="col-sm-6">
                <input type="submit" name="txt_CouSave" value="Save" class="btn btn-info btn-lg form-control">
                    </div>
                         
                </div>
                </form>
            </div>
        </div>
    </body>
</html>
