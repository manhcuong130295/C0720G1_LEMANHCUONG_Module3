package common;

public class BirthDayException extends Exception {
    private String message;
    public BirthDayException(String message) {
        this.message=message;
    }

    @Override
    public String getMessage() {
        return message;
    }
}
