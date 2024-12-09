<%--
  Created by IntelliJ IDEA.
  User: vadim
  Date: 14.10.2024
  Time: 09:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.List" %>
<%@ page import="dto.Reader" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Список читателей</title>
</head>
<body>
<h1>Список читателей</h1>

<%
    // Получаем список читателей из атрибута запроса
    List<Reader> readers = (List<Reader>) request.getAttribute("readers");
%>

<% if (readers != null && !readers.isEmpty()) { %>
<table border="1">
    <thead>
    <tr>
        <th>ID</th>
        <th>Имя</th>
        <th>Телефон</th>
        <th>Email</th>
        <th>Дата регистрации</th>
    </tr>
    </thead>
    <tbody>
    <% for (Reader reader : readers) { %>
    <tr>
        <td><%= reader.getReaderId() %></td>
        <td><%= reader.getName() %></td>
        <td><%= reader.getPhoneNumber() %></td>
        <td><%= reader.getEmail() %></td>
        <td><%= reader.getMembershipDate() %></td>
    </tr>
    <% } %>
    </tbody>
</table>
<% } else { %>
<p>Читателей не найдено.</p>
<% } %>

</body>
</html>
