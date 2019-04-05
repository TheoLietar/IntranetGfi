package ds;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.Properties;

public class DS {



    public Connection getConnection() throws FileNotFoundException {
        //input = new FileInputStream("/home/theo/apache-tomcat-9.0.14/bin/basegfi.properties");

        try{

            Class.forName("org.postgresql.Driver");
            System.out.println("DRiver OK");

            String url = "jdbc:postgresql://localhost:5432/GFIDB";
            String user = "postgres";
            String pwd = "300899";



            return DriverManager.getConnection(url,user,pwd);

        }catch(Exception e){
            e.printStackTrace();
            System.out.println("erreur");
        }
        return null;
    }
}
