<%@ page import="java.util.List" %>
<%@ page import="com.example.demo.OOP.EmployeeAttendanceTracking" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Employee Attendance Tracking Management</h1>
<%
    List<EmployeeAttendanceTracking> employees = new ArrayList<>();
    employees.add(new EmployeeAttendanceTracking("John Doe", "2022-01-01", 50, 1));
    employees.add(new EmployeeAttendanceTracking("Jane Doe", "2022-02-01", 60, 2));
    employees.add(new EmployeeAttendanceTracking("Bob Smith", "2022-03-01", 70, 1));
    request.setAttribute("employees", employees);
%>
<table border="1">
    <tr>
        <th>Name</th>
        <th>Date</th>
        <th>Time</th>
        <th>Status</th>
    </tr>
    <%
        for (EmployeeAttendanceTracking employee : employees) {
            if (employee.getStatus() == 1) {
    %>
    <tr>
        <td><%= employee.getName() %>
        </td>
        <td><%= employee.getDate() %>
        </td>
        <td><%= employee.getTime() %>
        </td>
        <td>
            Done
        </td>
    </tr>
    <%
    } else {
    %>
    <tr>
        <td><%= employee.getName() %>
        </td>
        <td><%= employee.getDate() %>
        </td>
        <td><%= employee.getTime() %>
        </td>
        <td>
            Not Done
        </td>
    </tr>
    <%
            }
        }
    %>
</table>
</body>
</html>
