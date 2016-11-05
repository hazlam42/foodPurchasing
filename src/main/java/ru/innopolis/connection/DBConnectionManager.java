package ru.innopolis.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * DBConnectionManager.java is the utility class for MySql database connection.
 */
public class DBConnectionManager {

    private Connection connection;

    /**
     * Connection to Database
     * @param dbURL
     * @param user
     * @param pwd
     * @throws ClassNotFoundException
     * @throws SQLException
     */
    public DBConnectionManager(String dbURL, String user, String pwd) throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.jdbc.Driver");
        this.connection = DriverManager.getConnection(dbURL, user, pwd);
        System.out.println("Connecting to ShopDB ... ");
    }

    /**
     * Method returns the connection
     * @return
     */
    public Connection getConnection(){
        return this.connection;
    }
}