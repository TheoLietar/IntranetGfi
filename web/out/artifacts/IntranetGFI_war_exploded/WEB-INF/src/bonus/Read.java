package bonus;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

public class Read {

    protected String fileName;

    protected BufferedReader bufferedReader;

    protected Print print;

    public Read(String fileName) {
        this.fileName = fileName;
    }

    public Read(Print print, String fileName) {
        this.print = print;
        this.fileName = fileName;
    }

    public void setPrint(Print print) {
        this.print = print;
    }

    public Print getPrint() {
        return this.print;
    }

    public void exec(Integer type) {
        String s = "";
        try{
            this.bufferedReader = new BufferedReader(
                    new FileReader(this.fileName));

            while((s = this.bufferedReader.readLine()) != null) {
                String[] columns = s.split("\"");
                int length = columns.length;
                if(type == 1) {
                    this.print.addRow2(columns);
                } else if(length >= 2){
                    double col1 = Double.parseDouble(columns[1]);
                    if(col1 > 20){
                        if(type == 2){
                            this.print.addRow(columns);
                        } else if(type == 3 && length >= 3 && columns[2] != null){
                            this.print.addRow(columns);
                        }
                    }
                }
            }
            this.print.close();

        } catch(IOException ex) {
            ex.printStackTrace();
        } finally {
            try{
                if(this.bufferedReader != null) {
                    this.bufferedReader.close();
                }
            } catch(IOException ex) {
                ex.printStackTrace();
            }
        }
    }
}