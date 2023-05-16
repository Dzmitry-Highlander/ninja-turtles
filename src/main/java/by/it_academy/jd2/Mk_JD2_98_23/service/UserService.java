package by.it_academy.jd2.Mk_JD2_98_23.service;

import by.it_academy.jd2.Mk_JD2_98_23.core.dto.UserCreateDTO;
import by.it_academy.jd2.Mk_JD2_98_23.core.dto.UserDTO;
import by.it_academy.jd2.Mk_JD2_98_23.core.dto.UserRoleDTO;
import by.it_academy.jd2.Mk_JD2_98_23.dao.api.IUserDao;
import by.it_academy.jd2.Mk_JD2_98_23.dao.api.IUserRoleDao;
import by.it_academy.jd2.Mk_JD2_98_23.service.api.IUserService;

import java.time.DateTimeException;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;
import java.util.stream.Collectors;

public class UserService implements IUserService {
    private final IUserDao userDao;
    private IUserRoleDao userRoleDao;

    public UserService(IUserDao userDao, IUserRoleDao userRoleDao) {
        this.userDao = userDao;
        this.userRoleDao = userRoleDao;
    }

    @Override
    public void setService(IUserRoleDao userRoleDao) {
        this.userRoleDao = userRoleDao;
    }

    public UserDTO validate(String username, String password) {
        UserDTO user = userDao.findByUsername(username);

        if (user == null) {

            return null;
        }

        if (!user.getPassword().equals(password)) {
            return null;
        }

        return user;
    }

    @Override
    public UserDTO findByUsername(String username) {
        return userDao.findByUsername(username);
    }

    @Override
    public List<UserDTO> get() {
        return userDao.get();
    }

    @Override
    public UserDTO get(int id) {
        return userDao.get(id);
    }

    @Override
    public UserDTO save(UserCreateDTO item) {
        validate(item);
        int maxCurrentId = this.get()
                .stream()
                .mapToInt(UserDTO::getId)
                .max()
                .orElseThrow();
        UserDTO dto = new UserDTO();

        dto.setId(maxCurrentId + 1);
        dto.setUserName(item.getUserName());
        dto.setPassword(item.getPassword());
        dto.setFirstName(item.getFirstName());
        dto.setLastName(item.getLastName());
        dto.setDateOfBirth(item.getDateOfBirth());
        dto.setRegistrationDate(LocalDateTime.now());
        dto.setRoles(item.getRoles());

        return userDao.save(dto);
    }

    @Override
    public void addRole(int userId, int roleId) {
        userDao.addRole(userId, userRoleDao.get(roleId));
    }

    @Override
    public void removeRole(int userId, int roleId) {
    userDao.removeRole(userId,roleId);
    }

    @Override
    public List<Integer> getRoleIds(int userId) {
        UserDTO user = userDao.get(userId);

        if (user != null) {
            List<UserRoleDTO> roles = user.getRoles();

            return roles.stream().map(UserRoleDTO::getId).collect(Collectors.toList());
        }

        return null;
    }

    @Override
    public List<String> getRoleNames(int userId) {
        UserDTO user = userDao.get(userId);

        if (user != null) {
            List<UserRoleDTO> roles = user.getRoles();

            return roles.stream().map(UserRoleDTO::getName).collect(Collectors.toList());
        }

        return null;
    }

    @Override
    public UserRoleDTO defaultRole() {
        return userRoleDao.get(1);
    }

    private void validate(UserCreateDTO createDTO) {

        if (createDTO.getFirstName().length() > 30) {
            throw new IllegalArgumentException("Превышена длина имени");
        }

        if (createDTO.getLastName().length() > 30) {
            throw new IllegalArgumentException("Превышена длина фамилии");
        }

        if (createDTO.getUserName().length() > 30) {
            throw new IllegalArgumentException("Превышена длина логина");
        }

        if (!createDTO.getPassword().matches("(?=.*[A-Z])(?=.*[a-z])(?=.*\\d)[A-Za-z\\d]{6,}")) {
            throw new IllegalArgumentException("Пароль должен иметь одну прописную, одну строчную букву,одну цифру,\n" +
                    " так же не допускается кириллица. Минимальная длина - 6");
        }

        if (createDTO.getDateOfBirth().isBefore(LocalDate.of(1923, 1, 1))) {
            throw new DateTimeException("Введите дату рождения");
        }

        if (createDTO.getDateOfBirth().isAfter(LocalDate.now())) {
            throw new DateTimeException("Введите дату рождения");
        }
    }
}
