<%-- 
    Document   : Educational_Details
    Created on : Jan 2, 2024, 8:49:56 PM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Educational_Details</title>
        <link rel="stylesheet" href="bootstrap.css">
        <script src="validation.js"></script>
        <style type="text/css">
             .jumbotron{
                width:60%;
                height:580px;
                margin: auto auto auto auto;
                margin-top: 40px;
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
             <%@include file="User_Header.jsp" %>
    </head>
    <body>
 <div class="container">
            <div class="jumbotron">
                <form action="Educational_Details" method="post">
                <h2 class="styleh2" style="margin-top:-20px;">Educational Details</h2><br>
                
                <label>College Name</label><span>*</span>
                <input type="text" name="txt_CollegeName" onkeypress="javascript:return isString(event)" placeholder="Enter College Name" class="form-control" required/>
                   <br>
                   <label>Board Name</label><span>*</span>
                   <input type="text" name="txt_boardName" onkeypress="javascript:return isString(event)" placeholder="Enter Board Name" class="form-control" required/> 
                        <br>
                        <div class="row">
                            <div class="col-sm-6">
                                <label>Year Of Passing</label><span>*</span>
                                <input type="text" name="txt_YearOFPassing" onkeypress="javascript:return isAlphanumric(event)" placeholder="Enter Year of passing" class="form-control" required/>
                            </div>
                            
                <div class="col-sm-6">
                    <label>Obtained Marks</label><span>*</span>
                <input type="text" name="txt_ObtMarks" onkeypress="javascript:return isNumber(event)"  placeholder="Enter Obtained Marks"class="form-control" required/>
                        </div>
                        </div>
                <br>
                <label>Percentage</label><span>*</span>
                <input type="text" name="txt_percentage" onkeypress="javascript:return isFloat(event)" placeholder="Enter Percentage" class="form-control" required/>
                <br>
                <div class="row">
                    <div class="col-sm-3"></div>
                <div class="col-sm-6">
                <input type="submit" name="txt_EduSave" value="Save" class="btn btn-info btn-lg form-control">
                </div>
                
                </div>
                </form>
            </div>
        </div>

    </body>
</html>
