package DAO;

import ds.DS;
import pojo.Utilisateur;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {

    public static void create(Utilisateur user){
        try(Connection con = new DS().getConnection()){
            String query = "INSERT INTO utilisateur (login,password,name,prenom) VALUES (?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1,user.getLogin());
            ps.setString(2,user.getPassword());
            ps.setString(3,user.getNom());
            ps.setString(4,user.getPrenom());
            ps.executeUpdate();
        }catch (Exception e){
            e.printStackTrace();
        }
    }


    public static Utilisateur findByLogin(String login){
        try(Connection con = new DS().getConnection()){
            String query = "SELECT * FROM utilisateur WHERE login = ?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1,login);
            ResultSet rs = ps.executeQuery();
            rs.next();

            return new Utilisateur(rs.getString("login"),rs.getString("password"),rs.getString("name"),rs.getString("prenom"));
        }catch (Exception e){
            e.printStackTrace();
        }

        return null;
    }

    public static void update(String login,Utilisateur user){
        try(Connection con = new DS().getConnection()){
            String query = "UPDATE utilisateur SET login = ?, password = ?, name = ?, prenom = ? WHERE login = ?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1,user.getLogin());
            ps.setString(2,user.getPassword());
            ps.setString(3,user.getNom());
            ps.setString(4,user.getPrenom());
            ps.setString(5,login);
            ps.executeUpdate();
        }catch (Exception e){
            System.out.println("erreur BDD");
        }
    }

    public static void delete(String login){
        try(Connection con = new DS().getConnection()){
            String query = "DELETE FROM utilisateur WHERE login = ?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1,login);
            ps.executeUpdate();
        }catch (Exception e){
            e.printStackTrace();
        }
    }

}
