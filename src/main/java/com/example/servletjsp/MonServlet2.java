package com.example.servletjsp;

import bean.Utilisateur;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/acc")
public class MonServlet2 extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        Utilisateur utilisateur = new Utilisateur(request.getParameter("nom"),
                request.getParameter("prenom"), request.getParameter("email"));
        HttpSession session = request.getSession();
        session.setAttribute(utilisateur.getNom(),utilisateur);


            this.getServletContext().getRequestDispatcher("/WEB-INF/Accueil.jsp").forward(request, response);
        }
    }