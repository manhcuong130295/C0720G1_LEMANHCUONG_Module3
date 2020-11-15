package repository;

import model.Student;

import java.sql.SQLException;
import java.util.List;

public interface StudentRepository {
    List<Student> getAllStudent();
    void addNewStudent(Student student) throws SQLException;
    void editStudentInformation(Student student);
    Student findById(int id);
    List<Student> findByName(String nameSearch);
    void deleteStudent(int id);
}
