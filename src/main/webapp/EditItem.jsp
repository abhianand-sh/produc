<%@page import="com.ty.stock.dto.Item"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<% Item item=(Item)request.getAttribute("myItem"); %>
	<%@include file="NavBar.jsp" %>
	<h1>Edit Item</h1>
	<br>
	<form action="edit" method="post">
		<table>
			<tr>
				<td>Id</td>
				<td><input type="number" name="item_id" value="<%=item.getId()%>" readonly="readonly"></input></td>
			</tr>
			<tr>
				<td>Name</td>
				<td><input type="text" name="item_name" value="<%=item.getName() %> "></input></td>
			</tr>
			<tr>
				<td>Brand</td>
				<td><select name="item_brand" value="<%=item.getBrand() %> " >
						<option value="LG">LG</option>
						<option value="Sony">Sony</option>
						<option value="MI">MI</option>
						<option value="Samsung">Samsung</option>
				</select>
			</tr>
			<tr>
				<td>Cost</td>
				<td><input type="number" name="item_cost" value="<%=item.getCost() %>"></input></td>
			</tr>

			<tr>
				<td>Quantity</td>
				<td><input type="number" name="item_quantity" value="<%=item.getQuantity() %>"></input></td>

			</tr>
			<tr>
				<td>Item type</td>
				<td><select name="item_type" >
						<option value="<%=item.getType()%>"><%=item.getType() %></option>
						<option value="TV">TV</option>
						<option value="Phone">Smart Phone</option>
						<option value="Monitor">Monitor</option>
						<option value="Laptop">Laptop</option>
				</select>
			</tr>
			<tr>
				<td><input type="submit" value="Update Item"></input></td>

			</tr>
</body>
</html>