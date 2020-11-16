package service;

import model.Employee;
import repository.EmployeeRepository;
import repository.EmployeeRepositoryImpl;

import java.util.List;

public class EmployeeServiceImpl implements EmployeeService {
    private EmployeeRepository employeeRepository = new EmployeeRepositoryImpl();

    @Override
    public List<Employee> getAllEmployee() {
        return employeeRepository.getAllEmployee();
    }

    @Override
    public void addNewEmployee(Employee employee) {
        employeeRepository.addNewEmployee(employee);
    }

    @Override
    public void editEmployeeInformation(Employee employee) {
        employeeRepository.editEmployeeInformation(employee);
    }

    @Override
    public Employee findById(String id) {
        return null;
    }

    @Override
    public List<Employee> findByName(String nameSearch) {
        return null;
    }

    @Override
    public void deleteCustomer(String id) {
        employeeRepository.deleteCustomer(id);
    }
}
