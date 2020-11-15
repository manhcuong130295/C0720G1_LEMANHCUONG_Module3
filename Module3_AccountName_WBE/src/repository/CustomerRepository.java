package repository;

        import model.Customer;

        import java.util.List;

public interface CustomerRepository {
    List<Customer> getAllCustomer();

    void addNewCustomer(Customer customer);

    void editCustomerInformation(Customer customer);

    Customer findById(String id);

    List<Customer> findByName(String nameSearch);
    List<Customer> findByTypeCustomer(String typeCus);

    void deleteCustomer(String id);
}
