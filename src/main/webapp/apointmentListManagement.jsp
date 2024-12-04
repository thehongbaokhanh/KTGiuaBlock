<%@ page import="java.util.List" %>
<%@ page import="com.example.demo.OOP.AppointmentList" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Appointment List Management</h1>
<%
    List<AppointmentList> appointments = new ArrayList<>();
    appointments.add(new AppointmentList("John Doe", "2023-06-01", "10:00 AM", "Dentist"));
    appointments.add(new AppointmentList("Jane Smith", "2023-06-02", "11:00 AM", "Cardiologist"));
    appointments.add(new AppointmentList("Bob Johnson", "2023-06-03", "12:00 PM", "Dermatologist"));
    request.setAttribute("appointments", appointments);
%>
<table border="1">
    <tr>
        <th>Name</th>
        <th>Date</th>
        <th>Location</th>
        <th>Discription</th>
    </tr>
    <% for (AppointmentList appointment : (List<AppointmentList>) request.getAttribute("appointments")) { %>
    <tr>
        <td><%= appointment.getName() %>
        </td>
        <td><%= appointment.getDate() %>
        </td>
        <td><%= appointment.getLocation() %>
        </td>
        <td><%= appointment.getDiscription() %>
        </td>
    </tr>
    <% } %>
</table>
</body>
</html>
