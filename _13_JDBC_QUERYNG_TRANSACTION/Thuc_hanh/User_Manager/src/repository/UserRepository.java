package repository;

import model.User;

import java.sql.SQLException;
import java.util.List;

public interface UserRepository {
    List<User> getAllUser();
    public void insertUser(User user) throws SQLException;

    public User selectUser(int id);

    public void deleteUser(int id) throws SQLException;

    public void updateUser(User user) throws SQLException;
    public User getUserById(int id);

    public void insertUserStore(User user) throws SQLException;

}
