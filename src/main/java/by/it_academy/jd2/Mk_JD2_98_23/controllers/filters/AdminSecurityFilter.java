package by.it_academy.jd2.Mk_JD2_98_23.controllers.filters;

import by.it_academy.jd2.Mk_JD2_98_23.core.dto.UserDTO;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter(urlPatterns = {"/ui/admin/*", "/api/admin/*"})
public class AdminSecurityFilter implements Filter {
    private static final String USER_SESSION_ATTRIBUTE_NAME = "user";

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse,
                         FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) servletRequest;
        HttpServletResponse res = (HttpServletResponse) servletResponse;
        String contextPath = req.getContextPath();
        HttpSession session = req.getSession();
        if ((session != null) && (session.getAttribute(USER_SESSION_ATTRIBUTE_NAME) != null)) {
            UserDTO user = (UserDTO) session.getAttribute(USER_SESSION_ATTRIBUTE_NAME);
            if (user.isAdmin()) {
                filterChain.doFilter(servletRequest, servletResponse);
            } else {
                res.sendRedirect(contextPath + "/");
            }
        } else {
            res.sendRedirect(contextPath + "/ui/signIn");
        }
    }
}