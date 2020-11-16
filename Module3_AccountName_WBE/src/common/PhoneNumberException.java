package common;

public class PhoneNumberException extends Exception {
    private String message;
    public PhoneNumberException(String message) {
        this.message=message;
    }

    @Override
    public String getMessage() {
        return message;
    }
}
