<%@ page import="com.example.demo.OOP.Product" %>
<%@ page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product Management</title>
</head>
<body>
<% List<Product> products = new ArrayList<>();
    products.add(new Product("Product 1", 10.0, "Description 1", "https://pethouse.com.vn/wp-content/uploads/2022/12/anh-meo-anh-long-ngan-9988838880.jpg"));
    products.add(new Product("Product 2", 20.0, "Description 2", "https://pethouse.com.vn/wp-content/uploads/2022/12/anh-meo-anh-long-ngan-9988838880.jpg"));
    products.add(new Product("Product 3", 30.0, "Description 3", "https://pethouse.com.vn/wp-content/uploads/2022/12/anh-meo-anh-long-ngan-9988838880.jpg"));
    request.setAttribute("products", products);
%>

<h1>Product Management</h1>
<table border="1">
    <tr>
        <th>Name</th>
        <th>Price</th>
        <th>Description</th>
        <th>Image</th>
    </tr>
    <%
        for (Product product : products) {
    %>
    <tr>
        <td><%= product.getName() %>
        </td>
        <td><%= product.getPrice() %>
        </td>
        <td><%= product.getDiscription() %>
        </td>
        <td><img src="<%= product.getUrlImage() %>" width="50" height="50" alt="Product Image"></td>
    </tr>
    <%
        }
    %>
</table>
</body>
</html>
