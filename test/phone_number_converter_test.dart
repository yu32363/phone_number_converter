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
    expect(phoneNumber3, 'null');
  });
  test('ถ้าเบอร์โทรแปลงแล้วเกิน 11 หลักต้อง return null', () {
    dynamic phoneNumber4 = '06881234567';
    final converter = PhoneNumberConverter();
    phoneNumber4 = converter.validateMobileNumber(phoneNumber4);
    expect(phoneNumber4, 'null');
  });
  test('ถ้าเบอร์โทรมี 12 หลักแต่แปลงออกมาแล้วเกิน 11 หลัก ต้อง return null',
      () {
    dynamic phoneNumber5 = '066812345679';
    final converter = PhoneNumberConverter();
    phoneNumber5 = converter.validateMobileNumber(phoneNumber5);
    expect(phoneNumber5, 'null');
  });
  test('ถ้าเบอร์โทรมี 14 หลักต้อง return null', () {
    dynamic phoneNumber6 = '66881234567890';
    final converter = PhoneNumberConverter();
    phoneNumber6 = converter.validateMobileNumber(phoneNumber6);
    expect(phoneNumber6, 'null');
  });
}
