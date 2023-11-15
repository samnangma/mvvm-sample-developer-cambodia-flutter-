String? validatelastName(String? value) {
  if (value == null || value.isEmpty) {
    return "lastName required";
  } 
  return null;
}

String? validatefirstName(String? value) {
  if (value == null || value.isEmpty) {
    return "firstName required";
  }  
  return null;
}

String? validateEmail(String? value) {
  if (value == null || value.isEmpty) {
    return "email required";
  } else if (!RegExp(
    r'^[\w-]+(\.[\w-]+)*@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*(\.[a-zA-Z]{2,})$',
  ).hasMatch(value)) {
    return "Invalid email adddress";
  }
  return null;
}

String? validatePassword(String? value) {
  if (value == null || value.isEmpty) {
    return "password required";
  } else if (!RegExp(
    r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$',
  ).hasMatch(value)) {
    return "password must have at least 8 characters or more with one uppercase, one lowercase and one digit with at least one special characters";
  }
  return null;
}

String? validateConfirmPassword(String? value, confirmPassword) {
  if (value == null || value.isEmpty) {
    return "please retype password";
  
    } if (value != confirmPassword) {
    return "Passwords do not match";
  }
  return null;
}
