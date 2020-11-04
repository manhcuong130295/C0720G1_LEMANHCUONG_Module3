package models;

public class Customers {
    private String fullName;
    private String birthday;
    private String address;
    private String avatar;

    public Customers() {
    }

    public Customers(String fullName, String birthday, String address, String avatar) {
        this.fullName = fullName;
        this.birthday = birthday;
        this.address = address;
        this.avatar = avatar;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }
}
