package repository;

import model.Student;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class StudentRepositoryImpl implements StudentRepository {
    private String jdbcURL = "jdbc:mysql://localhost:3306/student?useSSL=false";
    private String jdbcUsername = "root";
    private String jdbcPassword = "codegym";

    private static final String INSERT_STUDENT_SQL = "INSERT INTO student" + "  (name,age, email, address) VALUES " +
            " (?,?,?,?);";

    private static final String SELECT_STUDENT_BY_ID = "select * from student where id =?";
    private static final String SELECT_ALL_STUDENT = "select * from student";
    private static final String DELETE_STUDENT_SQL = "delete from student where id = ?;";
    private static final String UPDATE_STUDENT_SQL = "update student set name = ?,age=?,email= ?, address =? where id = ?;";
    private static final String SELECT_STUDENT_BY_NAME = "select * from student where student.name like ?";
    private static  final String ORDER_BY_NAME= "select *from student order by student.name;";

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
    public List<Student> getAllStudent() {
     List<Student> studentList = new ArrayList<>();
     try {
         Connection connection=getConnection();
         PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_STUDENT);
         ResultSet rs = preparedStatement.executeQuery();
         while (rs.next()){
             int id = rs.getInt("id");
             String name = rs.getString("name");
             int age= rs.getInt("age");
             String email=rs.getString("email");
             String address = rs.getString("address");
             Student student=new Student(id,name,age,email,address);
             studentList.add(student);
         }
     } catch (SQLException e) {
         e.printStackTrace();
     }
     return studentList;
    }

    @Override
    public void addNewStudent(Student student) throws SQLException {
        Connection connection=null;
        try {
      connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_STUDENT_SQL);
            preparedStatement.setString(1, student.getName());
            preparedStatement.setInt(2, student.getAge());
            preparedStatement.setString(3, student.getEmail());
            preparedStatement.setString(4,student.getAddress());
            preparedStatement.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            connection.close();
        }
    }

    @Override
    public void editStudentInformation(Student student) {
        Connection connection = getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_STUDENT_SQL);
            preparedStatement.setString(1, student.getName());
            preparedStatement.setInt(2, student.getAge());
            preparedStatement.setString(3, student.getEmail());
            preparedStatement.setString(4, student.getAddress());
            preparedStatement.setInt(5, student.getId());

            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public Student findById(int idSearch) {
         Student student = null;
         try {
             Connection connection=getConnection();
             PreparedStatement preparedStatement= connection.prepareStatement(SELECT_STUDENT_BY_ID);
             preparedStatement.setInt(1,idSearch);
             ResultSet rs=preparedStatement.executeQuery();
             while (rs.next()){
                 int id = rs.getInt("id");
                 String name = rs.getString("name");
                 int age= rs.getInt("age");
                 String email= rs.getString("email");
                 String address= rs.getString("address");
                 student= new Student(id,name,age,email,address);

             }

         } catch (SQLException e) {
             e.printStackTrace();
         }
         return student;
    }

    @Override
    public List<Student> findByName(String nameSearch) {
      List<Student> studentList=new ArrayList<>();
      try {
          Connection connection=getConnection();
          PreparedStatement preparedStatement= connection.prepareStatement(SELECT_STUDENT_BY_NAME);
          preparedStatement.setString(1,nameSearch);
          ResultSet rs = preparedStatement.executeQuery();
          while (rs.next()){
              int id = rs.getInt("id");
              String name = rs.getString("name");
              int age= rs.getInt("age");
              String email= rs.getString("email");
              String address= rs.getString("address");
              Student  student= new Student(id,name,age,email,address);
              studentList.add(student);
          }
      } catch (SQLException e) {
          e.printStackTrace();
      }
      return studentList;
    }

    @Override
    public void deleteStudent(int id) {
        Connection connection = getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(DELETE_STUDENT_SQL);
            preparedStatement.setInt(1, id);
            preparedStatement.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

}
