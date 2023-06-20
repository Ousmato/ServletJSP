<%--
  Created by IntelliJ IDEA.
  User: maha.ousmana
  Date: 15/06/2023
  Time: 17:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
    <title>Page d'iscription</title>
        <link rel="stylesheet" href="CSS/inscrire.css">
        <style><%@include file="CSS/inscrire.css"%></style>
    </head>
    <body>
        <h1>Formulaire d'inscription</h1>
        <form action="accueil" method="POST">
            <fieldset>
                <legend>Nom</legend>
               <!-- <label for="nom">Nom:</label>-->
                <input type="text" name="nom" id="nom" required><br><br>
            </fieldset>

            <fieldset>
                <legend> Prenom</legend>
               <!-- <legend> <label for="prenom" >Prenom:</label>-->
                <input type="text" name="prenom" id="prenom" required><br><br>
            </fieldset>

            <fieldset>
                <legend>Pseudo</legend>
           <!-- <label for="pseudo"> Pseudo:</label>-->
            <input type="text" name="pseudo" id="pseudo" required><br><br>
            </fieldset>

            <fieldset>
                <legend>Email</legend>
           <!-- <label for="email">Email:</label>-->
                <input type="email" name="email" id="email" required><br><br>
                <input type="text" name="path" value="inscrire" style="display: none">
            </fieldset>

            <fieldset>
                <legend>Mot de Passe</legend>
            <!--<label for="password">Mot de Passe:</label>-->
                <input type="password" name="password" id="password" required><br><br>
            </fieldset>

            <fieldset>
                <legend>Confirmer le mot de passe</legend>
           <!-- <label for="confirmPassword">Confirmer le mot de passe:</label>-->
                <input type="password" name="confirmPassword" id="confirmPassword" required><br><br>
            </fieldset>

            <input type="submit" value="S'inscrire">

        </form>
        <p>Si vous avez un compte connectez-vous <a href="login">ici</a></p>
    </body>
</html>
