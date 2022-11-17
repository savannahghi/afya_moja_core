import 'package:afya_moja_core/src/presentation/text_themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  test('should expect the right text styles for Text Theme', () {
    Color? color;

    //size 50
    final TextStyle kHeavySize50Text = heavySize50Text();
    expect(
      kHeavySize50Text,
      GoogleFonts.sora(
        fontWeight: FontWeight.w700,
        color: color,
        fontSize: 55,
      ),
    );
    // size 45
    final TextStyle kBoldSize45Text = boldSize45Text();
    expect(
      kBoldSize45Text,
      GoogleFonts.sora(
        fontSize: 45,
        color: color,
        fontWeight: FontWeight.w500,
      ),
    );

    // size 34
    final TextStyle kNormalSize34Text = normalSize34Text();
    expect(
      kNormalSize34Text,
      GoogleFonts.sora(
        fontSize: 34,
        color: color,
      ),
    );

    //size 32
    final TextStyle kVeryBoldSize32Text = veryBoldSize32Text();
    expect(
      kVeryBoldSize32Text,
      GoogleFonts.sora(
        fontWeight: FontWeight.w600,
        color: color,
        fontSize: 32,
      ),
    );

    final TextStyle kNormalSize32Text = normalSize32Text();
    expect(
      kNormalSize32Text,
      GoogleFonts.sora(
        fontSize: 32,
        color: color,
      ),
    );

    //size 30
    final TextStyle kBoldSize30Text = boldSize30Text();
    expect(
      kBoldSize30Text,
      GoogleFonts.sora(
        fontSize: 30,
        fontWeight: FontWeight.w500,
        color: color,
      ),
    );

    //size 28
    final TextStyle kVeryBoldSize28Text = veryBoldSize28Text();
    expect(
      kVeryBoldSize28Text,
      GoogleFonts.sora(
        fontWeight: FontWeight.w600,
        color: color,
        fontSize: 28,
      ),
    );

    final TextStyle kHeavySize28Text = heavySize28Text();
    expect(
      kHeavySize28Text,
      GoogleFonts.sora(
        color: color,
        fontWeight: FontWeight.w700,
        fontSize: 28,
      ),
    );

    final TextStyle kNormalSize28Text = normalSize28Text();
    expect(
      kNormalSize28Text,
      GoogleFonts.sora(
        fontSize: 28,
        color: color,
      ),
    );

    //size 26

    final TextStyle kHeavySize26Text = heavySize26Text();
    expect(
      kHeavySize26Text,
      GoogleFonts.sora(
        color: color,
        fontWeight: FontWeight.w700,
        fontSize: 26,
      ),
    );

    final TextStyle kNormalSize26Text = normalSize26Text();
    expect(
      kNormalSize26Text,
      GoogleFonts.sora(
        fontSize: 26,
        color: color,
      ),
    );

    final TextStyle kBoldSize26Title = boldSize26Title();
    expect(
      kBoldSize26Title,
      GoogleFonts.sora(
        fontSize: 26,
        color: color,
        fontWeight: FontWeight.w500,
      ),
    );

    // size 24
    final TextStyle kHeavySize24Text = heavySize24Text();
    expect(
      kHeavySize24Text,
      GoogleFonts.sora(
        color: color,
        fontWeight: FontWeight.w700,
        fontSize: 24,
      ),
    );
    final TextStyle kMediumSize24Text = mediumSize24Text();
    expect(
      kMediumSize24Text,
      GoogleFonts.sora(
        color: color,
        fontWeight: FontWeight.w600,
        fontSize: 24,
      ),
    );
    final TextStyle kBoldSize24Text = boldSize24Text();
    expect(
      kBoldSize24Text,
      GoogleFonts.sora(
        color: color,
        fontWeight: FontWeight.w500,
        fontSize: 24,
      ),
    );
    final TextStyle kNormalSize24Text = normalSize24Text();
    expect(
      kNormalSize24Text,
      GoogleFonts.sora(
        color: color,
        fontSize: 24,
      ),
    );

    final TextStyle kVeryBoldSize22Text = veryBoldSize22Text();
    expect(
      kVeryBoldSize22Text,
      GoogleFonts.sora(
        fontWeight: FontWeight.w600,
        color: color,
        fontSize: 22,
      ),
    );
    final TextStyle kBoldSize22Text = boldSize22Text();
    expect(
      kBoldSize22Text,
      GoogleFonts.sora(
        fontWeight: FontWeight.w500,
        color: color,
        fontSize: 22,
      ),
    );

    final TextStyle kMediumSize22Text = mediumSize22Text();
    expect(
      kMediumSize22Text,
      GoogleFonts.sora(
        color: color,
        fontWeight: FontWeight.w500,
        fontSize: 22,
      ),
    );

    final TextStyle kNormalSize22Text = normalSize22Text();
    expect(
      kNormalSize22Text,
      GoogleFonts.sora(
        fontWeight: FontWeight.w400,
        color: color,
        fontSize: 22,
      ),
    );

    // size 20
    final TextStyle kVeryHeavySize20Text = veryHeavySize20Text();
    expect(
      kVeryHeavySize20Text,
      GoogleFonts.sora(
        fontWeight: FontWeight.w800,
        color: color,
        fontSize: 20,
      ),
    );
    final TextStyle kHeavySize20Text = heavySize20Text();
    expect(
      kHeavySize20Text,
      GoogleFonts.sora(
        fontWeight: FontWeight.w700,
        color: color,
        fontSize: 20,
      ),
    );
    final TextStyle kVeryBoldSize20Text = veryBoldSize20Text();
    expect(
      kVeryBoldSize20Text,
      GoogleFonts.sora(
        fontWeight: FontWeight.w600,
        color: color,
        fontSize: 20,
      ),
    );
    final TextStyle kBoldSize20Text = boldSize20Text();
    expect(
      kBoldSize20Text,
      GoogleFonts.sora(
        fontWeight: FontWeight.w500,
        color: color,
        fontSize: 20,
      ),
    );

    final TextStyle kMediumSize20Text = mediumSize20Text();
    expect(
      kMediumSize20Text,
      GoogleFonts.sora(
        color: color,
        fontWeight: FontWeight.w500,
        fontSize: 20,
      ),
    );

    final TextStyle kNormalSize20Text = normalSize20Text();
    expect(
      kNormalSize20Text,
      GoogleFonts.sora(
        fontWeight: FontWeight.w400,
        color: color,
        fontSize: 20,
      ),
    );

    // size 18
    final TextStyle kHeavySize18Text = heavySize18Text();
    expect(
      kHeavySize18Text,
      GoogleFonts.sora(
        fontWeight: FontWeight.w700,
        color: color,
        fontSize: 18,
      ),
    );
    final TextStyle kVeryBoldSize18Text = veryBoldSize18Text();
    expect(
      kVeryBoldSize18Text,
      GoogleFonts.sora(
        fontWeight: FontWeight.w600,
        color: color,
        fontSize: 18,
      ),
    );
    final TextStyle kBoldSize18Text = boldSize18Text();
    expect(
      kBoldSize18Text,
      GoogleFonts.sora(
        fontWeight: FontWeight.w500,
        color: color,
        fontSize: 18,
      ),
    );
    final TextStyle kNormalSize18Text = normalSize18Text();
    expect(
      kNormalSize18Text,
      GoogleFonts.sora(
        fontWeight: FontWeight.w400,
        color: color,
        fontSize: 18,
      ),
    );

    // size 17
    final TextStyle kVeryBoldSize17Text = veryBoldSize17Text();
    expect(
      kVeryBoldSize17Text,
      GoogleFonts.sora(
        fontWeight: FontWeight.w600,
        color: color,
        fontSize: 17,
      ),
    );
    final TextStyle kNormalSize17Text = normalSize17Text();
    expect(
      kNormalSize17Text,
      GoogleFonts.sora(
        fontWeight: FontWeight.w400,
        color: color,
        fontSize: 17,
      ),
    );

    // size 16
    final TextStyle kHeavySize16Text = heavySize16Text();
    expect(
      kHeavySize16Text,
      GoogleFonts.sora(
        fontWeight: FontWeight.w700,
        color: color,
        fontSize: 16,
      ),
    );
    final TextStyle kVeryBoldSize16Text = veryBoldSize16Text();
    expect(
      kVeryBoldSize16Text,
      GoogleFonts.sora(
        fontWeight: FontWeight.w600,
        color: color,
        fontSize: 16,
      ),
    );
    final TextStyle kBoldSize16Text = boldSize16Text();
    expect(
      kBoldSize16Text,
      GoogleFonts.sora(
        fontWeight: FontWeight.w500,
        color: color,
        fontSize: 16,
      ),
    );
    final TextStyle kNormalSize16Text = normalSize16Text();
    expect(
      kNormalSize16Text,
      GoogleFonts.sora(
        fontWeight: FontWeight.w400,
        color: color,
        fontSize: 16,
      ),
    );
    final TextStyle kLightSize16Text = lightSize16Text();
    expect(
      kLightSize16Text,
      GoogleFonts.sora(
        fontWeight: FontWeight.w300,
        color: color,
        fontSize: 16,
      ),
    );

    // size 15
    final TextStyle kVeryBoldSize15Text = veryBoldSize15Text();
    expect(
      kVeryBoldSize15Text,
      GoogleFonts.sora(
        fontWeight: FontWeight.w600,
        color: color,
        fontSize: 15,
      ),
    );
    final TextStyle kBoldSize15Text = boldSize15Text();
    expect(
      kBoldSize15Text,
      GoogleFonts.sora(
        fontWeight: FontWeight.w500,
        color: color,
        fontSize: 15,
      ),
    );
    final TextStyle kNormalSize15Text = normalSize15Text();
    expect(
      kNormalSize15Text,
      GoogleFonts.sora(
        fontWeight: FontWeight.w400,
        color: color,
        fontSize: 15,
      ),
    );

    // size 14
    final TextStyle kVeryHeavySize14Text = veryHeavySize14Text();
    expect(
      kVeryHeavySize14Text,
      GoogleFonts.sora(
        fontWeight: FontWeight.w800,
        color: color,
        fontSize: 14,
      ),
    );
    final TextStyle kHeavySize14Text = heavySize14Text();
    expect(
      kHeavySize14Text,
      GoogleFonts.sora(
        fontWeight: FontWeight.w700,
        color: color,
        fontSize: 14,
      ),
    );
    final TextStyle kBoldSize14Text = boldSize14Text();
    expect(
      kBoldSize14Text,
      GoogleFonts.sora(
        fontWeight: FontWeight.w500,
        color: color,
        fontSize: 14,
      ),
    );
    final TextStyle kVeryBoldSize14Text = veryBoldSize14Text();
    expect(
      kVeryBoldSize14Text,
      GoogleFonts.sora(
        fontWeight: FontWeight.w600,
        color: color,
        fontSize: 14,
      ),
    );
    final TextStyle kNormalSize14Text = normalSize14Text();
    expect(
      kNormalSize14Text,
      GoogleFonts.sora(
        fontWeight: FontWeight.w400,
        color: color,
        fontSize: 14,
      ),
    );

    final TextStyle kMediumSize14Text = mediumSize14Text();
    expect(
      kMediumSize14Text,
      GoogleFonts.sora(
        color: color,
        fontWeight: FontWeight.w600,
        fontSize: 14,
      ),
    );
    // size 13
    final TextStyle kBoldSize13Text = boldSize13Text();
    expect(
      kBoldSize13Text,
      GoogleFonts.sora(
        fontWeight: FontWeight.w500,
        color: color,
        fontSize: 13,
      ),
    );
    final TextStyle kNormalSize13Text = normalSize13Text();
    expect(
      kNormalSize13Text,
      GoogleFonts.sora(
        fontWeight: FontWeight.w400,
        color: color,
        fontSize: 13,
      ),
    );

    // size 12
    final TextStyle kHeavySize12Text = heavySize12Text();
    expect(
      kHeavySize12Text,
      GoogleFonts.sora(
        fontWeight: FontWeight.w700,
        color: color,
        fontSize: 12,
      ),
    );

    final TextStyle kVeryHeavySize12Text = veryHeavySize12Text();
    expect(
      kVeryHeavySize12Text,
      GoogleFonts.sora(
        fontWeight: FontWeight.w800,
        color: color,
        fontSize: 12,
      ),
    );

    final TextStyle kBoldSize12Text = boldSize12Text();
    expect(
      kBoldSize12Text,
      GoogleFonts.sora(
        fontWeight: FontWeight.w500,
        color: color,
        fontSize: 12,
      ),
    );
    final TextStyle kNormalSize12Text = normalSize12Text();
    expect(
      kNormalSize12Text,
      GoogleFonts.sora(
        fontWeight: FontWeight.w400,
        color: color,
        fontSize: 12,
      ),
    );

    // size 11
    final TextStyle kHeavySize11Text = heavySize11Text();
    expect(
      kHeavySize11Text,
      GoogleFonts.sora(
        fontWeight: FontWeight.w700,
        color: color,
        fontSize: 11,
      ),
    );
    final TextStyle kNormalSize11Text = normalSize11Text();
    expect(
      kNormalSize11Text,
      GoogleFonts.sora(
        fontWeight: FontWeight.w400,
        color: color,
        fontSize: 11,
      ),
    );

    // size 10
    final TextStyle kHeavySize10Text = heavySize10Text();
    expect(
      kHeavySize10Text,
      GoogleFonts.sora(
        fontWeight: FontWeight.w700,
        color: color,
        fontSize: 10,
      ),
    );
    final TextStyle kNormalSize10Text = normalSize10Text();
    expect(
      kNormalSize10Text,
      GoogleFonts.sora(
        fontWeight: FontWeight.w400,
        color: color,
        fontSize: 10,
      ),
    );

    // size 9
    final TextStyle kNormalSize9Text = normalSize9Text();
    expect(
      kNormalSize9Text,
      GoogleFonts.sora(
        fontWeight: FontWeight.w400,
        color: color,
        fontSize: 9,
      ),
    );
  });
}
