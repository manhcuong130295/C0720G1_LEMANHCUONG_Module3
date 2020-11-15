package controller;

import model.Employee;
import service.EmployeeService;
import service.EmployeeServiceImpl;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "EmployeeServlet",urlPatterns = "/employees")
public class EmployeeServlet extends HttpServlet {
    EmployeeService employeeService=new EmployeeServiceImpl();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = " ";
        }
        switch (action) {
            case "create":
                addNewCustomer(request, response);
                break;
            case "edit":
                editEmployee(request,response);
                break;
        }
    }

    private void editEmployee(HttpServletRequest request, HttpServletResponse response) {
    }

    private void addNewCustomer(HttpServletRequest request, HttpServletResponse response) {
        String id=request.getParameter("id");
        String fullName = request.getParameter("employee_name");
        String birthDay = request.getParameter("employee_birthday");
        String gender = request.getParameter("gender");
        String idCardNumber = request.getParameter("employee_id_card");
        String salary = request.getParameter("employee_salary");
        String phone = request.getParameter("employee_phone");
        String email = request.getParameter("employee_email");
        String address =request.getParameter("employee_address");
        String education_degree=request.getParameter("education_degree_name");
        String position=request.getParameter("positions_name");
        String division=request.getParameter("division_name");
        String userName=request.getParameter("username");
        Employee employee=new Employee(id,fullName,birthDay,gender,idCardNumber,salary,phone,email,address,education_degree,position,division,userName);
        employeeService.addNewEmployee(employee);
        listEmployee(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = " ";
        }
        switch (action) {
            case "delete":
                deleteEmployeeById(request,response);
                break;
            case "search":
                searchEmployeeByName(request,response);
                break;
            default:
                listEmployee(request, response);
        }
    }

    private void searchEmployeeByName(HttpServletRequest request, HttpServletResponse response) {
    }

    private void deleteEmployeeById(HttpServletRequest request, HttpServletResponse response) {
        String id=request.getParameter("id");
        employeeService.deleteCustomer(id);
        listEmployee(request,response);
    }

    private void listEmployee(HttpServletRequest request, HttpServletResponse response) {
       List<Employee> employeeList= employeeService.getAllEmployee();
        request.setAttribute("employeeList",employeeList);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("employee/listEmployee.jsp");
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
