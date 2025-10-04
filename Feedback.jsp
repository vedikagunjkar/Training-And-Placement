<%-- 
    Document   : Feedback
    Created on : Jan 4, 2024, 9:50:29 AM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Feedback</title>
        <link rel="stylesheet" href="bootstrap.css">
         <%@include file="User_Header.jsp" %>
        <script src="validation.js"></script>
        <style type="text/css">
            .jumbotron{
                width:55%;
                /*height:620px;*/
              margin: auto auto auto auto;
                margin-top: 40px;
                margin-bottom: 40px;
              
              margin-left: 620px;
               border-radius: 10px;
               border: 3px solid black;
                
             }
            body{
                background-image: url("Image/feed.jpg");
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
                    color:black;
                    border-radius: 10px;
                    
                    
            }
             input[type="email"]{
                   
                    border:1px solid black;
                    color:black;
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
                     <form action="Feedback" method="post">
                     <h2 class="styleh2" style="margin-top:-30px;">Feedback</h2><br>
                     <label>Name</label><span>*</span>
                     <input type="text" name="txt_feedname" onkeypress="javascript:return isString(event)"placeholder="Enter  Name" class="form-control" required/> 
                <br>
                <label>Email</label><span>*</span>
                <input type="email" name="txt_feedemail"  placeholder="Enter email" class="form-control" required/>
                <br>
                
                <label>Contact</label>
                <input type="text" name="txt_feedcontact" minlength="10" maxlength="10" onkeypress="javascript:return isContactno(event)"  placeholder="Enter contact" class="form-control"/>
                <br>
                <label>Description</label><span>*</span>
                <textarea name="txt_feeddescription" rows="3" class="form-control" minlength="20" onkeypress="javascript:return isAlphanumric(event)" style="border-radius:10px;border:1px solid black;" required></textarea>
                <br>
                <div class="row">
                    <div class="col-sm-6">
                <input type="submit" name="txt_feedsubmit" value="Submit" class="btn btn-info btn-lg form-control">
                    </div>
             <div class="col-sm-6">
                <input type="reset" name="txt_feedsubmit" value="Cancel" class="btn btn-danger btn-lg form-control">
                </div>   
                </div>
                </form>
            </div>
            </div>
            
            
       
           
        

    </body>
</html>
