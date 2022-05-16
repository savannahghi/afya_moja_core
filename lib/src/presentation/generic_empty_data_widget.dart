// Flutter imports:
import 'package:afya_moja_core/afya_moja_core.dart';
import 'package:afya_moja_core/src/app_asset_strings.dart';
import 'package:afya_moja_core/src/widget_keys.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GenericEmptyData extends StatelessWidget {
  /// The item that is missing.Could be content, the feed etc
  final String item;

  final String? customMessage;

  const GenericEmptyData({this.item = 'Content', this.customMessage});

  @override
  Widget build(BuildContext context) {
    final String noDataText =
        'There is no ${item.toLowerCase()} available for you at this time. Kindly check back later for more';

    return Container(
      key: genericContainerKey,
      padding: const EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Column(
          children: <Widget>[
            SvgPicture.asset(emptyStateCover),
            Text(
              'No ${item.toLowerCase()} available',
              style: boldSize22Text(),
            ),
            const SizedBox(height: 8),
            Text(
              customMessage ?? noDataText,
              textAlign: TextAlign.center,
              style: normalSize15Text(greyTextColor),
            ),
          ],
        ),
      ),
    );
  }
}
