// Flutter imports:
import 'package:afya_moja_core/src/behavior_subjects.dart';
import 'package:afya_moja_core/src/enums.dart';
import 'package:afya_moja_core/src/utils.dart';
import 'package:afya_moja_core/src/widget_keys.dart';
import 'package:flutter/material.dart';

/// [MyAfyaHubCountryPicker] is used in [MyAfyaHubPhoneLoginPage] select Country Code
///
/// It takes in a required [onChanged] parameter
class MyAfyaHubCountryPicker extends StatefulWidget {
  const MyAfyaHubCountryPicker({Key? key, required this.onChanged})
      : super(key: key);

  final Function onChanged;

  @override
  _MyAfyaHubCountryPickerState createState() => _MyAfyaHubCountryPickerState();
}

class _MyAfyaHubCountryPickerState extends State<MyAfyaHubCountryPicker> {
  PhoneInputBehaviorSubject phoneInputBehaviorSubject =
      PhoneInputBehaviorSubject();

  Country _country = Country.kenya;

  @override
  Widget build(BuildContext context) {
    phoneInputBehaviorSubject.countryCode.add(getCountry(_country)!['code']!);
    return GestureDetector(
      onTap: () async {
        final dynamic _result = await selectCountryModalBottomSheet(context);
        if (_result != null) {
          setState(() {
            _country = _result as Country;
          });
          widget.onChanged(getCountry(_country)!['code']);
          phoneInputBehaviorSubject.countryCode
              .add(getCountry(_country)!['code']!);
        }
      },
      child: SizedBox(
        key: selectCountryKey,
        height: 54,
        width: 78,
        child: Row(
          children: <Widget>[
            Expanded(
              child: Text(
                getCountry(this._country)!['code']!,
                key: const Key('countrySelectedKey'),
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  color: Theme.of(context).colorScheme.secondary,
                  fontSize: 15,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Image.asset(
              getCountry(this._country)!['flag']!,
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
