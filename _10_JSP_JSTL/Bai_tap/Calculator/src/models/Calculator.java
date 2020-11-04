package models;

public class Calculator {
    float number_1;
    float number_2;
    char operator;

    public Calculator() {
    }

    public Calculator(float number_1, float number_2, char operator) {
        this.number_1 = number_1;
        this.number_2 = number_2;
        this.operator = operator;
    }

    public static float calculator(float number_1, float number_2, char operator) {
        float result;
        switch (operator) {
            case '+':
                result = number_1 + number_2;
                break;
            case '-':
                result = number_1 - number_2;
                break;
            case '*':
                result = number_1 * number_2;
                break;
            case '/':
                if (number_2 != 0) {
                    result = number_1 / number_2;
                } else {
                    throw new ArithmeticException("Cannot divide by zero");
                }
                break;
            default:
                throw new RuntimeException("Invalid operation");

        }
        return result;
    }

    public static void main(String[] args) {
        System.out.println(Calculator.calculator(1,2,'+'));
    }
}
