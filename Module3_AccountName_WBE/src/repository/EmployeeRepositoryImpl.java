package repository;

import model.Employee;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class EmployeeRepositoryImpl implements EmployeeRepository {
    private String jdbcURL = "jdbc:mysql://localhost:3306/furama_resort?useSSL=false";
    private String jdbcUsername = "root";
    private String jdbcPassword = "codegym";

    private final String INSERT_INTO_EMPLOYEE="insert into employee(employee_name,employee_birthday,gender,employee_id_card,employee_salary,employee_phone,employee_email,employee_address,positions_id,education_degree_id,division_id,username) value\n" +
            "(?,?,?,?,?,?,?,?,?,?,?,?)";
    private final String SELECT_ALL_EMPLOYEE="select*from employee inner join positions on employee.positions_id=positions.positions_id\n" +
            "inner join education_degree on education_degree.education_degree_id=employee.education_degree_id\n" +
            "inner join division on division.division_id=employee.division_id\n" +
            "inner join users on users.username=employee.username";

    private final String DELETE_BY_ID="delete from employee where employee.employee_id=?;";
    private final String UPDATE_EMPLOYEE_BY_ID="update employee set employee.employee_name=?,employee.employee_birthday=?,employee.gender=?,employee.employee_id_card=?,employee.employee_salary=?,employee.employee_phone=?,employee.employee_email=?,employee.employee_address=?,employee.positions_id=?,employee.education_degree_id=?,employee.division_id=?,employee.username=? where employee.employee_id=?;";

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
    public List<Employee> getAllEmployee() {
//        String id, String fullName, String birthDay, String gender, String idCardNumber,String salary, String phone, String email, String address, String education_degree, String position, String division,String userName
      List<Employee> employeeList=new ArrayList<>();
      Connection connection=null;
      try {
          connection=getConnection();
          PreparedStatement statement=connection.prepareStatement(SELECT_ALL_EMPLOYEE);
          ResultSet rs=statement.executeQuery();
          while (rs.next()){
              String id = rs.getString("employee_id");
              String fullName = rs.getString("employee_name");
              String birthDay = rs.getString("employee_birthday");
              String gender = rs.getString("gender");
              String idCardNumber = rs.getString("employee_id_card");
              String salary = rs.getString("employee_salary");
              String phone = rs.getString("employee_phone");
              String email = rs.getString("employee_email");
              String address = rs.getString("employee_address");
              String education_degree=rs.getString("education_degree_name");
              String position=rs.getString("positions_name");
              String division=rs.getString("division_name");
              String userName=rs.getString("username");
              Employee employee = new Employee(id,fullName,birthDay,gender,idCardNumber,salary,phone,email,address,education_degree,position,division,userName);
              employeeList.add(employee);
          }
      } catch (SQLException e) {
          e.printStackTrace();
      }
      return employeeList;
    }

    @Override
    public void addNewEmployee(Employee employee) {
        Connection connection=null;
        try {
            connection=getConnection();
            PreparedStatement statement=connection.prepareStatement(INSERT_INTO_EMPLOYEE);
            statement.setString(1 ,employee.getFullName());
            statement.setString(2,employee.getBirthDay());
            statement.setString(3,employee.getGender());
            statement.setString(4,employee.getIdCardNumber());
            statement.setString(5,employee.getSalary());
            statement.setString(6,employee.getPhone());
            statement.setString(7,employee.getEmail());
            statement.setString(8,employee.getAddress());
            statement.setInt(9,Integer.parseInt(employee.getEducation_degree()));
            statement.setInt(10,Integer.parseInt(employee.getPosition()));
            statement.setInt(11,Integer.parseInt(employee.getDivision()));
            statement.setString(12,employee.getUserName());
            statement.execute();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void editEmployeeInformation(Employee employee) {
        Connection connection=null;
        try {
            connection=getConnection();
            PreparedStatement statement=connection.prepareStatement(UPDATE_EMPLOYEE_BY_ID);
            statement.setString(1 ,employee.getFullName());
            statement.setString(2,employee.getBirthDay());
            statement.setString(3,employee.getGender());
            statement.setString(4,employee.getIdCardNumber());
            statement.setString(5,employee.getSalary());
            statement.setString(6,employee.getPhone());
            statement.setString(7,employee.getEmail());
            statement.setString(8,employee.getAddress());
            statement.setInt(9,Integer.parseInt(employee.getEducation_degree()));
            statement.setInt(10,Integer.parseInt(employee.getPosition()));
            statement.setInt(11,Integer.parseInt(employee.getDivision()));
            statement.setString(12,employee.getUserName());
            statement.setInt(13,Integer.parseInt(employee.getId()));
            statement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
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
       Connection connection=null;
       try {
           connection=getConnection();
           PreparedStatement statement = connection.prepareStatement(DELETE_BY_ID);
           statement.setInt(1,Integer.parseInt(id));
           statement.execute();
       } catch (SQLException e) {
           e.printStackTrace();
       }
    }
}
