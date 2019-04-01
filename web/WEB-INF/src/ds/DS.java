package ds;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.Properties;

public class DS {

    final Properties prop = new Properties();
    InputStream input;

    public Connection getConnection() throws FileNotFoundException {
        input = new FileInputStream("/home/theo/apache-tomcat-9.0.14/bin/basegfi.properties");

        try{
            prop.load(input);
            Class.forName(prop.getProperty("driver"));
            String url = prop.getProperty("url");
            String nom = prop.getProperty("nom");
            String mdp = prop.getProperty("mdp");
            input.close();



            return DriverManager.getConnection(url,nom,mdp);

        }catch(Exception e){
            e.printStackTrace();
            System.out.println("erreur");
        }
        return null;
    }
}
