package com.forgot;

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

@WebServlet("/Forgot")
public class Forgot extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String query="update login set pass=? where uname=?";
	String url="jdbc:mysql://localhost:3307/chat_bot";
	String username ="root";
	String password="devibala007@";
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con= DriverManager.getConnection(url,username,password);
			String uname=request.getParameter("uname");
			String pass=request.getParameter("passs");
			PreparedStatement st = con.prepareStatement(query);
			st.setString(2, uname);
			st.setString(1,pass);
			
			PrintWriter out =response.getWriter();
			
			int i=st.executeUpdate();
			if(i>0) {
				out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
				out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
				out.println("<script>");
				out.println("$(document).ready(function(){");
				out.println("swal('Great!', 'Forgot Updation Successfully', 'success')");
				out.println("});");
				out.println("</script>");
				RequestDispatcher rd= request.getRequestDispatcher("login.jsp");
				rd.include(request, response);
			}
			else {
				out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
				out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
				out.println("<script>");
				out.println("$(document).ready(function(){");
				out.println("swal(' Forgot Updation unsuccessfully!', '', 'error');");
				out.println("});");
				out.println("</script>");
				RequestDispatcher rd= request.getRequestDispatcher("login.jsp");
				rd.include(request, response);
			}
					
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}

}
