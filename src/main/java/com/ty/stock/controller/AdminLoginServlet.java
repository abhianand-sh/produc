package com.ty.stock.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ty.stock.dao.ItemDao;
import com.ty.stock.dto.Admin;

public class AdminLoginServlet extends HttpServlet
{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		String email = req.getParameter("useremail");
		String password = req.getParameter("userpassword");
		ItemDao dao = new ItemDao();
		Admin admin = dao.validate(email, password);
		PrintWriter pw = resp.getWriter();
		if(email.equals(admin.getEmail()) && password.equals(admin.getPassword()))
		{
			resp.sendRedirect("Home.jsp");
		}
		else
		{
			resp.sendRedirect("Login.jsp");


		}
	}
}
