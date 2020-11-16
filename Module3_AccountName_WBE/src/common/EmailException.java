package common;

public class EmailException extends Exception {
    private String message;
    public EmailException(String message) {
        this.message=message;
    }

    @Override
    public String getMessage() {
        return message;
    }
}
