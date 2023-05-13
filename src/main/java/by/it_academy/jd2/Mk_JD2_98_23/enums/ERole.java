package by.it_academy.jd2.Mk_JD2_98_23.enums;

public enum ERole {
    ADMIN("Администратор"),
    USER("Пользователь");

    private String rusName;

    ERole(String rusName) {
        this.rusName = rusName;
    }
}
