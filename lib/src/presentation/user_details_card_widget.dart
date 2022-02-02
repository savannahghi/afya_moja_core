import 'package:afya_moja_core/afya_moja_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_themes/spaces.dart';

import '../app_asset_strings.dart';
import '../app_strings.dart';
import '../widget_keys.dart';

class UserDetailsCard extends StatelessWidget {
  /// [UserDetailsCard] is a shared widget used in both AfyaMoja and MyAfyaHub
  ///
  /// It takes in required [userInitials], [name], [userCCCNumber], [age], [phoneNumber]
  /// and [home] parameters
  ///
  /// The nullable [onTapCorrectionRequest], [onTapInvite], [onTapViewProfile] and
  /// [onTapEditUserProfile] VoidCallBack parameters are used to add functionality to the
  /// buttons
  ///
  /// [isAdmin] is used to flag the admin specific features, which are View Profile, Edit Profile
  /// and Invite to MyAfyaHub
  const UserDetailsCard({
    Key? key,
    required this.userInitials,
    required this.name,
    required this.cccNumber,
    required this.age,
    required this.phoneNumber,
    required this.home,
    this.isAdmin = false,
    this.onTapCorrectionRequest,
    this.onTapInvite,
    this.onTapViewProfile,
    this.onTapEditUserProfile,
  }) : super(key: key);
  final String userInitials;
  final String name;
  final String cccNumber;
  final String age;
  final String phoneNumber;
  final bool isAdmin;
  final String home;
  final VoidCallback? onTapCorrectionRequest;
  final VoidCallback? onTapInvite;
  final VoidCallback? onTapViewProfile;
  final VoidCallback? onTapEditUserProfile;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: userDetailsCardBackgroundColor,
      ),
      child: Stack(
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(10.0),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: userInitialsColor,
                ),
                child: Text(
                  userInitials,
                  style: const TextStyle(
                    fontSize: 22,
                    color: myAfyaHubSecondaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              smallHorizontalSizedBox,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  smallVerticalSizedBox,
                  Text(
                    'CCC No: $cccNumber',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  smallVerticalSizedBox,
                  Text(
                    'Age: $age yrs',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  largeVerticalSizedBox,
                  Row(
                    children: <Widget>[
                      SvgPicture.asset(
                        phoneCallIcon,
                        color: Colors.white,
                        width: 14,
                        height: 18,
                      ),
                      size15HorizontalSizedBox,
                      Text(
                        phoneNumber,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  size15VerticalSizedBox,
                  Row(
                    children: <Widget>[
                      SvgPicture.asset(
                        homeLocationIcon,
                        color: Colors.white,
                        width: 15,
                        height: 15,
                      ),
                      size15HorizontalSizedBox,
                      Text(
                        home,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  mediumVerticalSizedBox,
                  if (!isAdmin)
                    GestureDetector(
                      key: correctionRequestButtonKey,
                      onTap: onTapCorrectionRequest,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 8,
                          horizontal: 8,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text(
                          correctionRequestString,
                          style: boldSize13Text(
                            Colors.white,
                          ),
                        ),
                      ),
                    ),
                  if (isAdmin)
                    Wrap(
                      alignment: WrapAlignment.center,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: <Widget>[
                        GestureDetector(
                          key: inviteButtonKey,
                          onTap: onTapInvite,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 8,
                              horizontal: 8,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Text(
                              inviteToMyAfyaHubString,
                              style: boldSize13Text(
                                Colors.white,
                              ),
                            ),
                          ),
                        ),
                        smallHorizontalSizedBox,
                        GestureDetector(
                          key: viewProfileButtonKey,
                          onTap: onTapViewProfile,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 8,
                              horizontal: 8,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Text(
                              viewProfileString,
                              style: boldSize13Text(
                                Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                ],
              ),
            ],
          ),
          if (isAdmin)
            Positioned(
              key: editUserProfileButtonKey,
              top: 0,
              right: 0,
              child: GestureDetector(
                onTap: onTapEditUserProfile,
                child: SvgPicture.asset(editProfileIconSvg),
              ),
            ),
        ],
      ),
    );
  }
}
