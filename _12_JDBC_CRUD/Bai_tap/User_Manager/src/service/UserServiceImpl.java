package service;

import model.User;
import repository.UserRepository;
import repository.UserRepositoryImpl;

import java.util.ArrayList;
import java.util.List;

public class UserServiceImpl implements UserService {
    private UserRepositoryImpl userRepository = new UserRepositoryImpl();

    @Override
    public List<User> showAllUser() {
        return userRepository.getAllUser();
    }

    @Override
    public void save(User user) {
        userRepository.insertUser(user);
    }

    @Override
    public User findById(int id) {
        return userRepository.selectUser(id);

    }

    @Override
    public void deleteUser(int id) {
        userRepository.deleteUser(id);
    }

    @Override
    public void updateUser(User user) {
        userRepository.updateUser(user);
    }

    @Override
    public List<User> SearchByCountry(String country) {
        return userRepository.searchByCountry(country);
    }

    @Override
    public List<User> sortByName() {
        return userRepository.sortByName();
    }

    @Override
    public void addUserTransaction(User user, int[] permision) {
        userRepository.addUserTransaction(user,permision);
    }
}
