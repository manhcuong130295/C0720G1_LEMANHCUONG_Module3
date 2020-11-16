package common;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Validate {
    private static final String REGEX_CUSTOMER_ID = "^(KH-)\\d{4}$";
    private static final String REGEX_PHONE = "^(09|\\(84\\)\\+9)[0,1]\\d{7}$";
    private static final String REGEX_DATE = "^\\d{4}(\\/|-)\\d{2}(\\/|-)\\d{2}$";
    private static final String REGEX_ID_CARD = "^\\d{9}|\\d{12}$";
    private static final String REGEX_EMAIL = "^\\w{3,}(\\.?\\w+)*@[a-z]{2,7}(.[a-z]{2,5}){1,3}$";

    public static void regexIdCustomer(String idCustomer) throws IdException {
        Pattern pattern = Pattern.compile(REGEX_CUSTOMER_ID);
        Matcher matcher = pattern.matcher(idCustomer);
        boolean check = matcher.matches();
        if (!check) {
            throw new IdException("Wrong format! Id customer must be format KH-XXXX");
        }
    }

    public static void regexPhoneNumber(String phoneNumber) throws PhoneNumberException {
        Pattern pattern = Pattern.compile(REGEX_PHONE);
        Matcher matcher = pattern.matcher(phoneNumber);
        boolean check = matcher.matches();
        if (!check) {
            throw new PhoneNumberException("Wrong format! phone number must be format 090xxxxxxx,091xxxxxxx,90xxxxxxx hoặc (84)+91xxxxxxx or 091xxxxxxx");
        }
    }

    public static void regexBirthDay(String birthDay) throws BirthDayException {
        Pattern pattern = Pattern.compile(REGEX_DATE);
        Matcher matcher = pattern.matcher(birthDay);
        boolean check = matcher.matches();
        if (!check) {
            throw new BirthDayException("Wrong format! Birthday must be format YYYY-MM-DD");
        }
    }

    public static void regexIdCardNum(String idCardNumber) throws IdCardNumberException {
        Pattern pattern = Pattern.compile(REGEX_ID_CARD);
        Matcher matcher = pattern.matcher(idCardNumber);
        boolean check = matcher.matches();
        if (!check) {
            throw new IdCardNumberException("Wrong format! Id Card Number must be format XXXXXXXXX (X=0-9)");
        }
    }

    public static void regexEmail(String email) throws EmailException {
        Pattern pattern = Pattern.compile(REGEX_EMAIL);
        Matcher matcher = pattern.matcher(email);
        boolean check = matcher.matches();
        if (!check){
            throw new EmailException("Wrong format! Email must be format example@email.com");
        }
    }
}

