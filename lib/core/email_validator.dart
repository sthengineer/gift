import 'dart:core';

/*class EmailValidator1 {
  static RegExp emailRegex = RegExp(
    r'^.+@[a-zA-Z]+\.[a-zA-Z]+$',
  );

  static bool isValidEmail(String email) {
    return emailRegex.hasMatch(email);
  }
}*/




class EmailValidator {
  static bool isValid(String email) {
    if (email.isEmpty) {
      return false; // Email field is empty
    }

    final RegExp emailRegExp = RegExp(
      r"^[a-zA-Z0-9!#\$%&\'+/=?^_`{|}~.-]+@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*$",
    );

    if (!emailRegExp.hasMatch(email)) {
      return false; // Email format is not valid
    }

    final parts = email.split('@');
    if (parts.length != 2) {
      return false; // Email must contain one '@' symbol
    }

    final recipientName = parts[0];
    final domainParts = parts[1].split('.');
    if (domainParts.length != 2) {
      return false;
    }
    final domainName = domainParts[0];
    final topLevelDomain = domainParts[1];

    if (recipientName.length > 64) {
      return false; // Recipient name is too long
    }

    if (recipientName.startsWith(RegExp(r"[!#\$%&\'+/=?^_`{|}~.]")) ||
        recipientName.contains(RegExp(r"[!#\$%&\'+/=?^_`{|}~.]{2,}"))) {
      return false; // Invalid recipient name
    }
    if (['!', '#', '\$', '%', '&', '\'', '+', '/', '=', '?', '^', '_', '`', '{', '|', '}', '~', '.']
        .any((specialChar) => recipientName.endsWith(specialChar))) {
      return false; // Invalid recipient name
    }

    if (domainName.length > 253 ||
        domainName.contains(RegExp(r'[^a-zA-Z0-9-]')) ||
        domainName.startsWith(RegExp(r'[-.]')) ||
        domainName.endsWith('-')) {
      return false; // Invalid domain name
    }

    if (topLevelDomain.length > 63 ||
        topLevelDomain.contains(RegExp(r'[^a-zA-Z0-9]'))) {
      return false; // Invalid top-level domain
    }

    return true; // Email is valid
  }
}