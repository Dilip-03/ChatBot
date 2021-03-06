<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <link rel="stylesheet" href="main.css">
    <title>MyAccount</title>
  </head>
  <style >
  body{
    background-image:url('images/tranfer.jpg');
    background-repeat: no-repeat;
    background-attachment: fixed;  
    background-size:100% 100%;
  }
</style>
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
		        <a class="nav-link" href="Account.jsp" style="color:white">Account<span class="sr-only">(current)</span></a>
		      </li>
		      <li class="nav-item active">
		        <a class="nav-link" href="Transfer.jsp" style="color:white">Transfer</a>
		      </li>
		      <li class="nav-item active">
		        <a class="nav-link" href="Notifications.jsp" style="color:white">Notifications</a>
		      </li>
		      <li class="nav-item active">
       			 <a class="nav-link" href="Logout" style="color:White">Logout</a>
      		  </li>
		    </ul>
		  </div>
		</nav>
	  <ul class="pagination justify-content-center" style="margin:20px 0">
		  <li class="page-item active"><a class="page-link" href="Account.jsp">Account</a></li>
		  <li class="page-item"><a class="page-link" href="Payactivity.jsp">Payment activity</a></li>
	  </ul>
     <div class="container" style="border:1px solid;border-radius:12px;background:white;">
	  <h3 style="margin:10px 0px 20px 10px">Account Details:</h3>
		<div >         
		  <table class="table table-bordered table-striped">
		    <thead>
		      <tr>
		        <th>Name</th>
		        <th>Account no</th>
		        <th>Branch</th>
		        <th>Type</th>
		        <th>Balance</th>
		      </tr>
		    </thead>
		    <tbody>
		     <%
		         try{
		        	 String name = session.getAttribute("username").toString();
		        	 Class.forName("com.mysql.jdbc.Driver");
		 			 Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3307/chat_bot","root","devibala007@");
		        	 Statement st = con.createStatement();
		        	 ResultSet rs=st.executeQuery("select * from account where Name= '"+name+"'");
		        	 while(rs.next()){
			        		 %>
			        		 <tr>
			        		 <td><%=rs.getString("Name") %></td>
			        		 <td><%=rs.getString("Account_no") %></td>
			        		 <td><%=rs.getString("Branch") %></td>
			        		 <td><%=rs.getString("Typ") %></td>
			        		 <td><%=rs.getFloat("Balance") %></td>
			        		 </tr>
			        		 <%
			        	 }
		        	 
		         }catch(Exception e){
		        	 out.println(e);
		         }
		     
		     %>
		    </tbody>
		  </table>
		</div>
		<h3 style="margin:10px 0px 20px 10px">Loan Details:</h3>
		<div class="container">
		  <table class="table table-bordered table-striped">
		    <thead>
		      <tr>
		        <th>Loan no</th>
		        <th>Loan Type</th>
		        <th>Next Installment Due</th>
		        <th>Payment amount</th>
		        <th>To More</th>
		      </tr>
		    </thead>
		    <tbody>
		      <%
		         try{
		        	 String name = session.getAttribute("username").toString();
		        	 Class.forName("com.mysql.jdbc.Driver");
		 			 Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3307/chat_bot","root","devibala007@");
		        	 Statement st = con.createStatement();
		        	 ResultSet rs=st.executeQuery("select * from loan where Name='"+name+"'");
		        	 while(rs.next()){
		        		 %>
		        		 <tr>
		        		 <td><%=rs.getString("loan_no") %></td>
		        		 <td><%=rs.getString("loan_ty") %></td>
		        		 <td><%=rs.getString("due") %></td>
		        		 <td><%=rs.getInt("payment_amount") %></td>
		        		 <td>Link</td>
		        		 </tr>
		        		 <%
		        	 }
		        	 
		         }catch(Exception e){
		        	 out.println(e);
		         }
		     %>
		    </tbody>
		  </table>
		</div>
	</div>
	<button class="btn btn-primary" style="position: fixed; bottom:15px;right:15px;" onclick="openForm()">Ask Bartosz</button>
		<div class="chat-popup" id="myForm" >
		    <div id="head">
		      <img src="images/bot.jpg">
		       <h4>Bartosz</h4>
			   <button type="button" style="margin-top:-38px;margin-right:10px"class="close" onclick="closeForm()">
					  <span aria-hidden="true">&times;</span>
			   </button>
		    </div>
		    <div id="body">
		    </div>
		    <div id="btm">
			         <input type="text" id="text"  autocomplete="off"placeholder="Enter your Message..">
			         <button class="btn btn-primary" style="position: fixed; bottom:20px;right:20px;" onclick="sendMessage()">Send</button>
		    </div>
		</div>
		
		<script>
			function openForm() {
			  document.getElementById("myForm").style.display = "block";
			}
			
			function closeForm() {
			  document.getElementById("myForm").style.display = "none";
			}
       </script>
       <script src="jquery.js"></script>
	   <script type="text/javascript" src="mains.js"></script>
	   <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
  </body>
</html>