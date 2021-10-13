import 'package:rxdart/rxdart.dart';

class PhoneInputBehaviorSubject {
  static final PhoneInputBehaviorSubject _singleton =
      PhoneInputBehaviorSubject._internal();

  factory PhoneInputBehaviorSubject() {
    return _singleton;
  }

  PhoneInputBehaviorSubject._internal();

  BehaviorSubject<String> countryCode = BehaviorSubject<String>.seeded('+254');
  BehaviorSubject<String> phoneNumber = BehaviorSubject<String>();
}
