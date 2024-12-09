

public interface UserDAO {
    dto.User getUserByUsername(String username);

    void addUser(String username, String password);

    void addRoleToUser(int userId, String roleName);

    boolean hasRole(int userId, String roleName);
}

