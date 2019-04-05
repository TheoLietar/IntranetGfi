package bonus;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;

public class excel {
    public static void main(String[] args) {
        System.out.println("Initialize ...");
        Read read = new Read(args[0]);
        Print print = new Print();

            try{
                print.setFileName("C:\\Users\\theo.lietard-tmp\\Desktop\\monfichier.txt");
                read.setPrint(print);
                read.exec(1);
            } catch(IOException ex){
                ex.printStackTrace();
            }

        System.out.println("Finished");
    }

}
