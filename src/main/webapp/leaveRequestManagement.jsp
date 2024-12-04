<%@ page import="com.example.demo.OOP.LeaveRequest" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Leave Request Management</h1>
<%
    List<LeaveRequest> leaveRequests = new ArrayList<>();
    leaveRequests.add(new LeaveRequest("Nhân", "2023-01-01", "2023-01-10", 2));
    leaveRequests.add(new LeaveRequest("Chanh", "2023-02-01", "2023-02-10", 1));
    leaveRequests.add(new LeaveRequest("Sâm", "2023-03-01", "2023-03-10", 2));
    request.setAttribute("leaveRequests", leaveRequests);
%>
<table border="1">
    <tr>
        <th>Name</th>
        <th>Start Date</th>
        <th>End Date</th>
        <th>Status</th>
    </tr>
    <%
        for (LeaveRequest leaveRequest : leaveRequests) {
            if (leaveRequest.getStatus() == 1) {
    %>
    <tr>
        <td><%= leaveRequest.getName() %>
        </td>
        <td><%= leaveRequest.getStartDate() %>
        </td>
        <td><%= leaveRequest.getEndDate() %>
        </td>
        <td>
            accepted
        </td>
    </tr>
    <%
    } else {
    %>
    <tr>
        <td><%= leaveRequest.getName() %>
        </td>
        <td><%= leaveRequest.getStartDate() %>
        </td>
        <td><%= leaveRequest.getEndDate() %>
        </td>
        <td>
            rejected
        </td>
    </tr>
    <%
            }
        }
    %>
</table>
</body>
</html>
