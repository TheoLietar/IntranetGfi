package controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/ControlerCalcIp")
public class ControlerCalcIp extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String address = req.getParameter("adress");
        String netmask = req.getParameter("netmask");

        System.out.println(address);
        System.out.println(netmask);

        String[] tab = address.split("\\.");
        int one = Integer.valueOf(tab[0]);
        int two = Integer.valueOf((tab[1]));
        int three = Integer.valueOf(tab[2]);
        int four = Integer.valueOf(tab[3]);

        int [] binary = new int[4];

        for(int i=0;i<tab.length;i++){
            binary[i] = Integer.valueOf(tab[i]);
        }

        resp.sendRedirect("CalculatriceIP.jsp");
    }
}
