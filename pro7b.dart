
// pro7b.dart
bool validateName(String value) {
  return value.trim().isNotEmpty;
}

bool validateEmail(String value) {
  // Basic email regex
  final emailRegex = RegExp(r'^[\w-\.]+@lbrce\.ac\.in$');
  return emailRegex.hasMatch(value.trim());
}

bool validatePhoneNumber(String value) {
  final phoneRegex = RegExp(r'^\d{10}$');
  return phoneRegex.hasMatch(value.trim());
}

bool validateUsername(String value) {
  return value.trim().isNotEmpty;
}

bool validatePassword(String value) {
  return value.length >= 6;
}

bool validateConfirmPassword(String password, String confirmPassword) {
  return password == confirmPassword;
}