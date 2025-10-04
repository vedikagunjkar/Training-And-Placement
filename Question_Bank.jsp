<%-- 
    Document   : Question_Bank
    Created on : Feb 2, 2024, 3:01:25 PM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Question Bank</title>
        <link rel="stylesheet" href="bootstrap.css">
        <style type="text/css">
         .jumbotron{
                width:30%;
                height:300px;
                margin: auto auto auto auto;
                margin-top: 120px;
                margin-bottom: 40px;
/*                box-shadow:*/
               margin-left: 870px;
               border-radius: 10px;
               border: 3px solid black;
                
             }
             .styleh2{
                font-family: "Arial";
                font-weight:"bold";
                text-align: center;
                color:black;
                font-size: 45px;
            }
            p{
                
                font-size:20px;
            }        
            
             body{
                background-image: url("Image/quest.jpg");
                 background-size:100% 800px;
                background-repeat:no-repeat;
            }
       </style>
    </head>
    <body>
        <div class="jumbotron">
            <h2 class="styleh2" style="margin-top:-20px;">Quiz Session</h2><br>
            <p>Click on the start button to start your quiz and build your knowledge.</p><br>
        <div class="row">
       
            <a href="https://docs.google.com/forms/d/1Z0wHVYctBUZQs0SqLoGHvpJ2JhJpj2EP0ESJpyA-n6E/edit" class="btn btn-success form-control">Start Quiz</a>

             
        </div>
        </div>
    </body>
</html>
