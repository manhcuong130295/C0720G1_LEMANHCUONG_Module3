package service;

import model.Customer;
import repository.CustomerRepository;
import repository.CustomerRepositoryImpl;

import java.util.List;

public class CustomerServiceImpl implements CustomerService {
    private CustomerRepository customerRepository = new CustomerRepositoryImpl();

    @Override
    public List<Customer> getAllCustomer() {
        return customerRepository.getAllCustomer();
    }

    @Override
    public void addNewCustomer(Customer customer) {
        customerRepository.addNewCustomer(customer);
    }

    @Override
    public void editCustomerInformation(Customer customer) {
        customerRepository.editCustomerInformation(customer);
    }

    @Override
    public Customer findById(String id) {
        return null;
    }

    @Override
    public List<Customer> findByName(String nameSearch) {
        return customerRepository.findByName(nameSearch);
    }

    @Override
    public void deleteCustomer(String id) {
        customerRepository.deleteCustomer(id);
    }
}
