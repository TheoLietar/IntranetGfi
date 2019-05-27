package controller;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.jcraft.jsch.Channel;
import com.jcraft.jsch.ChannelExec;
import com.jcraft.jsch.JSch;
import com.jcraft.jsch.Session;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.*;
import java.io.*;
import java.nio.file.FileSystem;
import java.nio.file.FileSystems;
import java.nio.file.Path;
import java.sql.SQLOutput;
import java.util.Arrays;
import java.util.Properties;
import java.util.concurrent.Callable;
import java.util.function.IntSupplier;

@SuppressWarnings("Duplicates")

/**
 * Méthode permettant de se connecter en SSH sur un équipement
 */
public class JschConnect extends HttpServlet implements Runnable {
    String user;
    String host;
    String pwd;
    String command;
    String[] res;
    boolean fini;

    public JschConnect(String host, String user, String pwd, String command) {
        this.host = host;
        this.user = user;
        this.pwd = pwd;
        this.command = command;
        this.res = new String[3];
        this.fini = false;
    }

    @Override
    public void run() {
        try {

//            System.out.println(host + ", " + user + ", " + pwd + ", " +command);
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

            res[0] = inputErr;
            res[1] = outputErr;
            res[2] = CRC;

//            System.out.println("Port : " + command.substring(23) + "  JSCH CONNECT RES : " + Arrays.toString(res));


            System.out.println("Port UP : " + command.substring(23) + " , Time : " + (System.currentTimeMillis() - debut));

            channel.disconnect();
            session.disconnect();

            fini = true;

            Gson gson = new GsonBuilder().create();

            gson.toJson(res);


        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public String[] getRes() {
        return res;
    }

    public boolean isFini() {
        return fini;
    }
}
