package com.login;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.login.dao.AdminLoginDao;
import com.login.dao.LoginDao;


/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname = request.getParameter("uname");
		String pass = request.getParameter("pass");
		
		LoginDao dao = new LoginDao();
		AdminLoginDao adao = new AdminLoginDao();
		
		PrintWriter out =response.getWriter();
		
		if(adao.check(uname,pass)) {
			HttpSession session = request.getSession();
			session.setAttribute("username", uname);
			response.sendRedirect("Moratorium.jsp");
		}
		else if(dao.check(uname,pass)) {
			
			HttpSession session = request.getSession();
			session.setAttribute("username", uname);
			response.sendRedirect("Account.jsp");
		}
		else {
			
			out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
			out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
			out.println("<script>");
			out.println("$(document).ready(function(){");
			out.println("swal('Incorrect Username or password !', '', 'error');");
			out.println("});");
			out.println("</script>");
			RequestDispatcher rd= request.getRequestDispatcher("login.jsp");
			rd.include(request, response);
		}
	}
}
