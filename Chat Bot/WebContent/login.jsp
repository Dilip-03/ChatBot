<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>
<style>
.center {
  text-align: center;
  color:#85DCB;
}
body{
    background-image:url('images/Login4.jpg');
    background-repeat: no-repeat;
    background-attachment: fixed;  
    background-size:100% 100%;
}
</style>
<body> 
   <nav class="navbar navbar-light">
            <h3> Trust Bank  </h3>
		    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
		        Login
			</button>      
   </nav>	
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="exampleModalLabel">Login</h5>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>
	      <div class="modal-body">
				<form action="Login" method="post">
						<div class="form-group">
							<label for="exampleInputEmail1">Username</label>
							<input type="text" class="form-control"
								id="exampleInputEmail1" aria-describedby="emailHelp" name="uname"
								required>
						</div>
						<div class="form-group">
							<label for="exampleInputPassword1">
								Password
							</label>
							<input type="password" class="form-control"
								id="exampleInputPassword1" name="pass" required>
						</div>         
				      <div class="modal-footer">
				            <span >
								Forgot
							</span>
	
							<a href="login.jsp" data-toggle="modal" data-target="#exampleModalLong">
								Password?
							</a>
				        <button type="submit" class="btn btn-primary">Login</button>
				      </div>
	           </form>
	        </div> 
	    </div>
	  </div>
	</div>
	<div >
	</div>
	<div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="exampleModalLongTitle">Change/Forgot Password</h5>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>
	      <div class="modal-body">
	        <form action="Forgot" method="post">
 					   <div class="form-group">
							<label for="exampleInputEmail1">Username</label>
							<input type="text" class="form-control" name="uname"
								id="exampleInputEmail1" aria-describedby="emailHelp" 
								required>
					   </div>
                       <div class="form-group">
							<label for="exampleInputPassword1">New password</label>
							<input type="password" class="form-control"
								id="exampleInputPassword1" name="passs"
								required>
						</div>
						<div class="form-group">
							<label for="exampleInputPassword1">
								Confirm password
							</label>
							<input type="password" class="form-control"
								id="exampleInputPassword1" name="passs" required>
						</div>         	         
				        <div class="modal-footer">
				           <button type="submit" class="btn btn-primary">Save changes</button>
				       </div>
			</form>
		  </div>
	    </div>
	  </div>
	</div>
	
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</body> 
</html>