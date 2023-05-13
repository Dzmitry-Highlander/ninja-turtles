package by.it_academy.jd2.Mk_JD2_98_23.web;

import by.it_academy.jd2.Mk_JD2_98_23.core.dto.UserCreateDTO;
import by.it_academy.jd2.Mk_JD2_98_23.core.dto.UserDTO;
import by.it_academy.jd2.Mk_JD2_98_23.service.api.IUserService;
import by.it_academy.jd2.Mk_JD2_98_23.service.factory.UserServiceFactory;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;

@WebServlet("/api/user")
public class UserServlet extends HttpServlet {
    private static final String FIRSTNAME_PARAM_NAME = "firstName";
    private static final String LASTNAME_PARAM_NAME = "lastName";
    private static final String USERNAME_PARAM_NAME = "username";
    private static final String PASSWORD_PARAM_NAME = "password";
    private static final String DATE_OF_BIRTH_PARAM_NAME = "dateOfBirth";
    private final IUserService userService;

    public UserServlet() {
        this.userService = UserServiceFactory.getInstance();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String firstName = req.getParameter(FIRSTNAME_PARAM_NAME);
        String lastName = req.getParameter(LASTNAME_PARAM_NAME);
        String username = req.getParameter(USERNAME_PARAM_NAME);
        String password = req.getParameter(PASSWORD_PARAM_NAME);
        LocalDate dateOfBirth = LocalDate.parse(req.getParameter(DATE_OF_BIRTH_PARAM_NAME));
        UserCreateDTO savedUser = new UserCreateDTO(firstName, lastName, username, password, dateOfBirth.atStartOfDay(),
                LocalDateTime.now(), new ArrayList<>());
        DateTimeFormatter dTimeFormatter = DateTimeFormatter.ofPattern("dd/MM/yyyy hh:mm");

        savedUser.addRole(userService.defaultRole());
        userService.save(savedUser);

        for (UserDTO user : userService.get()) {
            String fDateOfBirth = user.getDateOfBirth().format(dTimeFormatter);
            String fRegistrationDate = user.getRegistrationDate().format(dTimeFormatter);

            resp.getWriter().write("userName: " + user.getUserName() + ", password: " + user.getPassword()
                    + ", firstName: " + user.getFirstName() + ",  lastName: " + user.getLastName()
                    + ", DateOfBirth: "+ fDateOfBirth + ", RegistrationDate: "+ fRegistrationDate + ", role: "
                    + user.getRoles() + "\n");
            resp.getWriter().write("\n");
        }
    }
}


