package bonus;

import java.io.FileWriter;
import java.io.IOException;

public class Print {


    protected String fileName;

    protected FileWriter writer;

    public Print() {}

    public Print(String fileName) throws IOException {
        this.fileName = fileName;
        this.writer = new FileWriter(this.fileName);
    }

    public String getFileName() {
        return this.fileName;
    }

    public void setFileName(String fileName) throws IOException {
        this.fileName = fileName;
        this.writer = new FileWriter(this.fileName);
    }

    public void close() throws IOException {
        this.writer.flush();
        this.writer.close();
    }

    public void addRow(String[] c) throws IOException {
        int l = c.length;
        for(int i = 0; i < l; i++) {
            this.writer.append(c[i]);
            if(i != (l - 1)) {
                this.writer.append("");
            }
        }
        this.writer.append('\n');
    }

    public void addRow2(String [] d) throws IOException {
        int l = d.length;

        for(int i=0;i<l;i++){
            if(d[i].contains("rules")){
                int idx = d[i].indexOf("(");
                d[i] = d[i].substring(1,idx-1);
                String tmp = d[i];
                String res = tmp + "_";

                //Source
                String addr_src = d[i+3];
                d[i+3] = d[i+3].substring(1,d[i+3].length()-1);

                //Destination
                d[i+4] = d[i+4].substring(1,d[i+4].length()-1);

                //Permission
                d[i+6] = d[i+6].substring(1,d[i+6].length()-1).toLowerCase();

                this.writer.append("configure set logical-systems GFI_XX security policies from-zone " + d[i] + " to-zone XXXX policy " + res + " match source-adress " + d[i+3] + "\r\n");
                this.writer.append("configure set logical-systems GFI_XX security policies from-zone "+d[i]+" to-zone XXXX policy " + res + " match destination-address " + d[i+4] + "\r\n");
                this.writer.append("configure set logical-systems GFI_XX security policies from-zone " +d[i] +" to-zone XXXX policy " + res + " match application [ TCP_1400_TO_1500 TCP_135 ]" + "\r\n");
                this.writer.append("configure set logical-systems GFI_XX security policies from-zone " + d[i] + " to-zone XXXX policy " + res + " then " +d[i+6] + "\r\n");
                this.writer.append("configure set logical-systems GFI_XX security policies from-zone " + d[i] + " to-zone XXXX policy " + res + " then log session-close " + "\r\n\n");
                this.writer.append("commit\r\n");

                this.writer.append("\r\n");


            }



            if(d[i].contains("Permit") || d[i].contains(""))
            System.out.println(d[i]);
            if( i != (l-1)){
                this.writer.append("\n");
            }
        }


    }

    public int compterOccurences(String[] d, String s){
        int counter = 1;
        for (int i = 0; i < d.length; ++i) {


            for (int j = i + 1; j < d.length; ++j) {
                // Ignorer la case
                if (d[i].compareToIgnoreCase(s) == 0) {
                    ++counter;
                }

            }
            System.out.println (counter);
        }

        return counter;
    }
}
