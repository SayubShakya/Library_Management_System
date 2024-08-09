<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display All Issued Books</title>
<style>
body {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    min-height: 100vh;
    margin: 0;
    font-family: Arial, sans-serif;
}

.container {
    text-align: center;
    margin-bottom: 20px;
}

input[type='submit'] {
    display: inline-block;
    padding: 10px 20px;
    font-size: 16px;
    font-weight: bold;
    color: #ffffff;
    background-color: #4CAF50;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s, box-shadow 0.3s;
}

input[type='submit']:hover, input[type='submit']:focus {
    background-color: #45a049;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
}

button {
    background-color: #f44336;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    font-size: 16px;
    text-align: center;
    margin-top: 20px;
}

button:hover {
    background-color: #c62828;
}

table {
    width: 95%;
    border-collapse: collapse;
    margin: 20px auto;
}

table, th, td {
    border: 1px solid #ddd;
}

th, td {
    padding: 8px;
    text-align: left;
}

th {
    background-color: #f4f4f4;
}

h1 {
    text-align: center;
}
</style>
</head>
<body>

<h1>Display All Issued Books</h1>
<table>
    <thead>
        <tr>
            <th>Student ID</th>
            <th>Student Name</th>
            <th>Book ID</th>
            <th>Book Name</th>
            <th>Issue Date</th>
            <th>Due Date</th>
        </tr>
    </thead>
    <tbody>
    <%
    List<List<Object>> issuedBooks = (List<List<Object>>) request.getAttribute("issuedBooks");
    if (issuedBooks != null && !issuedBooks.isEmpty()) {
        for (List<Object> row : issuedBooks) {
            out.println("<tr>");
            out.println("<td>" + row.get(0) + "</td>");
            out.println("<td>" + row.get(1) + "</td>");
            out.println("<td>" + row.get(2) + "</td>");
            out.println("<td>" + row.get(3) + "</td>");
            out.println("<td>" + row.get(4) + "</td>");
            out.println("<td>" + row.get(5) + "</td>");
            out.println("</tr>");
        }
    } else {
        out.println("<tr><td colspan='6'>No issued books found</td></tr>");
    }
    %>
    </tbody>
</table>

<div class="container">
    <form action='IssueBookStud' method='get'>
        <input type='submit' value='Display All Issued Books'>
    </form>
    
    <button type="button" onclick="window.location.href='libMain.jsp'">Go to Dashboard</button>
</div>

</body>
</html>
