class MYValidation {
  // Username Validation
  String? nameValidate(String? input) {
    if ((input?.length ?? 0) >= 4) {
      return null;
    }
    return "Invalid name";
  }

  // Password Validation
  String? passValidate(String? input) {
    if ((input?.length ?? 0) >= 8) {
      return null;
    }
    return "Invalid Password";
  }

  // Phone Validation
  String? phoneValidate(String? input) {
    RegExp phoneRegex = RegExp(r'^(012|010|011)\d{8}$');
    bool isValidPhoneNumber = phoneRegex.hasMatch(input!);
    if ((isValidPhoneNumber) == true) {
      return null;
    }
    return "Invalid Phone Number";
  }

  // Email Validation
  String? emailValidate(String? input) {
    RegExp emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if ((emailRegex.hasMatch(input!)) == true) {
      return null;
    }
    return "Invalid Email";
  }
}
//emailRegex.hasMatch(email)