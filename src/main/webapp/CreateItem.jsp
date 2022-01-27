<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@include file="NavBar.jsp" %>
	<br>
	<form action="./create" method="post">
		<table>
			<tr>
				<td>Name</td>
				<td><input type="text" name="item_name"></input></td>
			</tr>
			<tr>
				<td>Brand</td>
				<td><select name="item_brand">
						<option value="LG">LG</option>
						<option value="Sony">Sony</option>
						<option value="MI">MI</option>
						<option value="Samsung">Samsung</option>
				</select>
			</tr>
			<tr>
				<td>Cost</td>
				<td><input type="number" name="item_cost"></input></td>
			</tr>

			<tr>
				<td>Quantity</td>
				<td><input type="number" name="item_quantity"></input></td>

			</tr>
			<tr>
				<td>Item type</td>
				<td><select name="item_type">
						<option value="TV">TV</option>
						<option value="Phone">Smart Phone</option>
						<option value="Monitor">Monitor</option>
						<option value="Laptop">Laptop</option>
				</select>
			</tr>
			<tr>
				<td><input type="submit" value="Create Item"></input></td>

			</tr>





		</table>
	</form>

</body>
</html>