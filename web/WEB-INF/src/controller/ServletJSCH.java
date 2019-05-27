package controller;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.jcraft.jsch.Channel;
import com.jcraft.jsch.ChannelExec;
import com.jcraft.jsch.JSch;
import com.jcraft.jsch.Session;
import pojo.Cli;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.Properties;

@SuppressWarnings("Duplicates")

@WebServlet("/servletJSCH")

/**
 * Servlet permettant la connexion SSH, celle-ci est appelée lors d'une requête AJAX
 */
public class ServletJSCH extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {

            String host = req.getParameter("host");
            String user = req.getParameter("user");
            String pwd =  req.getParameter("pwd");
            String command = req.getParameter("command");
            String id = req.getParameter("id");

            Properties config = new Properties();
            config.put("StrictHostKeyChecking", "no");
            JSch jSch = new JSch();
            Session session = jSch.getSession(user, host, 22);
            session.setPassword(pwd);
            session.setConfig(config);
            long debut = System.currentTimeMillis();
            session.connect();
            Channel channel = session.openChannel("exec");
            ((ChannelExec) channel).setCommand(command);
            channel.setInputStream(null);
            ((ChannelExec) channel).setErrStream(System.err);


            InputStream in = channel.getInputStream();
            channel.connect();
            byte[] tmp = new byte[1024];
            String[] res = new String[3];
            String tab = "";


            int c;
            while ((c = in.read(tmp, 0, 1024)) != -1) {
                while (in.available() > 0) {
                    int i = in.read(tmp, 0, 1024);
                    if (i < 0) break;
                    tab += new String(tmp, 0, i);
                }

                if (channel.isClosed()) {
                    break;
                }
            }


            int idx = tab.indexOf("input error");
            int idxBuf = tab.indexOf("buffer");
            String inputErr = tab.substring(idxBuf + 8, idx);


            int idx2 = tab.indexOf("output error");
            String outputErr = tab.substring(idx2 - 4, idx2);

            int idxCRC = tab.indexOf("CRC");
            int idxGiant = tab.indexOf("giants");
            String CRC = tab.substring(idxGiant + 6, idxCRC);
            PrintWriter out = resp.getWriter();


            res[0] = inputErr.trim();
            res[1] = outputErr.trim();
            res[2] = CRC.trim();

//            System.out.println("Port : " + command.substring(23) + "  JSCH CONNECT RES : " + Arrays.toString(res));

            Cli cli = new Cli();
            cli.setInput(res[0]);
            cli.setOutput(res[1]);
            cli.setCRC(res[2]);
            cli.setId(id);

            channel.disconnect();
            session.disconnect();



            GsonBuilder builder = new GsonBuilder();
            Gson gson = builder.create();
            resp.setContentType("application/json;charset=UTF-8");
            String r = gson.toJson(cli);
            resp.getWriter().write(r);
            resp.getWriter().flush();


        } catch (Exception e) {
            e.printStackTrace();
            resp.getWriter().write("ERREUUUUUUR");
        }
    }

}
