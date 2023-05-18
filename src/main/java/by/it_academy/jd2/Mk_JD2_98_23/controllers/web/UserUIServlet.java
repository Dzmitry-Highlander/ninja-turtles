package by.it_academy.jd2.Mk_JD2_98_23.controllers.web;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/ui/signUp")
public class UserUIServlet extends HttpServlet {
    private static final String USER_SESSION_ATTRIBUTE_NAME = "user";

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();

        if ((session != null) && (session.getAttribute(USER_SESSION_ATTRIBUTE_NAME) != null)) {
            req.getRequestDispatcher("/ui/").forward(req, resp);
        } else {
            req.getRequestDispatcher("/ui/signUp.jsp").forward(req, resp);
        }
    }
}