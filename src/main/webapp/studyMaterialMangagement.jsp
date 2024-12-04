<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.demo.OOP.StudyMaterials" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Study Material Management</h1>
<%
    List<StudyMaterials> studyMaterials = new ArrayList<>();
    studyMaterials.add(new StudyMaterials("Study Material 1", "class 1", "teacher 1", "words"));
    studyMaterials.add(new StudyMaterials("Study Material 2", "class 2", "teacher 2", "PDF"));
    studyMaterials.add(new StudyMaterials("Study Material 3", "class 3", "teacher 3", "PowerPoint"));
    request.setAttribute("studyMaterials", studyMaterials);
%>

<table border="1">
    <tr>
        <th>Name</th>
        <th>Class</th>
        <th>Teacher</th>
        <th>Formatting</th>
    </tr>
    <% for (StudyMaterials studyMaterial : studyMaterials) { %>
    <tr>
        <td><%= studyMaterial.getName() %></td>
        <td><%= studyMaterial.getClass() %></td>
        <td><%= studyMaterial.getTeacher() %></td>
        <td><%= studyMaterial.getFormatting() %></td>
    </tr>
    <% } %>
</table>
</body>
</html>
