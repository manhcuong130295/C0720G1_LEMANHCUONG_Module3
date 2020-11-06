package service;

import model.User;


import java.util.List;

public interface UserService {
    List<User> showAllUser();
    public void save(User user);

    public User findById(int id);

    public List<User> selectAllUsers();

    public void deleteUser(int id);

    public void updateUser(User user);
}
