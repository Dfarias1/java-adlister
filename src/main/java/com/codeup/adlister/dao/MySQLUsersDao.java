package com.codeup.adlister.dao;

import com.codeup.adlister.models.User;
import com.mysql.jdbc.Driver;
import java.sql.*;

public class MySQLUsersDao implements Users{
    private Connection connection;
    //make connection
    public MySQLUsersDao(Config config){
        try{
        DriverManager.registerDriver(new Driver());
        connection = DriverManager.getConnection(config.getUrl(), config.getUser(), config.getPassword());
    }catch (SQLException e){
            throw new RuntimeException("Error connecting to database.");
        }
    }

    @Override
    public User findByUsername(String username) {
        try{
            String findUsernameQuery = "SELECT * FROM users WHERE username = ?";
            PreparedStatement stmt = connection.prepareStatement(findUsernameQuery);
            stmt.setString(1, username);
            ResultSet rs = stmt.executeQuery();
            rs.next();
             User newUser = new User(rs.getLong("id"), rs.getString("username"), rs.getString("email"), rs.getString("password") );
            return newUser;

        }catch(SQLException e){
            throw new RuntimeException("Could not find user!");
        }
    }

    @Override
    public Long insert(User user) {
        try {
            String insertUserQuery = "INSERT INTO users(username, email, password) VALUES(?, ?, ?)";
            PreparedStatement stmt = connection.prepareStatement(insertUserQuery, Statement.RETURN_GENERATED_KEYS);

            stmt.setString(1, user.getUsername());
            stmt.setString(2, user.getEmail());
            stmt.setString(3, user.getPassword());

            stmt.executeUpdate();

            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);

        } catch (SQLException e) {
            throw new RuntimeException("Error adding user to database.");
        }
    }
}
