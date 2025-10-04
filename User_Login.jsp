<%-- 
    Document   : User_Login
    Created on : Dec 27, 2023, 8:03:16 PM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User_Login</title>
        <link rel="stylesheet" href="bootstrap.css">
        <script src="validation.js"></script>
        <style type="text/css">
            .jumbotron{
                width:50%;
                margin: auto auto auto auto;
                margin-top:100px;
                border-radius:20px;
                background-color:transparent;
                border: 2px solid white;
                height: 500px;
                box-shadow:10px 10px white;
                backdrop-filter:blur(5px);
                background-color: rgba(0,0,0,0.5);

            }
            body{
                background-image: url("Image/img9.jpg");
                background-size:100% 800px;
                background-repeat:no-repeat;
            }
             .stylep{
                    color: white;
                    text-align: center;
                    font-size: 15px;
                }
                .style_a{
                    margin-left: 10px;
                    color:#5DADE2;
                    font-size:20px;
                }
                label{
                color:white;
                font-family: "arial";
	        font-weight: "bold";
	        font-size: 25px;
                
            }
            .styleh2{
                font-family: "Arial";
                font-weight:"bold";
                text-align: center;
                color:white;
                font-size: 50px;
                
            }
            input[type="email"]{
                    background-color:transparent;
                    border:1px solid white;
                    color:white;
                    border-radius: 10px;
                    
            }
            input[type="password"]{
                    background-color:transparent;
                    border:1px solid white;
                    color:white;
                    border-radius: 10px;
                    
            }
            span{
                color:red;
            }
             
         </style>
    </head>
    <body>
        
            <div class="container">
            <div class="jumbotron">
                <form action="User_Login" method="post">
                <h2 class="styleh2"> User Login</h2>
                <label>Email</label><span>*</span>
                <input type="email" name="txt_UserEmail" onkeypress="javascript:return isAlphanumric(event)" placeholder="Enter Email" class="form-control" required/>
                <br>
                <label>Password</label><span>*</span>
                <input type="password" name="txt_Userpassword" onkeypress="javascript:return isAlphanumric(event)"  placeholder="Enter Password" class="form-control" required/>
                <br><br>
<!--                <a href="User_Signup.jsp" class="style_a">Forgot Password</a><br>
                <br>-->
                <div class="row">
                    <div class="col-sm-6">
                <input type="submit" name="txt_Usubmit" value="Login" class="btn btn-info form-control"/>
                    </div>
                    <div class="col-sm-6">
                <input type="reset" name="txt_Usubmit" value="Cancel" class="btn btn-danger form-control"/><br>
                </div> 
                </div>
                    
                <br>
            <p class="stylep">Don't have an account?<a href="User_Signup.jsp"style="color:#5DADE2">Create Account</a></p>
                </form>
        </div>
        </div>
    </body>
</html>
