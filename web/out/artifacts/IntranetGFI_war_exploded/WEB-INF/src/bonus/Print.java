package bonus;

import java.io.FileWriter;
import java.io.IOException;
import java.util.Arrays;

@SuppressWarnings("Duplicates")
public class Print {


    protected String fileName;

    protected FileWriter writer;

    public Print() {
    }

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
        for (int i = 0; i < l; i++) {
            this.writer.append(c[i]);
            System.out.println(c[i]);
            if (i != (l - 1)) {
                this.writer.append("");
            }
        }
        this.writer.append('\n');
    }

    public void addRow2(String[] d) throws IOException {
        int l = d.length;
//        System.out.println(Arrays.toString(d));


        for (int i = 0; i < l; i++) {
            if (d[i].contains("rules")) {
                char nb = d[i].charAt(d[i].indexOf("(")+1);
                int cpt = 1;
                while(cpt != Integer.valueOf(nb)){
                    cpt++;
                }
                System.out.println(nb);
                int idx = d[i].indexOf("(");
                d[i] = d[i].substring(0, idx - 1);
                String tmp = d[i];

//                if(d[i+21].equals(tmp)){
//                    cpt++;
//                }


                String res = tmp + "_" + cpt;

                if((d[i+6].contains(",")) && (d[i+8].contains(","))){
                    String [] first = d[i+6].split(",");
                    String [] last = d[i+8].split(",");

                    for(int y = 0;y<first.length;y++){
                        this.writer.append("configure set logical-systems GFI_XX security policies from-zone " + d[i] + " to-zone XXXX policy " + res + " match source-adress " + first[y] + "\r\n");
                    }

                    for(int z=0;z<last.length;z++){
                        this.writer.append("configure set logical-systems GFI_XX security policies from-zone " + d[i] + " to-zone XXXX policy " + res + " match destination-address " + last[z] + "\r\n");
                    }
                    this.writer.append("configure set logical-systems GFI_XX security policies from-zone " + d[i] + " to-zone XXXX policy " + res + " match application [ TCP_1400_TO_1500 TCP_135 ]" + "\r\n");
                    this.writer.append("configure set logical-systems GFI_XX security policies from-zone " + d[i] + " to-zone XXXX policy " + res + " then " + d[i + 12] + "\r\n");
                    this.writer.append("configure set logical-systems GFI_XX security policies from-zone " + d[i] + " to-zone XXXX policy " + res + " then log session-close " + "\r\n\n");
                    this.writer.append("commit\r\n");

                }else if(d[i+6].contains(",") && !d[i+8].contains(",")){
                    String [] f = d[i+6].split(",");
                    for(int j=0;j<f.length;j++){
                        this.writer.append("configure set logical-systems GFI_XX security policies from-zone " + d[i] + " to-zone XXXX policy " + res + " match source-adress " + f[j] + "\r\n");
                    }
                    this.writer.append("configure set logical-systems GFI_XX security policies from-zone " + d[i] + " to-zone XXXX policy " + res + " match destination-address " + d[i + 8] + "\r\n");
                    this.writer.append("configure set logical-systems GFI_XX security policies from-zone " + d[i] + " to-zone XXXX policy " + res + " match application [ TCP_1400_TO_1500 TCP_135 ]" + "\r\n");
                    this.writer.append("configure set logical-systems GFI_XX security policies from-zone " + d[i] + " to-zone XXXX policy " + res + " then " + d[i + 12] + "\r\n");
                    this.writer.append("configure set logical-systems GFI_XX security policies from-zone " + d[i] + " to-zone XXXX policy " + res + " then log session-close " + "\r\n\n");
                    this.writer.append("commit\r\n");

                    this.writer.append("\r\n");
                }else if(d[i+8].contains(",") && !d[i+6].contains(",")) {
                    String[] tab = d[i + 8].split(",");
                    this.writer.append("configure set logical-systems GFI_XX security policies from-zone " + d[i] + " to-zone XXXX policy " + res + " match source-adress " + d[i + 6] + "\r\n");
                    for (int k = 0; k < tab.length; k++) {
                        this.writer.append("configure set logical-systems GFI_XX security policies from-zone " + d[i] + " to-zone XXXX policy " + res + " match destination-address " + tab[k] + "\r\n");
                    }
                    this.writer.append("configure set logical-systems GFI_XX security policies from-zone " + d[i] + " to-zone XXXX policy " + res + " match application [ TCP_1400_TO_1500 TCP_135 ]" + "\r\n");
                    this.writer.append("configure set logical-systems GFI_XX security policies from-zone " + d[i] + " to-zone XXXX policy " + res + " then " + d[i + 12] + "\r\n");
                    this.writer.append("configure set logical-systems GFI_XX security policies from-zone " + d[i] + " to-zone XXXX policy " + res + " then log session-close " + "\r\n\n");
                    this.writer.append("commit\r\n");

                    this.writer.append("\r\n");
                }else{
                    this.writer.append("configure set logical-systems GFI_XX security policies from-zone " + d[i] + " to-zone XXXX policy " + res + " match source-adress " + d[i+6] + "\r\n");
                    this.writer.append("configure set logical-systems GFI_XX security policies from-zone " + d[i] + " to-zone XXXX policy " + res + " match destination-address " + d[i + 8] + "\r\n");
                    this.writer.append("configure set logical-systems GFI_XX security policies from-zone " + d[i] + " to-zone XXXX policy " + res + " match application [ TCP_1400_TO_1500 TCP_135 ]" + "\r\n");
                    this.writer.append("configure set logical-systems GFI_XX security policies from-zone " + d[i] + " to-zone XXXX policy " + res + " then " + d[i + 12] + "\r\n");
                    this.writer.append("configure set logical-systems GFI_XX security policies from-zone " + d[i] + " to-zone XXXX policy " + res + " then log session-close " + "\r\n\n");
                    this.writer.append("commit\r\n");

                    this.writer.append("\r\n");
                }





//                System.out.println(d[i]);
//                System.out.println(d[i+6]);
//                System.out.println(d[i+8]);

                if (i != (l - 1)) {
                    this.writer.append("");
                }
            }


        }
    }

        public int compterOccurences (String[]d, String s){
            int counter = 0;
            for (int i = 0; i < d.length; ++i) {
//                System.out.println(d[i]);
                if(d[i].equals(s)){
                    counter++;
                }
//                System.out.println(counter);
            }

            return counter;
        }
    }
