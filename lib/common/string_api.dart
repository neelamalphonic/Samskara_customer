extension extString on String{
  bool get isValidFirstName {
    final firstNameRegExp = RegExp(
        r"^[a-zA-Z\-]+$");
    return firstNameRegExp.hasMatch(this);
  }

  bool get isValidLastName {
    final firstNameRegExp = RegExp(
        // r"^\s*([A-Za-z]{1,}([\.,] |[-']| ))+[A-Za-z]+\.?\s*$"
        r"^[a-zA-Z\-]+$");
    return firstNameRegExp.hasMatch(this);
  }

  bool get isValidEmail {
    final emailRegExap = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    return emailRegExap.hasMatch(this);
  }

  bool get isValidPassword {
    final passwordRegExp = RegExp(
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\><*~]).{8,}/pre>');
    return passwordRegExp.hasMatch(this);
  }

  bool get isNotNull {
    return this != null;
  }
  bool get isFalse{
    return this !=false;
  }
  bool get isValidPhone {
    final phoneRegExp = RegExp(r"^\+?[0-9]{10}$");
    return phoneRegExp.hasMatch(this);
  }
}