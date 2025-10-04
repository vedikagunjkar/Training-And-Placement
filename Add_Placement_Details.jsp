<%-- 
    Document   : Add_Placement_Details
    Created on : Dec 28, 2023, 9:37:32 PM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html" charset=UTF-8">
        <title>Add_Placement_Details</title>
        <link rel="stylesheet" href="bootstrap.css">
        <script src="validation.js"></script>
        <style type="text/css">
            .jumbotron{
                width:60%;
/*                height:630px;*/
                margin: auto auto auto auto;
                margin-top: 30px;
                margin-bottom: 60px;
               /* background-color: white;*/
               margin-left: 580px;
               border-radius: 10px;
               border: 3px solid black;
                
                    
            }
            body{
                background-image: url("Image/placement2.jpg");
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
            input[type="date"]{
                  
                    border:1px solid black;
                   
                    border-radius: 10px;
                    
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
                <form action="Add_Placement_Details" method="post">
                <h2 class="styleh2" style="margin-top:-30px;">Add Placement Details</h2><br>
                
                <label>Designation</label><span>*</span>
                <select name="Designation" class="form-control" style="border:1px solid black;border-radius: 10px; required">
                     <option>Select Designation</option>
                    <option>HR</option>
                     <option>Software Developer</option>
                      <option>Tester</option>
                       <option>Data Analyst</option>
                        <option>Web Developer</option>
                        <option>Finance</option>
                </select>
                <br>
                <label>Package</label><span>*</span>
                <input type="text" name="txt_Package" onkeypress="javascript:return isAlphanumric(event)"  placeholder="Enter Package" class="form-control" required/>
                <br>
                <label>Image</label><span>*</span>
                <input type="file" name="txt_PaclementImg"  class="form-control"required/>
                
                <br>
                <div class="row">
                    <div class="col-sm-6">
                        <label>Start Date</label><span>*</span>
                        <input type="date" name="txt_StartDate"  class="form-control" required/>
                    </div>
                        <div class="col-sm-6">
                            <label>End Date</label><span>*</span>
                            <input type="date" name="txt_EndDate"  class="form-control" required/>  
                        </div>
                    </div>
                <br>
                <label>Location</label><span>*</span>
                <input list="browsers" name="location" id="browser" class="form-control" style="border:1px solid black;border-radius: 10px;" required>
                <datalist id="browsers">
                  <option value="Pune">
                  <option value="Mumbai">
                  <option value="Goa">
                  <option value="Kolhapur">
                  <option value="Gadhinglaj">
                   <option value="Kolkata">
                </datalist>
               <br>
               <div class="row">
                   <div class="col-sm-12">
                       <label>Website</label><span>*</span>
                       <input type="url" name="txt_website"   placeholder="Enter Website"class="form-control" required/> 
                   </div>
               </div>
               <br>
                <div class="row">
                    <div class="col-sm-3"></div>
                    <div class="col-sm-6">
                        <input type="submit" name="txt_PlaceSave"  value="Save" class="btn btn-info btn-lg form-control">
                    </div>
                    
                </div>
                </form>
            </div>
        </div>
        
    </body>
</html>
