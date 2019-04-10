package controller;

import DAO.ClientDAO;
import pojo.Client;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/ControlerAddClient")
public class ControlerAddClient extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String nom = req.getParameter("nom");
        String confluence = req.getParameter("confluence");
        String ticketting = req.getParameter("ticketting");
        String sla = req.getParameter("sla");
        String contact = req.getParameter("contact");
        String plage = req.getParameter("plage");
        String img = req.getParameter("img");

        ClientDAO.create(new Client(nom,confluence,ticketting,sla,contact,plage,img));

        resp.sendRedirect("Accueil.jsp");
    }
}
