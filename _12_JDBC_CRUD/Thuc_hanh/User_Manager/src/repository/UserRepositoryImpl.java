package repository;

import model.User;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserRepositoryImpl implements UserRepository {
    private String jdbcURL = "jdbc:mysql://localhost:3306/demo?useSSL=false";
    private String jdbcUsername = "root";
    private String jdbcPassword = "codegym";

    private static final String INSERT_USERS_SQL = "INSERT INTO users" + "  (name, email, country) VALUES " +
            " (?, ?, ?);";

    private static final String SELECT_USER_BY_ID = "select id,name,email,country from users where id =?";
    private static final String SELECT_ALL_USERS = "select * from users";
    private static final String DELETE_USERS_SQL = "delete from users where id = ?;";
    private static final String UPDATE_USERS_SQL = "update users set name = ?,email= ?, country =? where id = ?;";
    protected Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (SQLException e) {

            e.printStackTrace();
        } catch (ClassNotFoundException e) {

            e.printStackTrace();
        }
        return connection;
    }
    @Override
    public List<User> getAllUser() {
       List<User> userList=new ArrayList<>();
       try {
           Connection connection=getConnection();
           PreparedStatement preparedStatement=connection.prepareStatement(SELECT_ALL_USERS );
           ResultSet rs = preparedStatement.executeQuery();
           while (rs.next()){
               int id = rs.getInt("id");
               String name = rs.getString("name");
               String email=rs.getString("email");
               String country = rs.getString("country");
               User user = new User(id,name,email,country);
               userList.add(user);
           }
       } catch (SQLException e)
       {
           e.printStackTrace();
       }

       return userList;
    }

    @Override
    public void insertUser(User user)  {
       try {
           Connection connection=getConnection();
           PreparedStatement preparedStatement=connection.prepareStatement(INSERT_USERS_SQL);
           preparedStatement.setString(1,user.getName());
           preparedStatement.setString(2,user.getEmail());
           preparedStatement.setString(3,user.getCountry());
           preparedStatement.execute();
       } catch (SQLException e) {
           e.printStackTrace();
       }
    }

    @Override
    public User selectUser(int id) {
        User user=null;
        try {
            Connection connection=getConnection();
            PreparedStatement preparedStatement=connection.prepareStatement(SELECT_USER_BY_ID);
            preparedStatement.setInt(1,id);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()){
                String name = rs.getString("name");
                String email = rs.getString("email");
                String country = rs.getString("country");
                user = new User(id, name, email, country);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }

    @Override
    public List<User> selectAllUsers() {
        return null;
    }

    @Override
    public void deleteUser(int id) {
           Connection connection=getConnection();
         try {
             PreparedStatement preparedStatement = connection.prepareStatement(DELETE_USERS_SQL);
             preparedStatement.setInt(1,id);
             preparedStatement.execute();
         } catch (SQLException e) {
             e.printStackTrace();
         }

    }

    @Override
    public void updateUser(User user) {

        Connection connection=getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_USERS_SQL);
            preparedStatement.setString(1,user.getName());
            preparedStatement.setString(2,user.getEmail());
            preparedStatement.setString(3,user.getCountry());
            preparedStatement.setInt(4,user.getId());

            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    private void printSQLException(SQLException ex) {
        for (Throwable e : ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }

}
