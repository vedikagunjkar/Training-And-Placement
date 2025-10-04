<%-- 
    Document   : Login
    Created on : Dec 8, 2023, 6:21:12 PM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
       <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">


        <style type="text/css">
            body{
                background-image: url("Image/img1.jpg");
                background-size:100% 800px;
                background-repeat:no-repeat;
            }
            .divMain{
                width:40%;
                height:500px;
                background-color: transparent;
                backdrop-filter:blur(5px);
                border-radius:20px;
                /*border:2px solid white;*/
                margin:auto auto auto auto;
                margin-top:100px;
              /*  background-color: rgba(0,0,0,0.2);*/
                
            }
            .styleh2{
                font-family: "Arial";
                font-weight:"bold";
                text-align: center;
                color:white;
                font-size: 40px;
                padding-top: 20px;
            }
            label{
			font-family: "arial";
			font-weight: "bold";
			font-size: 25px;
			color: white;
                        margin-left: 20px;
                        
		}
                input[type="email"]{
                    background-color:transparent;
                    border:1px solid white;
                    color:white;
                    
                    margin-left: 25px;
                    margin-right: 25px;
                    margin-bottom: 20px;
                    width: 90%;
                    height: 50px;
                    border-radius: 15px;
                    

                }
                input[type="password"]{
                    background-color:transparent;
                    border:1px solid white;
                    color:white;
                    
                    margin-left: 25px;
                    margin-right: 25px;
                    margin-bottom: 20px;
                    width:90%;
                    height: 50px;
                    border-radius: 15px;
                    

                }
                input[type="submit"]
                {
                    background-color: white;
                    color:black;
                    width:90%;
                    height: 50px;
                    margin-left: 20px;
                    margin-right: 20px;
                    margin-bottom: 15px;
                    border-radius: 20px;
                    font-size:25px;
                }
                .stylep{
                    color: white;
                    text-align: center;
                }
                .style_a{
                    margin-left: 20px;
                    color:#5DADE2;
                }
                ::placeholder {
                   color: white;
                   opacity: 1; 
                   padding: 10px;
                }
 
                

        </style>
    </head>
    <body>
        <div class="divMain">
            <h2 class="styleh2">Login</h2>
            <br>
            <label>Email</label><br>
            <div class="input-icons">
                            <i class="glyphicon glyphicon-envelope" style="color:white "></i>
            <input type="email" name="txt_Email" placeholder="Enter email">
            </div>
           
            <br>
            <label>Password</label><br>
            <input type="password" name="txt_Password" placeholder="Enter password"/>
            <br>
            <a href="" class="style_a">Forgot Password</a>
            <br><br>
            <input type="submit" name="btn_login" value="Login"/>
            <br>
            <p class="stylep">Don't have an account?<a href=""style="color:#5DADE2">Create Account</a></p>
        </div>
    </body>
</html>
