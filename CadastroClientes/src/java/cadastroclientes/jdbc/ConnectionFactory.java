/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cadastroclientes.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author erich
 */
public class ConnectionFactory {
    
    static{
        try{
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException exc){
            exc.printStackTrace();
        }
    }
    
    public static Connection getConnection() throws SQLException {
        
        return DriverManager.getConnection(
                "jdbc:mysql://localhost/cadastro_clientes",
                "root",
                "1234");
    }
}
