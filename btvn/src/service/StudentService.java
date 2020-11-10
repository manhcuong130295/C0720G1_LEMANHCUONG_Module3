package service;

import model.Student;

import java.util.List;

public interface StudentService {
    List<Student> getAllStudent();
    void addNewStudent(Student student);
    void editStudentInformation(Student student);
    Student findById(int id);
    List<Student> findByName(String nameSearch);
    void deleteStudent(int id);
}
