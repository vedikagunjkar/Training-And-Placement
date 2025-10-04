

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add_Training_Services</title>
         <link rel="stylesheet" href="bootstrap.css">
         <script src="validation.js"></script>
         <style type="text/css">
             .jumbotron{
                width:60%;
                /*height:570px;*/
                margin: auto auto auto auto;
                margin-top: 40px;
                margin-bottom: 40px;
              
               margin-left: 580px;
               border-radius: 10px;
               border: 3px solid black;
                
             }
            body{
                background-image: url("Image/img6.jpeg");
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
            input[type="file"]{
                   
                    border:1px solid black;
                    border-radius: 10px;
                    
                    
            }
            span{
                color:red;
            }
         </style>
         <%@include file="Admin_Header.jsp" %>
    </head>
    <body>
        <div class="container">
            <div class="jumbotron">
                <form action="Add_Training_Services" method="post">
                <h2 class="styleh2" style="margin-top:-20px;">Add Training Services</h2><br>
                
                <label>Service Name</label><span>*</span>
                <select name="txt_Services" class="form-control" style="border:1px solid black;border-radius:10px" required>
                       <option>Select Services</option>
                      <option>HR</option>
                       <option>Software Developer</option>
                       <option>Tester</option>
                       <option>Data Analyst</option>
                       <option>Web Developer</option>
                       <option>Finance</option>
                         </select>
                <br>
                <label>Service Image</label><span>*</span>
                <input type="file" name="txt_trainingImage" class="form-control"/>
                <br>
                <label>Amount</label><span>*</span>
                <input type="text" name="txt_Amount" onkeypress="javascript:return isFloat(event)" placeholder="Enter Amount" class="form-control" required/>
                <br>
                <label>Description</label><span>*</span>
                <textarea name="txt_TraDescription" rows="4" onkeypress="javascript:return isAlphanumric(event)" class="form-control" style="border-radius:10px;border:1px solid black;" required></textarea>
                <br>
                <div class="row">
                    <div class="col-sm-3"></div>
                    <div class="col-sm-6">
                <input type="submit" name="txt_training" value="Save" class="btn btn-info btn-lg form-control">
                    </div>
                       
                </div>
                </form>
            </div>
        </div>
    </body>
</html>
