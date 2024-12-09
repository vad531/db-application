<%--
  Created by IntelliJ IDEA.
  User: vadim
  Date: 14.10.2024
  Time: 10:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Вход</title>
</head>
<body>
<h2>Вход</h2>
<form action="login" method="post">
  Имя пользователя: <input type="text" name="username" required><br>
  Пароль: <input type="password" name="password" required><br>
  <input type="submit" value="Войти">
</form>
</body>
</html>