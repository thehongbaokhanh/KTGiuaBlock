<%@ page import="java.util.List" %>
<%@ page import="com.example.demo.OOP.Patient" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Patient Management</h1>
<%
    List<Patient> patients = new ArrayList<>();
    patients.add(new Patient("John Doe", 50, "cancer", "2023-01-01", "dead in 2025"));
    patients.add(new Patient("Chí anh", 60, "hemorrhoids", "2023-02-01", "dead in 28/12/2024"));
    patients.add(new Patient("John Doe", 50, "cancer", "2023-01-01", "dead in 2025"));
    request.setAttribute("patients", patients);
%>
<table border="1">
    <tr>
        <th>Name</th>
        <th>Age</th>
        <th>Medical history</th>
        <th>Date</th>
        <th>Status</th>
    </tr>
        <%
        for (Patient patient : patients) {
            %>
    <tr>
        <td><%= patient.getName() %>
        </td>
        <td><%= patient.getAge() %>
        </td>
        <td><%= patient.getMedicalHistory() %>
        </td>
        <td><%= patient.getDate() %>
        </td>
        <td><%= patient.getStatus() %>
        </td>
    </tr>
        <%
        }
    %>
</body>
</html>
