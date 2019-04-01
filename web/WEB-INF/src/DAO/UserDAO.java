package DAO;

import ds.DS;
import pojo.Utilisateur;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class UserDAO {

    public static void create(Utilisateur user){
        try(Connection con = new DS().getConnection()){
            String query = "INSERT INTO user (login,password) VALUES (?,?)";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1,user.getLogin());
            ps.setString(2,user.getPassword());
            ps.executeUpdate();
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
