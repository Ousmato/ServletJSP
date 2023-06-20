<%--
  Created by IntelliJ IDEA.
  User: maha.ousmana
  Date: 15/06/2023
  Time: 17:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Page login</title>
    <style><%@include file="../CSS/login.css"%></style>
</head>
<body class="cont_eur">
<div>

    <div class="login_e">
        <form action="accueil" method="POST">
            <fieldset>
                <legend>Email</legend>
                <!-- <label for="email">Email:</label>-->
                <input type="email" name="email" id="email" required><br><br>
            </fieldset>

            <fieldset>
                <legend>Mot de Passe</legend>
                <!--<label for="password">Mot de Passe:</label>-->
                <input type="password" name="password" id="password" required><br><br>
                <input type="text" name="path" value="login" style="display: none">
            </fieldset>

            <input type="submit" value=" Connexion">
        </form>
    </div>
    <div class="plate_forme">

    </div>
</div>
</body>
</html>
