<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.demo.OOP.Tour" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Tour Management</h1>
<%
    List<Tour> tours = new ArrayList<>();
    tours.add(new Tour("Tour 1", "Destination 1", "2023-01-01", 100.0, 1));
    tours.add(new Tour("Tour 2", "Destination 2", "2023-02-01", 200.0, 2));
    tours.add(new Tour("Tour 3", "Destination 3", "2023-03-01", 300.0, 2));
    request.setAttribute("tours", tours);
%>
<table border="1">
    <tr>
        <th>Name</th>
        <th>Destination</th>
        <th>Start Date</th>
        <th>Price</th>
        <th>Status</th>
    </tr>
    <%
        for (Tour tour : tours) {
            if (tour.getStatus() == 1) {
    %>
    <tr>
        <td><%= tour.getName() %>
        </td>
        <td><%= tour.getDestination() %>
        </td>
        <td><%= tour.getStartDate() %>
        </td>
        <td><%= tour.getPrice() %>
        </td>
        <td>
            Full
        </td>
    </tr>
    <%
    } else {
    %>
    <tr>
        <td><%= tour.getName() %>
        </td>
        <td><%= tour.getDestination() %>
        </td>
        <td><%= tour.getStartDate() %>
        </td>
        <td><%= tour.getPrice() %>
        </td>
        <td>
            Available seats
        </td>
    </tr>
    <%
            }
        }
    %>
</table>
</body>
</html>
