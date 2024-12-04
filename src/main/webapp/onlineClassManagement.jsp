<%@ page import="java.util.List" %>
<%@ page import="com.example.demo.OOP.OnlineClass" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Online Class Management</h1>
<%
    List<OnlineClass> onlineClasses = new ArrayList<>();
    onlineClasses.add(new OnlineClass("Online Class 1", "teacher 1", 1, 10));
    onlineClasses.add(new OnlineClass("Online Class 2", "teacher 2", 5, 20));
    onlineClasses.add(new OnlineClass("Online Class 3", "teacher 1", 3, 30));
    request.setAttribute("onlineClasses", onlineClasses);
%>
<table border="1">
    <tr>
        <th>Name</th>
        <th>Teacher</th>
        <th>Lessons</th>
        <th>Price</th>
    </tr>
    <% for (OnlineClass onlineClass : onlineClasses) { %>
    <tr>
        <td><%= onlineClass.getName() %>
        </td>
        <td><%= onlineClass.getTeacher() %>
        </td>
        <td><%= onlineClass.getLesson() %>
        </td>
        <td><%= onlineClass.getPrice() %>
        </td>
    </tr>
    <% } %>
</table>
</body>
</html>
