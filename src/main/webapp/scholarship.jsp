<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.demo.OOP.Scholarship" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Scholarship Management</h1>
<%
    List<Scholarship> scholarships = new ArrayList<>();
    scholarships.add(new Scholarship("Scholarship 1", "Need 100 points in every subject", "1000000 usd", "2023-06-01"));
    scholarships.add(new Scholarship("Scholarship 2", "Need 100 points in every subject", "1000000 usd", "2023-06-01"));
    scholarships.add(new Scholarship("Scholarship 3", "Need 100 points in every subject", "1000000 usd", "2023-06-01"));
    request.setAttribute("scholarships", scholarships);
%>
<table>
    <tr>
        <th>Name</th>
        <th>Criteria</th>
        <th>Value</th>
        <th>Date</th>
    </tr>
    <% for (Scholarship scholarship : scholarships) { %>
    <tr>
        <td><%= scholarship.getName() %>
        </td>
        <td><%= scholarship.getCriteria() %>
        </td>
        <td><%= scholarship.getValue() %>
        </td>
        <td><%= scholarship.getDate() %>
        </td>
    </tr>
    <% } %>
</table>
</body>
</html>
