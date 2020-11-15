package service;

import model.Employee;

import java.util.List;

public interface EmployeeService {
    List<Employee> getAllEmployee();

    void addNewEmployee(Employee employee);

    void editEmployeeInformation(Employee employee);

    Employee findById(String id);

    List<Employee> findByName(String nameSearch);

    void deleteCustomer(String id);
}
