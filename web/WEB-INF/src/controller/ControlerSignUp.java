package controller;

import DAO.UserDAO;
import pojo.Utilisateur;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/ControlerSignUp")
public class ControlerSignUp extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String nom = req.getParameter("nom");
        String prenom = req.getParameter("prenom");
        String login = req.getParameter("login");
        String password = req.getParameter("password");

        System.out.println(nom);
        System.out.println(prenom);

        UserDAO.create(new Utilisateur(login,password,nom,prenom));

        resp.sendRedirect("Accueil.jsp");
    }
}
