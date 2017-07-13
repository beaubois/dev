<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<title>Login Page</title>

</head>
<body>
<div class= "container">
<h3> Enter your details</h3>
<br>
 <form action ="${pageContext.request.contextPath}/LoginServlet" id= "login">
  <div class="input-group" style= "width:40%">
    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
    <input id="username" type="text" class="form-control" name="username" placeholder="Username">
  </div>
  <br>
  <div class="input-group" style= "width:40%">
    <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
    <input id="password" type="password" class="form-control" name="password" placeholder="Password">
  </div>
  <br> 
  <button type="submit" class="btn btn-primary" value="Submit">Submit</button>
</form> 


</div>
</body>
</html>