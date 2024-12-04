<%@ page import="com.example.demo.OOP.Ticket" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Ticket Management</h1>
<%
    List<Ticket> tickets = new ArrayList<>();
    tickets.add(new Ticket(1, "Harry Potter", "2023-01-01", 50));
    tickets.add(new Ticket(2, "The Lord of the Rings", "2023-02-01", 60));
    tickets.add(new Ticket(3, "Game of Thrones", "2023-03-01", 70));
    request.setAttribute("tickets", tickets);
%>
<table border="1">
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Show Time</th>
        <th>Price</th>
    </tr>
    <%
        for (Ticket ticket : tickets) {
    %>
    <tr>
        <td><%= ticket.getId() %>
        </td>
        <td><%= ticket.getName() %>
        </td>
        <td><%= ticket.getShowTime() %>
        </td>
        <td><%= ticket.getPrice() %>
        </td>
    </tr>
    <%
        }
    %>
</table>
</body>
</html>
