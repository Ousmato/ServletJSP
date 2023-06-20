package com.example.servletjsp;

import bean.Utilisateur;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;


@WebServlet({"/deconnexion", "/login",  "/accueil"})
public class MonServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        // HttpSession session = request.getSession();
        // session.invalidate();
        String uri = request.getRequestURI();
        if(uri.equals("/ServletJSP/login")){
            this.getServletContext().getRequestDispatcher("/WEB-INF/Login.jsp").forward(request, response);
        }
        else {
            this.getServletContext().getRequestDispatcher("/WEB-INF/Login.jsp").forward(request, response);
        }
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        //Utilisateur utilisateur = new Utilisateur(request.getParameter("nom"),
        //   request.getParameter("prenom"), request.getParameter("email"));

        System.out.println("je suis dans doPost");


        // HttpSession session = request.getSession();
        //session.setAttribute(utilisateur.getNom(),utilisateur);
        String uri = request.getRequestURI();
        System.out.println("je suis dans doPost affiche URI"+ uri);

        if (request.getParameter("path").equals("login")){
            this.getServletContext().getRequestDispatcher("/WEB-INF/Accueil.jsp").forward(request, response);
        } else if (request.getParameter("path").equals("inscrire")) {
            Utilisateur utilisateur = new Utilisateur(request.getParameter("nom"),
                    request.getParameter("prenom"), request.getParameter("email"));
            HttpSession session = request.getSession();
            session.setAttribute(utilisateur.getNom(),utilisateur);


            this.getServletContext().getRequestDispatcher("/WEB-INF/Accueil.jsp").forward(request, response);

        }

        /*if (uri.contains("accueil")) {

            this.getServletContext().getRequestDispatcher("/WEB-INF/Accueil.jsp").forward(request, response);
          }
        if(uri.contains("login")){
            System.out.println("je suis dans login");
            this.getServletContext().getRequestDispatcher("/WEB-INF/Login.jsp").forward(request, response);
        }*/
    }
}
