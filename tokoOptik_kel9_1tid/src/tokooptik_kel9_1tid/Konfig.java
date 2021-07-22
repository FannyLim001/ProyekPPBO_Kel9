/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tokooptik_kel9_1tid;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author FANNY
 */
public class Konfig {
    private static Connection MySQLConfig;
    public static Connection configDB() throws SQLException{
        try {
            String url="jdbc:mysql://localhost:3306/toko_optik?"; //url database
            String user="root"; //user database
            String pass=""; //password database
            
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            MySQLConfig=DriverManager.getConnection(url, user, pass);
            
        } catch (SQLException e) {
            System.out.println("koneksi gagal "+e.getMessage());
        }
        return MySQLConfig;
    }
}
