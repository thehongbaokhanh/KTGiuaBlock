<%@ page import="com.example.demo.OOP.OnlineShop" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Online Shop Management</h1>
<%
    List<OnlineShop> onlineShops = new ArrayList<>();
    onlineShops.add(new OnlineShop("bread", 10, 2.0, 20));
    onlineShops.add(new OnlineShop("milk", 5, 3.0, 15));
    onlineShops.add(new OnlineShop("cheese", 2, 5.0, 10));
    request.setAttribute("onlineShops", onlineShops);
%>
<table border="1">
    <tr>
        <th>Name</th>
        <th>Quantity</th>
        <th>Price</th>
        <th>Total</th>
    </tr>
    <%
        for (OnlineShop onlineShop : onlineShops) {
    %>
    <tr>
        <td><%= onlineShop.getProductName() %>
        </td>
        <td><%= onlineShop.getQuantity() %>
        </td>
        <td><%= onlineShop.getProductPrice() %>
        </td>
        <td><%= onlineShop.getTotal() %>
        </td>
    </tr>
    <% } %>
</table>
</body>
</html>
