package by.it_academy.jd2.Mk_JD2_98_23.controllers.web;

import by.it_academy.jd2.Mk_JD2_98_23.core.dto.MessageDTO;
import by.it_academy.jd2.Mk_JD2_98_23.core.dto.UserDTO;
import by.it_academy.jd2.Mk_JD2_98_23.service.api.IMessageService;
import by.it_academy.jd2.Mk_JD2_98_23.service.factory.MessageServiceFactory;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/api/message/del/*")
public class DeleteMessageServlet extends HttpServlet {
    private static final String USER_SESSION_ATTRIBUTE_NAME = "user";
    private final IMessageService messageService;

    public DeleteMessageServlet() {
        this.messageService = MessageServiceFactory.getInstance();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(false);
        UserDTO currentUser = (UserDTO) session.getAttribute(USER_SESSION_ATTRIBUTE_NAME);

        String pathInfo = req.getPathInfo();
        if (pathInfo == null || pathInfo.equals("/")) {
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "Message id is missing in the request URL");
            return;
        }

        String messageIdParam = req.getParameter("messageId");
        if (messageIdParam == null || messageIdParam.isEmpty()) {
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "Message id is missing in the request URL");
            return;
        }

        int messageId;
        try {
            messageId = Integer.parseInt(messageIdParam);
        } catch (NumberFormatException e) {
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid message id in the request URL");
            return;
        }

        MessageDTO message = messageService.get(messageId);
        if (message == null) {
            resp.sendError(HttpServletResponse.SC_NOT_FOUND, "Message with the specified id not found");
            return;
        }

        if (message.getFrom().getId() != currentUser.getId()) {
            resp.sendError(HttpServletResponse.SC_FORBIDDEN, "You are not allowed to delete this message");
            return;
        }

        messageService.delete(messageId);
        resp.setStatus(HttpServletResponse.SC_NO_CONTENT);
        resp.sendRedirect(req.getContextPath() + "/api/message?param=out");
    }
}