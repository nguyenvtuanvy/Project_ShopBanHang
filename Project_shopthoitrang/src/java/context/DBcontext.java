/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package context;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Admin
 */
public class DBcontext {
    private static Connection connection;

    // kết nối csdl
   public static synchronized Connection getConnection() {
        if (connection != null) {
            return connection;
        } else {
            try {
                String url = "jdbc:mysql://localhost:3306/query";
                Class.forName("com.mysql.jdbc.Driver");
                String user = "root";
                String pass = "";
                try {
                    connection = (Connection) DriverManager.getConnection(url, user, pass);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return connection;
    }
    
}
