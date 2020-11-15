package service;

import model.User;

import java.sql.SQLException;
import java.util.List;

public interface UserService {
    List<User> showAllUser();

    public void save(User user) throws SQLException;

    public User findById(int id);

    public void deleteUser(int id) throws SQLException;

    public void updateUser(User user) throws SQLException;
}
