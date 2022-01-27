<%@page import="com.ty.stock.dto.Item"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%List<Item>items=(List<Item>)request.getAttribute("myItem"); %>
	<%@include file="NavBar.jsp" %>
	<br>
	<table border="2">
		<tr>
			<th>Id</th>
			<th>Item Name</th>
			<th>Brand</th>
			<th>Cost</th>
			<th>Quantity</th>
			<th>Type</th>
			<th>Delete</th>
			<th>Edit</th>
		</tr>
		<%for(Item i:items){ %>
		<tr>
			<td><%=i.getId() %></td>
			<td><%=i.getName() %></td>
			<td><%=i.getBrand() %></td>
			<td><%=i.getCost()%></td>
			<td><%=i.getQuantity() %></td>
			<td><%=i.getType()%></td>
			<td><a href="delete?id=<%=i.getId()%>">Delete</a></td>
			<td><a href="getitem?id=<%=i.getId() %>">Edit</a></td>
		
		</tr> 
		<%} %>
	
	</table>
	
	
</body>
</html>