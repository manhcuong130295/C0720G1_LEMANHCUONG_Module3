package repository;

import model.Customer;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CustomerRepositoryImpl implements CustomerRepository {
    private String jdbcURL = "jdbc:mysql://localhost:3306/furama_resort?useSSL=false";
    private String jdbcUsername = "root";
    private String jdbcPassword = "codegym";

    private static final String SELECT_ALL_CUSTOMER = "Select * from customer inner join customer_type on customer.customer_type_id=customer_type.customer_type_id;";
    private static final String INSERT_INTO_CUSTOMER = "INSERT INTO `furama_resort`.`customer` (`customer_id`, `customer_type_id`, `customer_name`, `customer_birthday`, `customer_gender`, `customer_id_card`, `customer_phone`, `customer_email`, `customer_address`) VALUES (?, ?, ?, ?,?, ?, ?,?, ?);";
    private static final String UPDATE_CUSTOMER = "update customer set customer.customer_type_id=?, customer.customer_name=?,customer.customer_birthday=?,customer.customer_gender=?,customer.customer_id_card=?,customer.customer_phone=?,customer.customer_email=?,customer.customer_address=?where customer.customer_id=?; ";
    private static final String DELETE_CUSTOMER_BY_ID = "delete from customer where customer_id=?";
    private static final String SELECT_CUSTOMER_BY_NAME="select customer.customer_id,customer.customer_name,customer.customer_birthday,customer.customer_gender,customer.customer_id_card,customer.customer_phone,customer.customer_email,customer.customer_address,customer_type.customer_type_name from customer inner join customer_type on customer.customer_type_id=customer_type.customer_type_id where customer.customer_name like ?;";


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
    public List<Customer> getAllCustomer() {
        List<Customer> customerList = new ArrayList<>();
        try {
            Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_CUSTOMER);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                String id = rs.getString("customer_id");
                String fullName = rs.getString("customer_name");
                String birthDay = rs.getString("customer_birthday");
                String gender = rs.getString("customer_gender");
                String idCardNumber = rs.getString("customer_id_card");
                String phoneNumber = rs.getString("customer_phone");
                String email = rs.getString("customer_email");
                String address = rs.getString("customer_address");
                String type = rs.getString("customer_type_name");
                Customer customer = new Customer(id, type, fullName, birthDay, gender, idCardNumber, phoneNumber, email, address);
                customerList.add(customer);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return customerList;
    }

    @Override
    public void addNewCustomer(Customer customer) {
        Connection connection = null;
        try {
            connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_INTO_CUSTOMER);
            preparedStatement.setString(1, customer.getId());
            preparedStatement.setInt(2, Integer.parseInt(customer.getCustomerType()));
            preparedStatement.setString(3, customer.getFullName());
            preparedStatement.setString(4, customer.getBirthDay());
            preparedStatement.setString(5, customer.getGender());
            preparedStatement.setString(6, customer.getIdCardNumber());
            preparedStatement.setString(7, customer.getPhone());
            preparedStatement.setString(8, customer.getEmail());
            preparedStatement.setString(9, customer.getAddress());
            preparedStatement.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    @Override
    public void editCustomerInformation(Customer customer) {
        Connection connection = null;
        try {
            connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_CUSTOMER);
            preparedStatement.setInt(1, Integer.parseInt(customer.getCustomerType()));
            preparedStatement.setString(2, customer.getFullName());
            preparedStatement.setString(3, customer.getBirthDay());
            preparedStatement.setString(4, customer.getGender());
            preparedStatement.setString(5, customer.getIdCardNumber());
            preparedStatement.setString(6, customer.getPhone());
            preparedStatement.setString(7, customer.getEmail());
            preparedStatement.setString(8, customer.getAddress());
            preparedStatement.setString(9, customer.getId());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public Customer findById(String id) {
        return null;
    }

    @Override
    public List<Customer> findByName(String nameSearch) {

        List<Customer> customerList = new ArrayList<>();
        try {
            Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_CUSTOMER_BY_NAME);
            preparedStatement.setString(1,"%"+nameSearch+"%");
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                String id = rs.getString("customer_id");
                String fullName = rs.getString("customer_name");
                String birthDay = rs.getString("customer_birthday");
                String gender = rs.getString("customer_gender");
                String idCardNumber = rs.getString("customer_id_card");
                String phoneNumber = rs.getString("customer_phone");
                String email = rs.getString("customer_email");
                String address = rs.getString("customer_address");
                String type = rs.getString("customer_type_name");
                Customer customer = new Customer(id, type, fullName, birthDay, gender, idCardNumber, phoneNumber, email, address);
                customerList.add(customer);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return customerList;
    }

    @Override
    public List<Customer> findByTypeCustomer(String typeCus) {
        return null;
    }

    @Override
    public void deleteCustomer(String id) {
         Connection connection=null;
         try {
             connection=getConnection();
             PreparedStatement preparedStatement=connection.prepareStatement(DELETE_CUSTOMER_BY_ID);
             preparedStatement.setString(1,id);
             preparedStatement.execute();
         } catch (SQLException e) {
             e.printStackTrace();
         }finally {
             try {
                 connection.close();
             } catch (SQLException e) {
                             e.printStackTrace();
             }
         }
    }
}
