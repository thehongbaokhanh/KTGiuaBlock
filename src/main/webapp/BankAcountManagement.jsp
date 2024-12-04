<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.demo.OOP.BankAcount" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>BankAcountManagement</h1>
<%
    List<BankAcount> bankAcounts = new ArrayList<>();
    bankAcounts.add(new BankAcount("123456789", "John Doe", 1000, 2));
    bankAcounts.add(new BankAcount("987654321", "Jane Doe", 500, 1));
    bankAcounts.add(new BankAcount("555555555", "Bob Smith", 2000, 1));
    request.setAttribute("bankAcounts", bankAcounts);
%>
<table border="1">
    <tr>
        <th>Account Number</th>
        <th>Name</th>
        <th>Balance</th>
        <th>Status</th>
    </tr>
    <%
        for (BankAcount bankAcount : bankAcounts) {
            if (bankAcount.getStatus() == 1) {
    %>
    <tr>
        <td><%= bankAcount.getAccountNumber() %>
        </td>
        <td><%= bankAcount.getName() %>
        </td>
        <td><%= bankAcount.getBalance() %>
        </td>
        <td>active
        </td>
    </tr>
    <%
    } else {
    %>
    <tr>
        <td><%= bankAcount.getAccountNumber() %>
        </td>
        <td><%= bankAcount.getName() %>
        </td>
        <td><%= bankAcount.getBalance() %>
        </td>
        <td>inactive
        </td>
    </tr>
    <%
            }
        }
    %>
</table>
</body>
</html>
