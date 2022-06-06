import 'package:afya_moja_core/afya_moja_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ReactionItem extends StatelessWidget {
  const ReactionItem({required this.iconUrl, required this.count});

  final int? count;
  final String iconUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        children: <Widget>[
          SvgPicture.asset(
            iconUrl,
            width: 20,
            height: 20,
            color: greyTextColor,
          ),
          verySmallHorizontalSizedBox,
          Text(
            (count != 0 && count != null) ? count.toString() : '0',
            style: normalSize12Text(greyTextColor),
          )
        ],
      ),
    );
  }
}
