package model;

public class Employee extends Person {
    String education_degree;
    String position;
    String division;
    String userName;
    String salary;

    public Employee(String id, String fullName, String birthDay, String gender, String idCardNumber, String phone, String email, String address) {
        super(id, fullName, birthDay, gender, idCardNumber, phone, email, address);
    }

    public Employee(String id, String fullName, String birthDay, String gender, String idCardNumber,String salary, String phone, String email, String address, String education_degree, String position, String division,String userName) {
        super(id, fullName, birthDay, gender, idCardNumber, phone, email, address);
        this.education_degree = education_degree;
        this.position = position;
        this.division = division;
        this.userName=userName;
        this.salary=salary;
    }

    public String getEducation_degree() {
        return education_degree;
    }

    public void setEducation_degree(String education_degree) {
        this.education_degree = education_degree;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public String getDivision() {
        return division;
    }

    public void setDivision(String division) {
        this.division = division;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getSalary() {
        return salary;
    }

    public void setSalary(String salary) {
        this.salary = salary;
    }

    @Override
    public String toString() {
        return "Employee{" +
                "education_degree='" + education_degree + '\'' +
                ", position='" + position + '\'' +
                ", division='" + division + '\'' +
                ", userName='" + userName + '\'' +
                ", salary='" + salary + '\'' +
                ", id='" + id + '\'' +
                ", fullName='" + fullName + '\'' +
                ", gender='" + gender + '\'' +
                ", birthDay='" + birthDay + '\'' +
                ", idCardNumber='" + idCardNumber + '\'' +
                ", phone='" + phone + '\'' +
                ", email='" + email + '\'' +
                ", address='" + address + '\'' +
                "} " + super.toString();
    }
}
