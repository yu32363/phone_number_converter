import 'package:flutter_test/flutter_test.dart';
import 'package:phone_number_converter/phone_number_converter.dart';

void main() {
  test('ถ้าเบอร์โทรมี +66 ต้องเปลี่ยนเป็น 66', () {
    dynamic phoneNumber1 = '+66814015096';
    final converter = PhoneNumberConverter();
    phoneNumber1 = converter.validateMobileNumber(phoneNumber1);
    expect(phoneNumber1, '66814015096');
  });
  test('ถ้าเบอร์โทรมี 0 นำหน้า ต้องเปลี่ยนเป็น 66', () {
    dynamic phoneNumber2 = '0814015096';
    final converter = PhoneNumberConverter();
    phoneNumber2 = converter.validateMobileNumber(phoneNumber2);
    expect(phoneNumber2, '66814015096');
  });
  test('ถ้าเบอร์โทรมีตัวอักษรปนมา ต้อง return null', () {
    dynamic phoneNumber3 = '081401509A';
    final converter = PhoneNumberConverter();
    phoneNumber3 = converter.validateMobileNumber(phoneNumber3);
    expect(phoneNumber3, isNull);
  });
}
