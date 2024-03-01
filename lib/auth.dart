class User {
  final String fullName;
  final String email;
  final String password;

  User({
    required this.fullName,
    required this.email,
    required this.password,
  });
}

class AuthManager {
  static List<User> users = [];

  // Method to register a new user
  static void signUp(String email, String password, String fullName) {
    users.add(User(
      fullName: fullName,
      email: email,
      password: password,
    ));
  }

  // Method to check if a user with given credentials exists
  static User? login(String email, String password) {
    for (var user in users) {
      if (user.email == email && user.password == password) {
        return user;
      }
    }
    return null;
  }
}
