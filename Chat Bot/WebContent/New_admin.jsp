<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <title>Add admin</title>
    <style >
  body{
    background-image:url('images/Banking.jpg');
    background-repeat: no-repeat;
    background-attachment: fixed;  
    background-size:100% 100%;
  }
</style>
  </head>
  <body>
     <%
          
          response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");//HTTP 1.1
          response.setHeader("Pragma","no-cache"); //HTTP 1.0
          response.setHeader("Expires","0");//proxies
          if(session.getAttribute("username")==null){
        	  response.sendRedirect("login.jsp");
          }
      %>
        <nav class="navbar navbar-expand-lg navbar-light">
			  <a class="navbar-brand" href="#" style="color:white">Trust Bank</a>
				  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
				    <span class="navbar-toggler-icon"></span>
			  	  </button>
			  <div class="collapse navbar-collapse" id="navbarNav">
			    <ul class="navbar-nav">
			      <li class="nav-item active">
			        <a class="nav-link" href="Moratorium.jsp" style="color:white">Moratorium Applied</a>
			      </li>
			      <li class="nav-item active">
		        		<a class="nav-link" href="Transactiondetail.jsp" style="color:white">User Transaction details</a>
		      	  </li>
		      	  <li class="nav-item active">
		       		 <a class="nav-link" href="Add_user.jsp" style="color:white">New User</a>
		     	  </li>
			      <li class="nav-item active">
			        <a class="nav-link" href="Logout" style="color:white">Logout</a>
			      </li>
			    </ul>
			  </div>
		</nav>
       
        <ul class="pagination justify-content-center" style="margin:20px 0">
		  <li class="page-item "><a class="page-link" href="Add_user.jsp">Add New Account</a></li>
		  <li class="page-item"><a class="page-link" href="Loan_details.jsp">Add Loan</a></li>
		  <li class="page-item active"><a class="page-link" href="New_admin.jsp">Add New Admin </a></li>
	    </ul>
	    
        <div class="container">
	       <form action="Admin" method="Post">
			    <div class="input-group">
				  <div class="input-group-prepend">
				    <label for="Name"class="input-group-text">Username</label>
				  </div>
				  <input type="text"  id="Name" class="form-control" name="uname"required>
				</div>
				<div class="input-group" style="margin-top:10px;">
				  <div class="input-group-prepend">
				    <label for="password" class="input-group-text">Password</label>
				  </div>
				  <input type="password"  id="password" class="form-control" name="pass" required>
				</div>
				<div class="input-group" style="margin-top:10px;">
				  <div class="input-group-prepend">
				    <label for="password" class="input-group-text">Confirm password</label>
				  </div>
				  <input type="password"  id="password" class="form-control" name="pass"required>
				</div>
				<div class="float-right" style="margin-top:10px">
				     <button type="submit" class="btn btn-primary">Submit</button>
				</div>
		   </form>
		</div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
  </body>
</html>