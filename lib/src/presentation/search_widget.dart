// Flutter imports
import 'package:afya_moja_core/src/app_asset_strings.dart';
import 'package:flutter/material.dart';

// Package imports
import 'package:flutter_svg/flutter_svg.dart';

// Project imports
import 'package:afya_moja_core/src/app_strings.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 45,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
          border: Border.all(
            color: Colors.white.withOpacity(0.3),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Flexible(
              child: Text(
                searchUser,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.headline4!.copyWith(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
              ),
            ),
            SvgPicture.asset(
              magnifierToolIconSvg,
            ),
          ],
        ),
      ),
    );
  }
}
