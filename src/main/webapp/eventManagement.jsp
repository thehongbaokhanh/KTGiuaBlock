<%@ page import="com.example.demo.OOP.Event" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Event Management</h1>
<%
    List<Event> events = new ArrayList<>();
    events.add(new Event("Event 1", "2023-01-01", "Location 1", 100));
    events.add(new Event("Event 2", "2023-02-01", "Location 2", 200));
    events.add(new Event("Event 3", "2023-03-01", "Location 3", 300));
    request.setAttribute("events", events);
%>
<table border="1">
    <tr>
        <th>Name</th>
        <th>Date</th>
        <th>Location</th>
        <th>Capacity</th>
    </tr>
    <%
        for (Event event : events) {
    %>
    <tr>
        <td><%= event.getName() %>
        </td>
        <td><%= event.getDate() %>
        </td>
        <td><%= event.getLocation() %>
        </td>
        <td><%= event.getCapacity() %>
        </td>
    </tr>
    <%
        }
    %>
</table>
</body>
</html>
