package com.ty.stock.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ty.stock.dao.ItemDao;
import com.ty.stock.dto.Item;

public class EditItemServlet  extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String id=req.getParameter("item_id");
		String name = req.getParameter("item_name");
		String brand = req.getParameter("item_brand");
		String cost = req.getParameter("item_cost");
		String quantity = req.getParameter("item_quantity");
		String type = req.getParameter("item_type");

		Item item = new Item();
		item.setId(Integer.parseInt(id));
		item.setName(name);
		item.setBrand(brand);
		item.setCost(Double.parseDouble(cost));
		item.setQuantity(Integer.parseInt(quantity));
		item.setType(type);

		ItemDao dao = new ItemDao();
		dao.updateItem(item);

		PrintWriter printWriter = resp.getWriter();
		printWriter.print("<html><body><h1>Item is updated <br>Thank you</h1></body></html>");
		
		

		
		
		
	}

}
