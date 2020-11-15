package service;

import model.User;
import repository.UserRepository;
import repository.UserRepositoryImpl;

import java.sql.SQLException;
import java.util.List;

public class UserServiceImpl implements UserService {
    UserRepository userRepository = new UserRepositoryImpl();

    @Override
    public List<User> showAllUser() {
        return userRepository.getAllUser();
    }

    @Override
    public void save(User user) throws SQLException {
        userRepository.insertUserStore(user);
    }

    @Override
    public User findById(int id) {
        return userRepository.getUserById(id);
    }

    @Override
    public void deleteUser(int id) throws SQLException {
        userRepository.deleteUser(id);
    }

    @Override
    public void updateUser(User user) throws SQLException {
     userRepository.updateUser(user);
    }
}
