<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<title>Login Page</title>

<!--  <style>

input.ng-invalid.ng-touched, textarea.ng-invalid.ng-touched{

border: 2px solid red;
}

</style> -->

</head>


<body>
<div class= "container" >
<h3> Enter your details</h3>

<br>
<div id = 'form'>

 <form action ="LoginServlet" name = "login" id= "login" method = "post" ng-app= "">
 
 
  <div class="input-group" style= "width:40%">
    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
    
    <input id="email" 
    	   type = "text" 
    	   class="form-control" 
    	   name="email" 
    	   placeholder="Email" 
    	   ng-model="user.email"
    	   required 
    	   ng-pattern="/^(.*[\w])(?=.@)(.*[\w])([\.])(.*[\w])$/"/>
  </div>
  
  
 	<div ng-show= "login.email.$error.required && login.email.$touched">
  		<small style ="color: red; display: block;"> Email cannot be blank </small>
    </div>
    
    <div ng-show= "login.email.$dirty && login.email.$error.pattern">
  		<small style ="color: red; display: block;"> 
  		Email must be of format <br> abc@123.xyz or abc@123.xy.z </small> 
    </div>
    
<br>

  <div class="input-group" style= "width:40%">
    <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
    
    <input id="password" 
    	   type="password" 
    	   class="form-control" 
    	   name="password" 
    	   placeholder="Password" 
    	   ng-model="user.password" 
    	   required
    	   ng-pattern="/^(?=.*\d)(?=.*[A-Z])(?=.*[!@#$%^&*]).{6,40}$/"/>
  </div>
  
  
  	<div ng-show= "login.password.$error.required && login.password.$touched">
  		<small style ="color: red; display: block;"> Password cannot be blank </small>
    </div>
    
    <div ng-show= "login.password.$dirty && login.password.$error.minlength">
  		<small style ="color: red; display: block;"> 
  		 </small>
    </div>
    
    <div ng-show= "login.password.$dirty && login.password.$error.pattern">
  		<small style ="color: red; display: block;"> 
  		Password must be atleast 6 characters long, and contain one number,one uppercase letter and one special character </small>
    </div>

<br> 
 
  <button type="submit" ng-disabled="login.$invalid" class="btn btn-primary" value="Submit">Submit</button>

 </form> 
</div>

<div id = "logins">

<br>

<p> logins are ABC123@abc.com and DEF456@def.com </p>



</div>

</div>
</body>






</html>