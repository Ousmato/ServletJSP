
<%--
  Created by IntelliJ IDEA.
  User: maha.ousmana
  Date: 15/06/2023
  Time: 17:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Page Accueil</title>
       <!-- <link type="text/css" rel="stylesheet" href="Accueil.css">-->
        <style><%@include file="../CSS/Accueil.css"%></style>

    </head>
    <body>
    <%--<c:if test="${!empty sessionScope.prenom && !empty sessionScope.nom}">
        <p> vous etes${sessionScope.prenom} ${sessionScope.nom}</p>
    </c:if>--%>
        <div class="header">
            <nav>
                <ul class="menu">
                    <li><a href="#">ACCUEIL</a></li>
                    <li><a href="#">SERVICES</a></li>
                    <li><a href="#">PROJETS</a></li>
                    <li><a href="#">PORTFOLIO</a></li>
                    <li><a href="#">CONTACT</a></li>
                </ul>
                <form>
                    <input type="search" name="q" placeholder="recherche">
                </form>
            </nav>

        </div>
        <div>

        </div>
        <div class="page1">
            <h1 class="bienv">BIENVENUE ${param.nom} ${param.prenom}</h1>


           <table>
                <tr>
                    <th>Nom</th>
                    <th>Prenom</th>
                    <th>Email</th>
                </tr>

               <c:forEach var="user" items="${sessionScope}">

                <tr>
                    <td>${user.value.nom}</td>
                    <td>${user.value.prenom}</td>
                    <td>${user.value.email}</td>
                </tr>

               </c:forEach>
            </table>
        </div>
    <div class="page-separ" ></div>

        <footer>
            <form action="login" method="GET">
            <div class="contenue_footer">
                <!--<a href="Login" class="deconet">Deconnexion</a>-->
                <input type="submit" value="Deconnexion">
                <div class="block_service">
                    <h3> Nos Service</h3>
                    <ul class="liste_service">
                        <li><a href="#">Heberrgement</a></li>
                        <li><a href="#">Nom de dommaine</a></li>
                        <li><a href="#">E-commerce</a></li>
                        <li><a href="#">Machine Learning</a></li>
                        <li><a href="#">Finance</a></li>
                        <li><a href="#">Star-up</a></li>
                    </ul>
                </div>
            </div>
            </form>
                <div class="block_horaire">
                    <h3> Les Horaires</h3>
                    <ul class="liste_horaire">
                        <li>✔️Lundi 10h-18h</li>
                        <li>✔️Mardi 10h-18h</li>
                        <li>✔️Mercredi 10h-18h</li>
                        <li>✔️Jeudi 10h-18h</li>
                        <li>✔️Vendredi 10h-16h</li>
                        <li>❌Samedi Fermé</li>
                        <li>❌Dimanche Fermé</li>
                    </ul>
                </div>

                <div class="block_contact">
                    <h3> Nos contact</h3>
                    <p>+223 76 54 54 89</p>
                    <p>support client@gmail.com</p>
                </div>

                <div class="block_Reseau">
                    <h3> Nos Réseaux Sociaux</h3>
                    <ul class="liste_media">
                        <li ><a href="#"><img src="Icon/facebook.svg" alt="photo">Facebook</a> </li>
                        <li ><a href="#"><img src="Icon/instagram.svg">Instagram</a> </li>
                        <li ><a href="#"><img src="Icon/github.svg">Github</a> </li>
                        <li ><a href="#"><img src="Icon/youtube.svg">Youtube</a> </li>
                        <li ><a href="#"><img src="Icon/twitter.svg">Twitter</a> </li>

                    </ul>

                </div>


            </div>
        </footer>

    </body>
</html>
