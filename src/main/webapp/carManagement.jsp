<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.demo.OOP.Car" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Car Management</h1>
<%
    List<Car> cars = new ArrayList<>();
    cars.add(new Car("Lamborghini", "Brand 1", 100, 1));
    cars.add(new Car("Mercedes", "Brand 2", 200, 2));
    cars.add(new Car("Tesla", "Brand 3", 300, 2));
    request.setAttribute("cars", cars);
%>
<table border="1">
    <tr>
        <th>Name</th>
        <th>Manufacturer</th>
        <th>Price</th>
        <th>Status</th>
    </tr>
    <%
        for (Car car : cars) {
            if (car.getStatus() == 1) {
    %>
    <tr>
        <td><%= car.getName() %>
        </td>
        <td><%= car.getManufacturer() %>
        </td>
        <td><%= car.getPrice() %>
        </td>
        <td><%= car.getStatus() %>
        </td>
    </tr>
    <%
    } else {
    %>
    <tr>
        <td><%= car.getName() %>
        </td>
        <td><%= car.getManufacturer() %>
        </td>
        <td><%= car.getPrice() %>
        </td>
        <td><%= car.getStatus() %>
        </td>
    </tr>
    <%
            }
        }
    %>
</table>
</body>
</html>
