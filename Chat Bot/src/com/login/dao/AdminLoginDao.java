package com.login.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class AdminLoginDao 
{
   String query="select * from admin where uname=? and pass=?";
   String url="jdbc:mysql://localhost:3307/chat_bot";
   String username ="root";
   String password="devibala007@";
	public boolean check(String uname,String pass) 
	{
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con= DriverManager.getConnection(url,username,password);
			PreparedStatement st = con.prepareStatement(query);
			st.setString(1,uname);
			st.setString(2,pass);
			ResultSet rs= st.executeQuery();
			if(rs.next()) 
			{
				return true;
			}
		} 
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return false;
	}

}
