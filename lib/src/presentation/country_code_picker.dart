// Flutter imports:
import 'package:afya_moja_core/src/behavior_subjects.dart';
import 'package:afya_moja_core/src/enums.dart';
import 'package:afya_moja_core/src/utils.dart';
import 'package:flutter/material.dart';

/// [MyAfyaHubCountryPicker] is used in [MyAfyaHubPhoneLoginPage] select Country Code
///
/// It takes in a required [onChanged] parameter
class MyAfyaHubCountryPicker extends StatefulWidget {
  const MyAfyaHubCountryPicker({
    Key? key,
    this.selectCountryKey,
    required this.onChanged,
  }) : super(key: key);

  final void Function(String) onChanged;
  final Key? selectCountryKey;

  @override
  _MyAfyaHubCountryPickerState createState() => _MyAfyaHubCountryPickerState();
}

class _MyAfyaHubCountryPickerState extends State<MyAfyaHubCountryPicker> {
  PhoneInputBehaviorSubject phoneInputBehaviorSubject =
      PhoneInputBehaviorSubject();

  Country _country = Country.kenya;

  @override
  Widget build(BuildContext context) {
    final String countryCode = getCountry(_country)!['code']!;
    phoneInputBehaviorSubject.countryCode.add(countryCode);

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      key: widget.selectCountryKey,
      onTap: () async {
        final Country? _result = await selectCountryModalBottomSheet(context);
        if (_result != null) {
          setState(() {
            _country = _result;
          });
          widget.onChanged(countryCode);
          phoneInputBehaviorSubject.countryCode.add(countryCode);
        }
      },
      child: Row(
        children: <Widget>[
          Text(
            getCountry(this._country)!['code']!,
            key: const Key('countrySelectedKey'),
            style: const TextStyle(
              fontWeight: FontWeight.w300,
              color: Colors.black,
              fontSize: 15,
            ),
          ),
          const SizedBox(width: 10),
          Image.asset(
            getCountry(this._country)!['flag']!,
            height: 20,
          ),
          const Icon(Icons.arrow_drop_down),
        ],
      ),
    );
  }
}
