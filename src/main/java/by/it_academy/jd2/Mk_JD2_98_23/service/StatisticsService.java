package by.it_academy.jd2.Mk_JD2_98_23.service;

import by.it_academy.jd2.Mk_JD2_98_23.service.api.IMessageService;
import by.it_academy.jd2.Mk_JD2_98_23.service.api.IStatisticsService;
import by.it_academy.jd2.Mk_JD2_98_23.service.api.IUserService;
import jakarta.servlet.http.HttpSessionListener;

public class StatisticsService implements IStatisticsService {
    private final HttpSessionListener sessionListener;
    private final IMessageService messageService;
    private final IUserService userService;

    public StatisticsService(HttpSessionListener sessionListener, IMessageService messageService, IUserService userService) {
        this.sessionListener = sessionListener;
        this.messageService = messageService;
        this.userService = userService;
    }

    @Override
    public int getActiveSessions() {
        return 0;
    }

    @Override
    public int getUserCount() {
        return 0;
    }

    @Override
    public int getMessageCount() {
        return 0;
    }
}
