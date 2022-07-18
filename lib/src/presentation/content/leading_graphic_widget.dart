import 'package:afya_moja_core/afya_moja_core.dart';
import 'package:afya_moja_core/src/presentation/content/estimated_read_time_badge_widget.dart';
import 'package:flutter/material.dart';

class LeadingGraphicWidget extends StatelessWidget {
  const LeadingGraphicWidget({
    Key? key,
    required this.heroImage,
    required this.contentDetails,
  }) : super(key: key);

  final Content contentDetails;
  final Widget heroImage;

  @override
  Widget build(BuildContext context) {
    final bool isArticle = contentDetails.contentType == ContentType.ARTICLE;
    final bool hasEstimate = contentDetails.estimate != null;
    final bool hasVideo = contentDetails.featuredMedia != null &&
        contentDetails.featuredMedia!.isNotEmpty &&
        contentDetails.featuredMedia?[0]?.featuredMediaType ==
            FeaturedMediaType.video;

    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        // Hero image
        heroImage,
        // Reading estimate
        if (hasEstimate && isArticle || hasVideo)
          Positioned(
            bottom: 8,
            left: 8,
            child: EstimatedReadTimeBadge(
              contentType: contentDetails.contentType ?? ContentType.UNKNOWN,
              estimateReadTime: contentDetails.estimate ?? 0,
              videoDuration: contentDetails.estimate ?? 0,
            ),
          ),
      ],
    );
  }
}
