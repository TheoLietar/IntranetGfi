package controller;

import DAO.UserDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/ControlerAuthent")
/**
 * Controller pour l'authentification
 */
public class ControllerAuthent extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String login = req.getParameter("login");
        String password = req.getParameter("password");

        System.out.println(password);

        System.out.println(UserDAO.findByLogin(login));


        if(UserDAO.findByLogin(login) != null){
            if(UserDAO.findByLogin(login).getPassword().equals(password)){
                HttpSession session = req.getSession(true);
                session.setAttribute("login",login);
                resp.sendRedirect("Accueil.jsp");
            }
            else{
                resp.sendRedirect("Authentification.jsp");
            }
        }else{
            resp.sendRedirect("Authentification.jsp");
        }


    }
}
