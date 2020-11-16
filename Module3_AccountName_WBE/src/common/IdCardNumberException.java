package common;

public class IdCardNumberException  extends Exception{
    private String message;
    public IdCardNumberException(String message) {
        this.message=message;
    }

    @Override
    public String getMessage() {
        return message;
    }
}
