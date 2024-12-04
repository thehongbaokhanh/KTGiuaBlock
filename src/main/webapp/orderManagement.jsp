<%@ page import="com.example.demo.OOP.Order" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Order Management</h1>
<%
    List<Order> orders = new ArrayList<>();
    orders.add(new Order("Order 1", "2023-01-01", "Customer 1", 1));
    orders.add(new Order("Order 2", "2023-02-01", "Customer 2", 2));
    orders.add(new Order("Order 3", "2023-03-01", "Customer 3", 3));
    request.setAttribute("orders", orders);
%>

<table border="1">
    <tr>
        <th>Id</th>
        <th>Date</th>
        <th>Customer</th>
        <th>Quantity</th>
    </tr>
    <%
        for (Order order : orders) {
    %>
    <tr>
        <td><%= order.getId() %>
        </td>
        <td><%= order.getOrderDate() %>
        </td>
        <td><%= order.getCustomer() %>
        </td>
        <%
            if (order.getStatus() == 1) {
        %>
        <td>Processing</td>
        <% } else if (order.getStatus() == 2) { %>
        <td>Shipped</td>
        <% } else if (order.getStatus() == 3) { %>
        <td>Delivered</td>
        <% }
        %>
    </tr>
    <%
        }
    %>
</table>
</body>
</html>
