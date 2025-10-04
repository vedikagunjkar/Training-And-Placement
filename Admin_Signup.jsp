<%-- 
    Document   : Admin_Signup
    Created on : Dec 22, 2023, 8:07:28 PM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Signup</title>
        <link rel="stylesheet" href="bootstrap.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
        <script src="validation.js"></script>
        <script>
          var check = function(){
              if(document.getElementById('a').value ==
                  document.getElementById('b').value){
                  document.getElementById('message').style.color='green';
                  document.getElementById(message).innerHTML='matching';
                  
              }else{
                  document.getElementById('message').style.color='red';
                  document.getElementById('message').innerHTML='not matching';
              }
              
          }
          
      </script>
        <style type="text/css">
            body{
                background-image: url("Image/place2.jpg");
                background-size:100% 800px;
                background-repeat:no-repeat;
            }
            .jumbotron{
                width:65%;
                border:2px solid white;
                border-radius:10px;
                margin:auto auto auto auto;
                margin-top:40px;
                margin-bottom: 50px;
                height: 690px;
                background-color: transparent;
                backdrop-filter:blur(5px);
                box-shadow:5px 5px whitesmoke;
                background-color: rgba(0,0,0,0.5);   
            }
            .styleh2{
                font-family: "Arial";
                font-weight:"bold";
                text-align: center;
                color:white;
                font-size: 40px;
                /*padding-top: px;*/
            }
            label{
                color:white;
                font-family: "arial";
	        font-weight: "bold";
	        font-size: 20px;
                
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
            input[type="text"]{
                    background-color:transparent;
                    border:1px solid white;
                    color:white;
                    border-radius: 10px;
                    
            }
            input[type="date"]{
                    background-color:transparent;
                    border:1px solid white;
                    color:white;
                    border-radius: 10px;
                    
            }
            ::placeholder {
                   color: black;
                   opacity: 1; 
                   
                }
                ::-ms-input-placeholder { /* Edge 12-18 */
                          color: black;
                       }
              span{
                        color:red;   
                       }
        </style>
        <script>
            function cal() {
           var a=document.getElementById("a").value;
            var b=document.getElementById("b").value;
            
            if(a=="")
            {
               
                document.getElementById("b").disabled = true;
            }
            else
            {
                document.getElementById("b").disabled = false;
            }
    
}
        </script>
    </head>
    <body onload="cal();">
        
        <div class="container">
            <div class="jumbotron">
                <form action="Admin_Signup" method="post">
                <h2 class="styleh2">Admin Registration</h2>
                <label>Full Name</label><span>*</span>
                <input type="text" name="txt_afullname" onkeypress="javascript:return isString(event)"placeholder="Enter Full Name" class="form-control" required/>
                <br>
                <label>Address</label><span>*</span>
                <input type="text" name="txt_Aaddress"  placeholder="Enter Address" class="form-control" required/>
                <br>
                <div class="row">
                    <div class="col-sm-6">
                        <label>Contact No</label><span>*</span>
                        <input type="text" name="txt_acontactnumber" onkeypress="javascript:return isContactno(event)" minlength="10" maxlength="10" placeholder="Enter Contact Number" class="form-control" required/>
                    </div>
                <div class="col-sm-6">
                    <label>Date Of Birth</label><span>*</span>
                <input type="date" name="txt_adate"  class="form-control"required/>
                </div>
                </div>
                <br>
                <label>Email</label><span>*</span>
                <input type="email" name="txt_aemail" placeholder="Enter Email" class="form-control" required/>
                <br>
                <div class="row">
                    <div class="col-sm-6">
                        <label>Password</label><span>*</span>
                        <input type="password" name="txt_apassword"  id="a" onkeyup="cal();" onkeyup="check()"  minlength="8" maxlength="8" placeholder="Enter Password" class="form-control" required/>
                    </div>
                    <div class="col-sm-6">
                
                        <label>Confirm Password</label><span>*</span>
                        <input type="password" name="txt_aconfirmpassword" id="b"  onkeypress="cal()" onkeyup="check()" minlength="8" maxlength="8" placeholder="Enter Password" class="form-control" required/>
                        <label id="message"></label>
                    </div>
                </div>
                
                <div class="row">
                    <div class="col-sm-6">
                 <input type="submit" name="txt_signup" value="Signup" class="btn btn-info form-control"/>
                    </div> 
                    <div class="col-sm-6">
                    <input type="reset" name="txt_signup" value="Cancel" class="btn btn-danger form-control"/>
                </div>
                </div>
                   
                </form>
                     </div>
        </div>
       
        
    </body>
</html>
