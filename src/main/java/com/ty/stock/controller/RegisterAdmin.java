package com.ty.stock.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ty.stock.dao.ItemDao;
import com.ty.stock.dto.Admin;

public class RegisterAdmin  extends HttpServlet
{
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		String email = req.getParameter("useremail");
		String password = req.getParameter("userpassword");
		Admin admin = new Admin();
		admin.setEmail(email);
		admin.setPassword(password);
		ItemDao dao = new ItemDao();
		dao.saveAdmin(admin);
        resp.getWriter().print("<h1>User added</h1>");
		
		resp.sendRedirect("Login.jsp");
		
	}
}
