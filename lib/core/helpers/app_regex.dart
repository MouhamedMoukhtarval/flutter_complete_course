class AppRegex {
  static bool isValidEmail(String email) {
    return RegExp(
        r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$'
      ).hasMatch(email);
  }
  static bool isValidPassword(String password) {
    return RegExp(
        r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$'
      ).hasMatch(password);
  }
  static bool hasLowercase(String password) {
    return RegExp(r'^(?=.*[a-z])').hasMatch(password);
  }
  static bool hasUppercase(String password) {
    return RegExp(r'^(?=.*[A-Z])').hasMatch(password);
  }
  static bool hasNumber(String password) {
    return RegExp(r'^(?=.*\d)').hasMatch(password);
  }
  static bool hasMinLength(String password) {
    return RegExp(r'.{8,}').hasMatch(password);
  }
  static bool hasSpecialChar(String password) {
    return RegExp(r'^(?=.*[@$!%*?&])').hasMatch(password);
  }
  static bool isPhoneNumberValid(String phoneNumber) {
    return RegExp(r'^\d{10}$').hasMatch(phoneNumber);
  }
}  