import 'package:afya_moja_core/afya_moja_core.dart';
import 'package:flutter/material.dart';

Map<String, String>? getCountry(Country country) {
  switch (country) {
    case Country.kenya:
      return supportedCountries['kenya'];
    case Country.uganda:
      return supportedCountries['uganda'];
    case Country.tanzania:
      return supportedCountries['tanzania'];
    case Country.belgium:
      return supportedCountries['belgium'];
    case Country.uk:
      return supportedCountries['uk'];
    case Country.nigeria:
      return supportedCountries['nigeria'];
    default:
      return supportedCountries['usa'];
  }
}

Map<String, Map<String, String>> supportedCountries =
    <String, Map<String, String>>{
  'kenya': <String, String>{
    'code': '+254',
    'initial': 'KE',
    'name': 'Kenya',
    'flag': 'packages/shared_ui_components/assets/ken.png',
  },
  'uganda': <String, String>{
    'code': '+255',
    'initial': 'UG',
    'name': 'Uganda',
    'flag': 'packages/shared_ui_components/assets/uga.png',
  },
  'tanzania': <String, String>{
    'code': '+256',
    'initial': 'TZ',
    'name': 'Tanzania',
    'flag': 'packages/shared_ui_components/assets/tza.png',
  },
  'usa': <String, String>{
    'code': '+1',
    'initial': 'USA',
    'name': 'United States',
    'flag': 'packages/shared_ui_components/assets/usa.png',
  },
  'uk': <String, String>{
    'code': '+44',
    'initial': 'UK',
    'name': 'United Kingdom',
    'flag': 'packages/shared_ui_components/assets/gbr.png',
  },
  'belgium': <String, String>{
    'code': '+32',
    'initial': 'BEL',
    'name': 'Belgium',
    'flag': 'packages/shared_ui_components/assets/bel.png',
  },
  'nigeria': <String, String>{
    'code': '+234',
    'initial': 'NG',
    'name': 'Nigeria',
    'flag': 'packages/shared_ui_components/assets/nga.png',
  },
};

dynamic selectCountryModalBottomSheet(BuildContext context) {
  return showModalBottomSheet(
    context: context,
    builder: (BuildContext bc) {
      return SizedBox(
        child: Wrap(
          children: <Widget>[
            for (Map<String, String> country in supportedCountries.values)
              ListTile(
                leading: Image.asset(
                  country['flag']!,
                  height: 25,
                ),
                title: Text(country['name']!),
                onTap: () {
                  Navigator.of(context).pop(popValue(country['name']!));
                },
              ),
          ],
        ),
      );
    },
  );
}

Country popValue(String name) {
  switch (name) {
    case 'Kenya':
      return Country.kenya;
    case 'Uganda':
      return Country.uganda;
    case 'Tanzania':
      return Country.tanzania;
    case 'Belgium':
      return Country.belgium;
    case 'United Kingdom':
      return Country.uk;
    case 'Nigeria':
      return Country.nigeria;
    default:
      return Country.us;
  }
}
