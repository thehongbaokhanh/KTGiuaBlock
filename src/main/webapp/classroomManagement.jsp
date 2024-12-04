<%@ page import="com.example.demo.OOP.classroom" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Classroom Management</h1>

<% List<classroom> classrooms = new ArrayList<>();
    classrooms.add(new classroom("Classroom 1", 1, 5.0, 1));
    classrooms.add(new classroom("Classroom 1", 2, 6.0, 2));
    classrooms.add(new classroom("Classroom 1", 3, 7.0, 2));
    request.setAttribute("classrooms", classrooms);
%>

<table border="1">
    <tr>
        <th>Name</th>
        <th>IdStudent</th>
        <th>AverageScore</th>
        <th>Status</th>
    </tr>
    <%
        for (classroom classroom : classrooms) {
    %>
    <%
            if (classroom.getStatus() == 1) {
    %>
    <tr>
        <td><%= classroom.getName() %></td>
        <td><%= classroom.getIdStudent() %></td>
        <td><%= classroom.getAverageScore() %></td>
        <td>fail</td>
    </tr>
    <%
            }else {
    %>
    <tr>
        <td><%= classroom.getName() %></td>
        <td><%= classroom.getIdStudent() %></td>
        <td><%= classroom.getAverageScore() %></td>
        <td>pass</td>
    </tr>
    <%
            }
    %>
    <%
        }
    %>
</table>
</body>
</html>
