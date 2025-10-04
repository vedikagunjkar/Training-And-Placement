<%-- 
    Document   : Add_Training_Videos_And_Notes
    Created on : Dec 30, 2023, 10:12:49 AM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add_Training_Videos_And_Notes</title>
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
                background-image: url("Image/tra.jpg");
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
            input[type="url"]{
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
                <form action="Add_Training_Videos_And_Notes" method="post">
                <h2 class="styleh2" style="margin-top:-20px;">Add Training Videos And Notes</h2><br>
               
             
                <label>Service Name</label><span>*</span>
                <select name="txt_Services" class="form-control" style="border:1px solid black;border-radius: 10px" required>
                       <option>Select Services</option>
                      <option>HR</option>
                       <option>Software Developer</option>
                       <option>Tester</option>
                       <option>Data Analyst</option>
                       <option>Web Developer</option>
                       <option>Finance</option>
                         </select>

                   <br>
                        <label>Title</label>
                        <input type="text" name="txt_VideoTitle"onkeypress="javascript:return isString(event)" placeholder="Enter Video Title" class="form-control"/> 
                <br>
                <div class="row">
                    <div class="col-sm-6">
                        <label>Video</label>
                        <input type="url" name="txt_Video"  class="form-control" />
                    </div>
                    <div class="col-sm-6">
                        <label>Notes</label>
                        <input type="file" name="txt_notes" class="form-control" />
                    </div>
                </div>
                <br>
                <div class="row">
                    <div class="col-sm-12">
                        <label>Type</label><span>*</span>
                        <select name="txt_Type" class="form-control" style="border:1px solid black;border-radius: 10px" required>
                       <option>Select Type</option>
                      <option>Video</option>
                       <option>Notes</option>
                      
                         </select>

                   
                    </div>
                </div>
                <br>
                <label>Description</label><span>*</span>
                <textarea name="txt_VideoDescription" rows="2" onkeypress="javascript:return isAlphanumric(event)" class="form-control" style="border-radius:10px;border:1px solid black;" required></textarea>
                <br>
                <div class="row">
                    <div class="col-sm-3"></div>
                    <div class="col-sm-6">
                <input type="submit" name="txt_tra" value="Save" class="btn btn-info btn-lg form-control">
                    </div>
                    
                </div>      
                </form>
            </div>
        </div>
    </body>
</html>
