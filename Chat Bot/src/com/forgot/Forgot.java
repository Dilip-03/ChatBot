package com.forgot;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

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
			
			int i=st.executeUpdate();
			if(i>0) {
				response.sendRedirect("Update.html");
			}
			else {
				response.sendRedirect("Error.html");
			}
					
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}

}
