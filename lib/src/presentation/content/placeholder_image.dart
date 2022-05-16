import 'package:afya_moja_core/src/app_asset_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PlaceHolderImage extends StatelessWidget {
  const PlaceHolderImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      placeholderImageUrl,
    );
  }
}
