package DAO;

import ds.DS;
import pojo.Client;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class ClientDAO {

    public static void create(Client client){
        try(Connection con = new DS().getConnection()){
            String query = "INSERT INTO client (nom,confluence,ticketting,sla,contact,plage) VALUES (?,?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1,client.getNom());
            ps.setString(2,client.getConfluence());
            ps.setString(3,client.getTicketting());
            ps.setString(4,client.getSla());
            ps.setString(5,client.getContact());
            ps.setString(6,client.getPlage());
            ps.executeUpdate();
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    public static Client findByName(String nom){
        try(Connection con = new DS().getConnection()){
            String query = "SELECT * FROM client WHERE nom = ?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1,nom);
            ResultSet rs = ps.executeQuery();
            rs.next();

            return new Client(rs.getString("nom"),rs.getString("confluence"),rs.getString("ticketting"),rs.getString("sla"),rs.getString("contact"),rs.getString("plage"));
        }catch (Exception e){
            e.printStackTrace();
        }

        return null;
    }
}
