class PhoneNumberConverter {
  String validateMobileNumber(String phoneNumber) {
    String patttern = r'(^(?:[+,0,6]6)?[0-9]{10,12}$)';
    RegExp regExp = RegExp(patttern);
    if (regExp.hasMatch(phoneNumber)) {
      if (phoneNumber.startsWith('0', 0)) {
        phoneNumber = phoneNumber.replaceFirst('0', '66');
        if (phoneNumber.length > 11) {
          return 'null';
        }
      } else {
        phoneNumber = phoneNumber.replaceAll(RegExp(r'[+]'), '');
        if (phoneNumber.length > 11) {
          return 'null';
        }
      }
      return phoneNumber;
    }
    return 'null';
  }
}
