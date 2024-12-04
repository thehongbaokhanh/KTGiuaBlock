<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.demo.OOP.Employee" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Employee Management</h1>
<%
    List<Employee> employees = new ArrayList<>();
    employees.add(new Employee("Employee 1", "Department 1", "Position 1", 10.0, 1));
    employees.add(new Employee("Employee 2", "Department 1", "Position 2", 160.0, 2));
    employees.add(new Employee("Employee 3", "Department 1", "Position 3", 50.0, 2));
    request.setAttribute("employees", employees);
%>

<table border="1">
    <tr>
        <th>Name</th>
        <th>Department</th>
        <th>Position</th>
        <th>Salary</th>
        <th>Status</th>
    </tr>
    <%
        for (Employee employee : employees) {
            if (employee.getStatus() == 1) {
    %>
    <tr>
        <td><%= employee.getName() %>
        </td>
        <td><%= employee.getDepartment() %>
        </td>
        <td><%= employee.getPosition() %>
        </td>
        <td><%= employee.getSalary() %>
        </td>
        <td><%= employee.getStatus() %>
        </td>
    </tr>
    <%
    } else {
    %>
    <tr>
        <td><%= employee.getName() %>
        </td>
        <td><%= employee.getDepartment() %>
        </td>
        <td><%= employee.getPosition() %>
        </td>
        <td><%= employee.getSalary() %>
        </td>
        <td><%= employee.getStatus() %>
        </td>
    </tr>
    <%
            }
        }
    %>
</table>
</body>
</html>
