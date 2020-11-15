package service;

import model.Student;
import repository.StudentRepository;
import repository.StudentRepositoryImpl;

import java.sql.SQLException;
import java.util.List;

public class StudentServiceImpl implements StudentService {
    private StudentRepository studentRepository = new StudentRepositoryImpl();

    @Override
    public List<Student> getAllStudent() {
        return studentRepository.getAllStudent();
    }

    @Override
    public void addNewStudent(Student student) throws SQLException {
        studentRepository.addNewStudent(student);
    }

    @Override
    public void editStudentInformation(Student student) {
        studentRepository.editStudentInformation(student);
    }

    @Override
    public Student findById(int id) {
        return studentRepository.findById(id);
    }

    @Override
    public List<Student> findByName(String nameSearch) {
        return studentRepository.findByName(nameSearch);
    }

    @Override
    public void deleteStudent(int id) {
        studentRepository.deleteStudent(id);
    }
}
