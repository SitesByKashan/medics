// class User {
//   final String fullName;
//   final String email;
//   final String password;

//   User({
//     required this.fullName,
//     required this.email,
//     required this.password,
//   });
// }

// class AuthManager {
//   static List<User> users = [];

//   // Method to register a new user
//   static void signUp(String email, String password, String fullName) {
//     users.add(User(
//       fullName: fullName,
//       email: email,
//       password: password,
//     ));
//   }

//   // Method to check if a user with given credentials exists
//   static User? login(String email, String password) {
//     for (var user in users) {
//       if (user.email == email && user.password == password) {
//         return user;
//       }
//     }
//     return null;
//   }
// }
import 'dart:convert';
import 'package:crypto/crypto.dart'; // For password hashing

class User {
  final String fullName;
  final String email;
  final String passwordHash; // Storing hashed password

  User({
    required this.fullName,
    required this.email,
    required this.passwordHash,
  });
}

class AuthManager {
  static List<User> users = [];

  // Helper method to hash a password
  static String hashPassword(String password) {
    var bytes = utf8.encode(password);
    return sha256.convert(bytes).toString();
  }

  // Method to register a new user
  static String signUp(String email, String password, String fullName) {
    // Check if the email already exists
    for (var user in users) {
      if (user.email == email) {
        return 'Email already registered!';
      }
    }

    // Hash the password before storing
    String hashedPassword = hashPassword(password);

    // Add the user to the list
    users.add(User(
      fullName: fullName,
      email: email,
      passwordHash: hashedPassword,
    ));

    return 'User successfully registered!';
  }

  // Method to check if a user with given credentials exists
  static User? login(String email, String password) {
    String hashedPassword =
        hashPassword(password); // Hash the password for comparison
    for (var user in users) {
      if (user.email == email && user.passwordHash == hashedPassword) {
        return user;
      }
    }
    return null;
  }
}
