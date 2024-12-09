<%--
  Created by IntelliJ IDEA.
  User: vadim
  Date: 14.10.2024
  Time: 14:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Вход</title>
</head>
<body>
<h2>Вход в систему</h2>

<% if (request.getParameter("error") != null) { %>
<p style="color:red;">Неверное имя пользователя или пароль!</p>
<% } %>

<form action="login" method="post">
    Имя пользователя: <input type="text" name="username" required><br>
    Пароль: <input type="password" name="password" required><br>
    <input type="submit" value="Войти">
</form>
</body>
</html>