<%--
  Created by IntelliJ IDEA.
  User: ON
  Date: 19.09.2022
  Time: 18:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Lab 15</title>
</head>
<body>
<form action="../message" method="POST">
    <label for="email">E-mail:</label> <input type="email" id="email" name="email" title="Email"> <br/>
    <label for="message">Message:</label> <input type="text" id="message" name="message" title="Message"> <br/>
    <input type="submit">
</form>
</body>
</html>
