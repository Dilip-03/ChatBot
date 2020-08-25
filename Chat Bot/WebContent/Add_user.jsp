<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Add_user</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
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
		  <li class="page-item active"><a class="page-link" href="Add_user.jsp">Add New Account</a></li>
		  <li class="page-item"><a class="page-link" href="Loan_details.jsp">Add Loan </a></li>
		  <li class="page-item"><a class="page-link" href="New_admin.jsp">Add New Admin </a></li>
	    </ul>
	    
	    <div class="container">
	       <form action="Adduser" method="post">
			    <div class="input-group" >
				  <div class="input-group-prepend">
				    <span class="input-group-text">Name</span>
				  </div>
				  <input type="text" aria-label="Name" class="form-control" name="uname" required>
				</div>
	            <div class="input-group" style="margin-top:10px;">
				  <div class="input-group-prepend">
				    <span class="input-group-text">Account No</span>
				  </div>
				  <input type="number" aria-label="Account No" class="form-control" name="accountno" required>
				</div>
				<div class="input-group" style="margin-top:10px;">
				  <div class="input-group-prepend">
				    <span class="input-group-text">Branch</span>
				  </div>
				  <input type="text" aria-label="Branch" class="form-control" name="branch" required>
				</div>
				<div class="input-group" style="margin-top:10px;">
				  <div class="input-group-prepend">
				    <span class="input-group-text">Type</span>
				  </div>
				  <input type="text" aria-label="Type" class="form-control" name="type" required>
				</div>
				<div class="input-group" style="margin-top:10px;">
				  <div class="input-group-prepend">
				    <span class="input-group-text">Balance</span>
				  </div>
				  <input type="number" aria-label="Balance" class="form-control" name="balance" required>
				</div>
				<div class="input-group" style="margin-top:10px;">
				  <div class="input-group-prepend">
				    <span class="input-group-text">Password</span>
				  </div>
				  <input type="password" aria-label="Password" class="form-control" name="pass" required>
				</div>
				<div class="input-group" style="margin-top:10px;">
				  <div class="input-group-prepend">
				    <span class="input-group-text">Confirm password</span>
				  </div>
				  <input type="password" aria-label="Confirm password" class="form-control" name="pass" required>
				</div>
				<div class="float-right" style="margin-top:10px">
				    <input type="submit" value="Submit" class="btn btn-primary">
				</div>
		  </form>
		</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</body>
</html>