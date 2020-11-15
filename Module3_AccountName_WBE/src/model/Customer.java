package model;

public class Customer extends Person {
    String customerType;


    public Customer(String id, String fullName, String birthDay, String gender, String idCardNumber, String phone, String email, String address) {
        super(id, fullName, birthDay, gender, idCardNumber, phone, email, address);
    }

    public Customer(String id, String customerType,String fullName, String birthDay, String gender, String idCardNumber, String phone, String email, String address) {
        super(id, fullName, birthDay, gender, idCardNumber, phone, email, address);
        this.customerType = customerType;
    }

    public String getCustomerType() {
        return customerType;
    }

    public void setCustomerType(String customerType) {
        this.customerType = customerType;
    }

    @Override
    public String toString() {
        return "Customer{" +
                "customerType='" + customerType + '\'' +
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
