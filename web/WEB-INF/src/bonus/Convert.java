package bonus;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.PreparedStatement;

public class Convert {
    public static void main(String[] args) {
        System.out.println("Initialize...");
        Read read = new Read("C:\\Users\\theo.lietard-tmp\\IdeaProjects\\intranetgfi\\web\\Extrat-conf-CISCO-ASA_brut.txt");
        Print print = new Print();

        try{
            print.setFileName("C:\\Users\\theo.lietard-tmp\\Desktop\\oooooooo.txt");
            read.setPrint(print);
            read.exec(1);
        }catch (IOException ex){
            ex.printStackTrace();
        }

        System.out.println("finished");
    }
}