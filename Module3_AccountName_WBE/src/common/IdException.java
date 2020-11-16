package common;

public class IdException extends Exception {
    private String message;
    public IdException(String message) {
        this.message=message;
    }

    @Override
    public String getMessage() {
        return message;
    }
}
