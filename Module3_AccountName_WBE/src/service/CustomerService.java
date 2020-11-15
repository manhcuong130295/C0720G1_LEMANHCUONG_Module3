package service;

import model.Customer;

import java.util.List;

public interface CustomerService {
    List<Customer> getAllCustomer();

    void addNewCustomer(Customer customer);

    void editCustomerInformation(Customer customer);

    Customer findById(String id);

    List<Customer> findByName(String nameSearch);

    void deleteCustomer(String id);


}
