package by.it_academy.jd2.Mk_JD2_98_23.web;

import by.it_academy.jd2.Mk_JD2_98_23.core.dto.UserDTO;
import by.it_academy.jd2.Mk_JD2_98_23.service.api.IUserService;
import by.it_academy.jd2.Mk_JD2_98_23.service.factory.UserServiceFactory;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/api/login")
public class LoginServlet extends HttpServlet {
    private static final String USERNAME_PARAM_NAME = "username";
    private static final String PASSWORD_PARAM_NAME = "password";
    private static final String USER_SESSION_ATTRIBUTE_NAME = "user";
    private final IUserService userService;

    public LoginServlet() {
        this.userService = UserServiceFactory.getInstance();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Getting data from a request
        String username = req.getParameter(USERNAME_PARAM_NAME);
        String password = req.getParameter(PASSWORD_PARAM_NAME);

        // Checking for empty fields
        if (username == null || username.isEmpty() || password == null || password.isEmpty()) {
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "Username or password is empty");
            return;
        }

        // Checking the validity of the username and password
        UserDTO user = userService.validate(username, password);
        if (user == null) {
            resp.sendError(HttpServletResponse.SC_UNAUTHORIZED, "Invalid username or password");
            return;
        }

        // Adding a user to a session
        HttpSession session = req.getSession(true);
        session.setAttribute(USER_SESSION_ATTRIBUTE_NAME, user);

        // Sending a response to the client
        resp.setStatus(HttpServletResponse.SC_OK);
        resp.getWriter().write("Authorization was successful!");
    }
}