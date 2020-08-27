package com.adduser;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Adduser")
public class Adduser extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String url="jdbc:mysql://localhost:3307/chat_bot";
	String username ="root";
	String password="devibala007@";
	String query="insert into account (Name,Account_No,Branch,Typ,Balance) values(?,?,?,?,?);";
    String query1="insert into login(uname,pass) values(?,?);";
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con= DriverManager.getConnection(url,username,password);
			String uname=request.getParameter("uname");
			String pass=request.getParameter("pass");
			String accountno=request.getParameter("accountno");
			String branch=request.getParameter("branch");
			String type=request.getParameter("type");
			String balance=request.getParameter("balance");
			
			PreparedStatement st = con.prepareStatement(query);
			st.setString(1, uname);
			st.setString(2, accountno);
			st.setString(3,branch);
			st.setString(4,type);
			st.setString(5,balance);
			
			PreparedStatement st1= con.prepareStatement(query1);
			st1.setString(1, uname);
			st1.setString(2, pass);
			
			PrintWriter out =response.getWriter();
			
			int i=st.executeUpdate();
			int j= st1.executeUpdate();
			if(i>0 && j>0) {
				out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
				out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
				out.println("<script>");
				out.println("$(document).ready(function(){");
				out.println("swal('Great!', 'New User added Successfully', 'success')");
				out.println("});");
				out.println("</script>");
				RequestDispatcher rd= request.getRequestDispatcher("Add_user.jsp");
				rd.include(request, response);
			}
			else {
				out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
				out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
				out.println("<script>");
				out.println("$(document).ready(function(){");
				out.println("swal('New User added Unsuccessfully !', '', 'error');");
				out.println("});");
				out.println("</script>");
				RequestDispatcher rd= request.getRequestDispatcher("Add_user.jsp");
				rd.include(request, response);
			}	
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}
}
