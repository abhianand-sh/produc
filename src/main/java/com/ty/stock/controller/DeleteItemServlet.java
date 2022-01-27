
package com.ty.stock.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ty.stock.dao.ItemDao;

public class DeleteItemServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String id=req.getParameter("id");
		int parseid=Integer.parseInt(id);
		
		ItemDao dao = new ItemDao();
		boolean con=dao.deleteItem(parseid);
		PrintWriter printWriter = resp.getWriter();
		
		if(con==true) {
			printWriter.print("<html><body><h1>Item is deleted</h1></body></html>");
			
		}
		else {
			printWriter.print("<html><body><h1>Item is not deleted</h1></body></html>");
		}
		RequestDispatcher dispatcher = req.getRequestDispatcher("/display");
		dispatcher.include(req,resp);
		
		
		
	}
	
	
	
	
}
