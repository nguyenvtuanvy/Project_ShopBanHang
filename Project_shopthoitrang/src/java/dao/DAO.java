/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import com.mysql.jdbc.Connection;
import context.DBcontext;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import models.Account;
import models.Product;

/**
 *
 * @author Admin
 */
public class DAO {

    public static List<Product> getAll() {
        List<Product> list = null;
        try {
            list = new ArrayList<>();
            String sql = "SELECT * FROM product";
            Connection connection = DBcontext.getConnection();
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Product p = new Product();
                p.setId(rs.getString("id"));
                p.setName(rs.getString("name"));
                p.setImage(rs.getString("image"));
                p.setPrice(rs.getFloat("price"));
                list.add(p);
            }
            ps.close();
        } catch (Exception e) {

        }
        return list;
    }

    public static Product getProductbyId(String idp) {
        String sql = "SELECT * FROM product WHERE id = ?";
        Connection connection = DBcontext.getConnection();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, idp);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                return  new Product(rs.getString(1), rs.getString(2), rs.getString(3), rs.getFloat(4), rs.getString(5));
            }
            ps.close();
        } catch (Exception e) {
        }
        return null;
    }
    
    public static List<Product> getProductbyName(String name) {
        List<Product> list = null;
        try {
            list = new ArrayList<>();
            String sql = "SELECT * FROM product WHERE name LIKE ?";
            Connection connection = DBcontext.getConnection();
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, "%"+name+"%");
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Product p = new Product();
                p.setId(rs.getString("id"));
                p.setName(rs.getString("name"));
                p.setImage(rs.getString("image"));
                p.setPrice(rs.getFloat("price"));
                list.add(p);
            }
            ps.close();
        } catch (Exception e) {

        }
        return list;
    }
    
    public static Account getLogin(String user,String name){
        String sql = "SELECT * FROM `account` WHERE user = ? AND pass = ?";
        try {
            Connection connection = DBcontext.getConnection();
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, user);
            ps.setString(2, name);
            ResultSet rs = ps.executeQuery();
            
            while (rs.next()) {                
                return new Account(rs.getString(1), rs.getString(2));
            }
        } catch (Exception e) {
        }
        return null;
    }
    
    public static Account CheckUserSignUp(String user){
        String sql = "SELECT * FROM `account` WHERE user = ?";
        try {
            Connection connection = DBcontext.getConnection();
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, user);
            ResultSet rs = ps.executeQuery();
            
            while (rs.next()) {                
                return new Account(user, rs.getString(2));
            }
        } catch (Exception e) {
        }
        return null;
    }
    
    public static void signup(String user,String pass){
        String sql = "INSERT INTO `account`(`user`, `pass`) VALUES (?,?)";
        try {
            Connection connection = DBcontext.getConnection();
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, user);
            ps.setString(2, pass);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
}
