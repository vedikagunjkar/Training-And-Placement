<%-- 
    Document   : Add_Question_Bank
    Created on : Jan 8, 2024, 7:57:55 PM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Question Bank</title>
        <link rel="stylesheet" href="bootstrap.css">
        <script src="validation.js"></script>
        <style>
        .jumbotron{
                width:55%;
                height:650px;
                margin: auto auto auto auto;
                margin-top: 20px;
                margin-bottom: 40px;
/*                box-shadow:*/
               margin-left: 580px;
               border-radius: 10px;
               border: 3px solid black;
                
             }
            body{
                background-image: url("Image/quest.jpg");
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
    </head>
    <body>
        <div class="container">
            <div class="jumbotron">
                <form action="Add_Question_Bank" method="post">
                <h2 class="styleh2" style="margin-top:-40px;">Add Question Bank</h2>
                
                <div class="row">
                    <div class="col-sm-12">
                        <label>Q.No</label><span>*</span>
                        <input type="text" name="txt_Qno" placeholder="Enter Question No" onkeypress="javascript:return isNumber(event)" class="form-control" required/>
                </div>
                </div>
                    
                <br>
                <div class="row">
                    <div class="col-sm-12">
                        <label>Question</label><span>*</span>
                <textarea name="txt_question" rows="2"  placeholder="Enter Question" class="form-control" onkeypress="javascript:return isAlphanumric(event)" style="border-radius:10px;border:1px solid black;"required></textarea>
                
            </div>
                </div>
                <br>
                <div class="row">
                    <div class="col-sm-6">
                        <label>Option A</label><span>*</span>
                        <input type="text" name="txt_optionA" placeholder="Enter Option A" onkeypress="javascript:return isAlphanumric(event)" class="form-control" required/>
                       
                    </div>
                    <div class="col-sm-6">
                        <label> Option B</label><span>*</span>
                        <input type="text" name="txt_optionB" placeholder="Enter Option B" onkeypress="javascript:return isAlphanumric(event)" class="form-control" required/>
                       
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-6">
                        <label>Option C </label><span>*</span>
                        <input type="text" name="txt_optionC" placeholder="Enter Option C" onkeypress="javascript:return isAlphanumric(event)" class="form-control" required/>
                    </div>
                    <div class="col-sm-6">
                        <label>Option D</label><span>*</span>
                        <input type="text" name="txt_optionD" placeholder="Enter Option D" onkeypress="javascript:return isAlphanumric(event)" class="form-control" required/>
                    </div>
                </div>
                <br>
                <div class="row">
                    <div class="col-sm-12">
                        <label>Answer</label><span>*</span>
                        <input type="text" name="txt_answer" placeholder="Enter Correct Answer" onkeypress="javascript:return isAlphanumric(event)" class="form-control" required/>
                    </div>
                </div><br>
                <div class="row">
                    <div class="col-sm-3"></div>
                    <div class="col-sm-6">
                <input type="submit" name="txt_que" value="Submit" class="btn btn-info btn-lg form-control">
                    </div>
                    
            </div>
                </form>
            </div>
                
        </div>
    </body>
</html>
