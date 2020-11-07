package service;

import model.User;


import java.util.List;

public interface UserService {
    List<User> showAllUser();

    public void save(User user);

    public User findById(int id);

    public void deleteUser(int id);

    public void updateUser(User user);

    List<User> SearchByCountry(String country);

    List<User> sortByName();
}
