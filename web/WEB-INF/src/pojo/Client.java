package pojo;

public class Client {
    public String nom;
    public String confluence;
    public String ticketting;
    public String sla;
    public String contact;
    public String plage;

    public Client(String nom, String confluence, String ticketting, String sla, String contact, String plage) {
        this.nom = nom;
        this.confluence = confluence;
        this.ticketting = ticketting;
        this.sla = sla;
        this.contact = contact;
        this.plage = plage;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getConfluence() {
        return confluence;
    }

    public void setConfluence(String confluence) {
        this.confluence = confluence;
    }

    public String getTicketting() {
        return ticketting;
    }

    public void setTicketting(String ticketting) {
        this.ticketting = ticketting;
    }

    public String getSla() {
        return sla;
    }

    public void setSla(String sla) {
        this.sla = sla;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getPlage() {
        return plage;
    }

    public void setPlage(String plage) {
        this.plage = plage;
    }
}
