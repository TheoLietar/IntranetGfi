package DAO;

import ds.DS;
import pojo.Liens;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LiensDAO {

    public static void create(Liens lien){
            try(Connection con = new DS().getConnection()){
                String query = "INSERT INTO liens (link,nom) VALUES (?,?)";
                PreparedStatement ps = con.prepareStatement(query);
                ps.setString(1,lien.getLink());
                ps.setString(2,lien.getName());
                ps.executeUpdate();
            }catch (Exception e){
                e.printStackTrace();
            }
    }


    public static Liens findByName(String nom){
        try(Connection con = new DS().getConnection()){
            String query = "SELECT * FROM liens WHERE nom = ?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1,nom);
            ResultSet rs = ps.executeQuery();
            rs.next();

            return new Liens(rs.getString("link"),rs.getString("nom"));
        }catch (Exception e){
            e.printStackTrace();
        }

        return null;
    }

    public static void delete(String nom){
        try(Connection con = new DS().getConnection()){
            String query = "DELETE FROM liens WHERE nom = ?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1,nom);
            ps.executeUpdate();
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
