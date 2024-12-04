<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.demo.OOP.Book" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Book Manager</h1>
<%
    List<Book> books = new ArrayList<>();
    books.add(new Book("Book 1", "Author 1", "Novel", "2010"));
    books.add(new Book("Book 2", "Author 2", "Novel", "2012"));
    books.add(new Book("Book 3", "Author 3", "Novel", "2014"));
    books.add(new Book("Book 4", "Author 4", "Novel", "2016"));
    request.setAttribute("books", books);
%>

<table border="1">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Author</th>
        <th>PublishYear</th>
    </tr>
    <%
        for (Book book : books) {
    %>
    <tr>
        <td><%= book.getName() %></td>
        <td><%= book.getAuthor() %></td>
        <td><%= book.getGenre() %></td>
        <td><%= book.getDate() %></td>
    </tr>
    <%
        }
    %>
</table>
</body>
</html>
