<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.demo.OOP.Pet" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Pets Management</h1>
<%
    List<Pet> pets = new ArrayList<>();
    pets.add(new Pet("cat", "cat", 2, "john"));
    pets.add(new Pet("dog", "dog", 3, "jane"));
    pets.add(new Pet("fish", "fish", 1, "bob"));
    request.setAttribute("pets", pets);
%>
<table>
    <tr>
        <th>Name</th>
        <th>Species</th>
        <th>Age</th>
        <th>Owner</th>
    </tr>
    <% for (Pet pet : pets) { %>
    <tr>
        <td><%= pet.getName() %>
        </td>
        <td><%= pet.getType() %>
        </td>
        <td><%= pet.getAge() %>
        </td>
        <td><%= pet.getPetOwner() %>
        </td>
    </tr>
    <% } %>
</table>
</body>
</html>
