package pojo;

/**
 * POJO simple sur les informations à récupérer en SSH
 */
public class Cli {
    String id;
    String input;
    String output;
    String CRC;

    public Cli(String id,String input, String output, String CRC) {
        this.input = input;
        this.output = output;
        this.CRC = CRC;
        this.id = id;
    }

    public Cli(){

    }

    public String getInput() {
        return input;
    }

    public void setInput(String input) {
        this.input = input;
    }

    public String getOutput() {
        return output;
    }

    public void setOutput(String output) {
        this.output = output;
    }

    public String getCRC() {
        return CRC;
    }

    public void setCRC(String CRC) {
        this.CRC = CRC;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }
}
