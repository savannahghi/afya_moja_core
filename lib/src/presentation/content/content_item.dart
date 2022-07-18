import 'package:afya_moja_core/afya_moja_core.dart';
import 'package:afya_moja_core/src/app_asset_strings.dart';
import 'package:afya_moja_core/src/app_strings.dart';
import 'package:afya_moja_core/src/widget_keys.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// [ContentItem] Displays the feed
/// [isNew] renders the new tag
class ContentItem extends StatelessWidget {
  const ContentItem({
    required this.contentDetails,
    this.isNew = false,
    this.contentDisplayedType = ContentDisplayedType.UNKNOWN,
    this.showReactions = true,
    this.onTapPdfCallback,
    this.onPlayAudioTapped,
    required this.onTapCallback,
  });

  final Content contentDetails;
  final bool isNew;
  final ContentDisplayedType contentDisplayedType;
  final bool showReactions;
  final VoidCallback? onTapPdfCallback;
  final VoidCallback onTapCallback;
  final VoidCallback? onPlayAudioTapped;

  @override
  Widget build(BuildContext context) {
    const double galleryImageHeight = 500;
    const BorderRadius imageBorderRadius = BorderRadius.only(
      topLeft: Radius.circular(12),
      topRight: Radius.circular(12),
    );

    final bool isArticle = contentDetails.contentType == ContentType.ARTICLE;
    final bool isVideo =
        contentDetails.contentType == ContentType.AUDIO_VIDEO &&
            contentDetails.featuredMedia?[0]?.featuredMediaType ==
                FeaturedMediaType.video;

    final bool isAudio =
        contentDetails.contentType == ContentType.AUDIO_VIDEO &&
            contentDetails.featuredMedia?[0]?.featuredMediaType ==
                FeaturedMediaType.audio;

    final bool hasHeroImage = contentDetails.heroImage != null &&
        contentDetails.heroImage?.url != UNKNOWN &&
        contentDetails.heroImage!.url!.isNotEmpty;

    final bool isPdf = contentDetails.contentType == ContentType.PDF_DOCUMENT;

    return GestureDetector(
      key: feedContentItemKey,
      onTap: () {
        if (isPdf) {
          onTapPdfCallback?.call();
        }

        if (isArticle ||
            contentDetails.featuredMedia?.first?.featuredMediaType ==
                FeaturedMediaType.video) {
          onTapCallback.call();
        }
      },
      child: Container(
        height: MediaQuery.of(context).size.height * 0.55,
        width: MediaQuery.of(context).size.width - 50,
        decoration: const BoxDecoration(
          color: galleryColor,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Expanded(
                  child: Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      if (hasHeroImage) ...<Widget>{
                        LeadingGraphicWidget(
                          contentDetails: contentDetails,
                          heroImage: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Expanded(
                                child: GalleryImageWidget(
                                  borderRadius: imageBorderRadius,
                                  imageUrl: contentDetails.heroImage!.url!,
                                  height: galleryImageHeight,
                                ),
                              ),
                            ],
                          ),
                        )
                      } else ...<Widget>{
                        Stack(
                          key: contentHeroImagePlaceHolder,
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                  image: AssetImage(
                                    contentImagePlaceHolderSvgPath,
                                  ),
                                  fit: BoxFit.cover,
                                ),
                                color: Theme.of(context)
                                    .primaryColor
                                    .withOpacity(0.3),
                                borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  topLeft: Radius.circular(10),
                                ),
                              ),
                            ),
                            Positioned(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.6),
                                  borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    topLeft: Radius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                            Center(
                              child: SvgPicture.asset(
                                contentIconSvgPath,
                                color: marigoldNavColor,
                              ),
                            )
                          ],
                        )
                      },
                      // A video playback icon if there is a video
                      if (isVideo)
                        SizedBox(
                          key: feedVideoPlayIconKey,
                          child: SvgPicture.asset(
                            playIcon,
                            width: 50,
                            height: 50,
                          ),
                        ),
                    ],
                  ),
                ),
                if (isAudio)
                  AudioContent(
                    contentDetails: contentDetails,
                    onPlayTapped: onPlayAudioTapped,
                  )
                else if (contentDetails.contentType == ContentType.ARTICLE ||
                    contentDetails.featuredMedia != null &&
                        contentDetails.featuredMedia!.isNotEmpty &&
                        contentDetails.featuredMedia?[0]?.featuredMediaType ==
                            FeaturedMediaType.video)
                  Padding(
                    padding: const EdgeInsets.all(13),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.topLeft,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Flexible(
                                child: Text(
                                  contentDetails.title!,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: boldSize16Text(
                                    myAfyaHubSecondaryColor,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: humanizeDate(
                                  dateTextStyle: normalSize12Text(
                                    greyTextColor,
                                  ),
                                  loadedDate:
                                      contentDetails.metadata!.createdAt!,
                                ),
                              ),
                            ],
                          ),
                        ),
                        verySmallVerticalSizedBox,
                        if (contentDetails.authorName != null)
                          Text(
                            contentDetails.authorName!,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: boldSize12Text(
                              greyTextColor,
                            ),
                          ),
                        if (showReactions)
                          // Reactions
                          Padding(
                            padding: const EdgeInsets.only(top: 18, bottom: 4),
                            child: Row(
                              children: <Widget>[
                                ReactionItem(
                                  iconUrl: heartIconUrl,
                                  count: contentDetails.likeCount,
                                ),
                                ReactionItem(
                                  iconUrl: shareIconUrl,
                                  count: contentDetails.shareCount,
                                ),
                                ReactionItem(
                                  iconUrl: saveIconUrl,
                                  count: contentDetails.bookmarkCount,
                                ),
                              ],
                            ),
                          ),
                      ],
                    ),
                  )
                else if (contentDetails.contentType == ContentType.PDF_DOCUMENT)
                  Padding(
                    padding: const EdgeInsets.all(13),
                    child: Row(
                      children: <Widget>[
                        SizedBox(
                          height: 100,
                          width: 100,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey.shade400,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                            ),
                            child: Stack(
                              children: <Widget>[
                                Center(
                                  child: SvgPicture.asset(
                                    pdfIconSvg,
                                    width: 70,
                                    height: 70,
                                  ),
                                ),
                                Positioned(
                                  top: 0,
                                  right: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(8),
                                      ),
                                      color: Colors.grey.shade800,
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 4,
                                      vertical: 3,
                                    ),
                                    margin: const EdgeInsets.all(8),
                                    child: Text(
                                      pdfText,
                                      style: normalSize12Text(
                                        Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        size15HorizontalSizedBox,
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Align(
                                alignment: Alignment.topLeft,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Flexible(
                                      child: Text(
                                        contentDetails.title!,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: boldSize16Text(
                                          myAfyaHubSecondaryColor,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: humanizeDate(
                                        dateTextStyle: normalSize12Text(
                                          greyTextColor,
                                        ),
                                        loadedDate:
                                            contentDetails.metadata!.createdAt!,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              verySmallVerticalSizedBox,
                              if (contentDetails.authorName != null)
                                Text(
                                  contentDetails.authorName!,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: boldSize12Text(
                                    greyTextColor,
                                  ),
                                ),
                              // Reactions
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 18, bottom: 4),
                                child: Row(
                                  children: <Widget>[
                                    ReactionItem(
                                      iconUrl: heartIconUrl,
                                      count: contentDetails.likeCount,
                                    ),
                                    ReactionItem(
                                      iconUrl: shareIconUrl,
                                      count: contentDetails.shareCount,
                                    ),
                                    ReactionItem(
                                      iconUrl: saveIconUrl,
                                      count: contentDetails.bookmarkCount,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
              ],
            ),
            if (isNew)
              Positioned(
                top: 0,
                right: 0,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                    color: Colors.redAccent[700],
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                  margin: const EdgeInsets.all(8),
                  child: Text(
                    newText,
                    style: boldSize16Text(Colors.white),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
