import 'package:afya_moja_core/src/text_themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  test('should expect the right text styles for Text Theme', () {
    Color? color;

    //size 50
    final TextStyle _heavySize50Text = heavySize50Text();
    expect(
      _heavySize50Text,
      GoogleFonts.sora(
        fontWeight: FontWeight.w700,
        color: color,
        fontSize: 55,
      ),
    );
    // size 45
    final TextStyle _boldSize45Text = boldSize45Text();
    expect(
      _boldSize45Text,
      GoogleFonts.sora(
        fontSize: 45,
        color: color,
        fontWeight: FontWeight.w500,
      ),
    );

    // size 34
    final TextStyle _normalSize34Text = normalSize34Text();
    expect(
      _normalSize34Text,
      GoogleFonts.sora(
        fontSize: 34,
        color: color,
      ),
    );

    //size 32
    final TextStyle _veryBoldSize32Text = veryBoldSize32Text();
    expect(
      _veryBoldSize32Text,
      GoogleFonts.sora(
        fontWeight: FontWeight.w600,
        color: color,
        fontSize: 32,
      ),
    );

    final TextStyle _normalSize32Text = normalSize32Text();
    expect(
      _normalSize32Text,
      GoogleFonts.sora(
        fontSize: 32,
        color: color,
      ),
    );

    //size 30
    final TextStyle _boldSize30Text = boldSize30Text();
    expect(
      _boldSize30Text,
      GoogleFonts.sora(
        fontSize: 30,
        fontWeight: FontWeight.w500,
        color: color,
      ),
    );

    //size 28
    final TextStyle _veryBoldSize28Text = veryBoldSize28Text();
    expect(
      _veryBoldSize28Text,
      GoogleFonts.sora(
        fontWeight: FontWeight.w600,
        color: color,
        fontSize: 28,
      ),
    );

    final TextStyle _heavySize28Text = heavySize28Text();
    expect(
      _heavySize28Text,
      GoogleFonts.sora(
        color: color,
        fontWeight: FontWeight.w700,
        fontSize: 28,
      ),
    );

    final TextStyle _normalSize28Text = normalSize28Text();
    expect(
      _normalSize28Text,
      GoogleFonts.sora(
        fontSize: 28,
        color: color,
      ),
    );

    //size 26

    final TextStyle _heavySize26Text = heavySize26Text();
    expect(
      _heavySize26Text,
      GoogleFonts.sora(
        color: color,
        fontWeight: FontWeight.w700,
        fontSize: 26,
      ),
    );

    final TextStyle _normalSize26Text = normalSize26Text();
    expect(
      _normalSize26Text,
      GoogleFonts.sora(
        fontSize: 26,
        color: color,
      ),
    );

    final TextStyle _boldSize26Title = boldSize26Title();
    expect(
      _boldSize26Title,
      GoogleFonts.sora(
        fontSize: 26,
        color: color,
        fontWeight: FontWeight.w500,
      ),
    );

    // size 24
    final TextStyle _heavySize24Text = heavySize24Text();
    expect(
      _heavySize24Text,
      GoogleFonts.sora(
        color: color,
        fontWeight: FontWeight.w700,
        fontSize: 24,
      ),
    );
    final TextStyle _mediumSize24Text = mediumSize24Text();
    expect(
      _mediumSize24Text,
      GoogleFonts.sora(
        color: color,
        fontWeight: FontWeight.w600,
        fontSize: 24,
      ),
    );
    final TextStyle _boldSize24Text = boldSize24Text();
    expect(
      _boldSize24Text,
      GoogleFonts.sora(
        color: color,
        fontWeight: FontWeight.w500,
        fontSize: 24,
      ),
    );
    final TextStyle _normalSize24Text = normalSize24Text();
    expect(
      _normalSize24Text,
      GoogleFonts.sora(
        color: color,
        fontSize: 24,
      ),
    );

    final TextStyle _veryBoldSize22Text = veryBoldSize22Text();
    expect(
      _veryBoldSize22Text,
      GoogleFonts.sora(
        fontWeight: FontWeight.w600,
        color: color,
        fontSize: 22,
      ),
    );
    final TextStyle _boldSize22Text = boldSize22Text();
    expect(
      _boldSize22Text,
      GoogleFonts.sora(
        fontWeight: FontWeight.w500,
        color: color,
        fontSize: 22,
      ),
    );

    final TextStyle _mediumSize22Text = mediumSize22Text();
    expect(
      _mediumSize22Text,
      GoogleFonts.sora(
        color: color,
        fontWeight: FontWeight.w500,
        fontSize: 22,
      ),
    );

    final TextStyle _normalSize22Text = normalSize22Text();
    expect(
      _normalSize22Text,
      GoogleFonts.sora(
        fontWeight: FontWeight.w400,
        color: color,
        fontSize: 22,
      ),
    );

    // size 20
    final TextStyle _veryHeavySize20Text = veryHeavySize20Text();
    expect(
      _veryHeavySize20Text,
      GoogleFonts.sora(
        fontWeight: FontWeight.w800,
        color: color,
        fontSize: 20,
      ),
    );
    final TextStyle _heavySize20Text = heavySize20Text();
    expect(
      _heavySize20Text,
      GoogleFonts.sora(
        fontWeight: FontWeight.w700,
        color: color,
        fontSize: 20,
      ),
    );
    final TextStyle _veryBoldSize20Text = veryBoldSize20Text();
    expect(
      _veryBoldSize20Text,
      GoogleFonts.sora(
        fontWeight: FontWeight.w600,
        color: color,
        fontSize: 20,
      ),
    );
    final TextStyle _boldSize20Text = boldSize20Text();
    expect(
      _boldSize20Text,
      GoogleFonts.sora(
        fontWeight: FontWeight.w500,
        color: color,
        fontSize: 20,
      ),
    );

    final TextStyle _mediumSize20Text = mediumSize20Text();
    expect(
      _mediumSize20Text,
      GoogleFonts.sora(
        color: color,
        fontWeight: FontWeight.w500,
        fontSize: 20,
      ),
    );

    final TextStyle _normalSize20Text = normalSize20Text();
    expect(
      _normalSize20Text,
      GoogleFonts.sora(
        fontWeight: FontWeight.w400,
        color: color,
        fontSize: 20,
      ),
    );

    // size 18
    final TextStyle _heavySize18Text = heavySize18Text();
    expect(
      _heavySize18Text,
      GoogleFonts.sora(
        fontWeight: FontWeight.w700,
        color: color,
        fontSize: 18,
      ),
    );
    final TextStyle _veryBoldSize18Text = veryBoldSize18Text();
    expect(
      _veryBoldSize18Text,
      GoogleFonts.sora(
        fontWeight: FontWeight.w600,
        color: color,
        fontSize: 18,
      ),
    );
    final TextStyle _boldSize18Text = boldSize18Text();
    expect(
      _boldSize18Text,
      GoogleFonts.sora(
        fontWeight: FontWeight.w500,
        color: color,
        fontSize: 18,
      ),
    );
    final TextStyle _normalSize18Text = normalSize18Text();
    expect(
      _normalSize18Text,
      GoogleFonts.sora(
        fontWeight: FontWeight.w400,
        color: color,
        fontSize: 18,
      ),
    );

    // size 17
    final TextStyle _veryBoldSize17Text = veryBoldSize17Text();
    expect(
      _veryBoldSize17Text,
      GoogleFonts.sora(
        fontWeight: FontWeight.w600,
        color: color,
        fontSize: 17,
      ),
    );
    final TextStyle _normalSize17Text = normalSize17Text();
    expect(
      _normalSize17Text,
      GoogleFonts.sora(
        fontWeight: FontWeight.w400,
        color: color,
        fontSize: 17,
      ),
    );

    // size 16
    final TextStyle _heavySize16Text = heavySize16Text();
    expect(
      _heavySize16Text,
      GoogleFonts.sora(
        fontWeight: FontWeight.w700,
        color: color,
        fontSize: 16,
      ),
    );
    final TextStyle _veryBoldSize16Text = veryBoldSize16Text();
    expect(
      _veryBoldSize16Text,
      GoogleFonts.sora(
        fontWeight: FontWeight.w600,
        color: color,
        fontSize: 16,
      ),
    );
    final TextStyle _boldSize16Text = boldSize16Text();
    expect(
      _boldSize16Text,
      GoogleFonts.sora(
        fontWeight: FontWeight.w500,
        color: color,
        fontSize: 16,
      ),
    );
    final TextStyle _normalSize16Text = normalSize16Text();
    expect(
      _normalSize16Text,
      GoogleFonts.sora(
        fontWeight: FontWeight.w400,
        color: color,
        fontSize: 16,
      ),
    );
    final TextStyle _lightSize16Text = lightSize16Text();
    expect(
      _lightSize16Text,
      GoogleFonts.sora(
        fontWeight: FontWeight.w300,
        color: color,
        fontSize: 16,
      ),
    );

    // size 15
    final TextStyle _veryBoldSize15Text = veryBoldSize15Text();
    expect(
      _veryBoldSize15Text,
      GoogleFonts.sora(
        fontWeight: FontWeight.w600,
        color: color,
        fontSize: 15,
      ),
    );
    final TextStyle _boldSize15Text = boldSize15Text();
    expect(
      _boldSize15Text,
      GoogleFonts.sora(
        fontWeight: FontWeight.w500,
        color: color,
        fontSize: 15,
      ),
    );
    final TextStyle _normalSize15Text = normalSize15Text();
    expect(
      _normalSize15Text,
      GoogleFonts.sora(
        fontWeight: FontWeight.w400,
        color: color,
        fontSize: 15,
      ),
    );

    // size 14
    final TextStyle _veryHeavySize14Text = veryHeavySize14Text();
    expect(
      _veryHeavySize14Text,
      GoogleFonts.sora(
        fontWeight: FontWeight.w800,
        color: color,
        fontSize: 14,
      ),
    );
    final TextStyle _heavySize14Text = heavySize14Text();
    expect(
      _heavySize14Text,
      GoogleFonts.sora(
        fontWeight: FontWeight.w700,
        color: color,
        fontSize: 14,
      ),
    );
    final TextStyle _boldSize14Text = boldSize14Text();
    expect(
      _boldSize14Text,
      GoogleFonts.sora(
        fontWeight: FontWeight.w500,
        color: color,
        fontSize: 14,
      ),
    );
    final TextStyle _veryBoldSize14Text = veryBoldSize14Text();
    expect(
      _veryBoldSize14Text,
      GoogleFonts.sora(
        fontWeight: FontWeight.w600,
        color: color,
        fontSize: 14,
      ),
    );
    final TextStyle _normalSize14Text = normalSize14Text();
    expect(
      _normalSize14Text,
      GoogleFonts.sora(
        fontWeight: FontWeight.w400,
        color: color,
        fontSize: 14,
      ),
    );

    final TextStyle _mediumSize14Text = mediumSize14Text();
    expect(
      _mediumSize14Text,
      GoogleFonts.sora(
        color: color,
        fontWeight: FontWeight.w600,
        fontSize: 14,
      ),
    );
    // size 13
    final TextStyle _boldSize13Text = boldSize13Text();
    expect(
      _boldSize13Text,
      GoogleFonts.sora(
        fontWeight: FontWeight.w500,
        color: color,
        fontSize: 13,
      ),
    );
    final TextStyle _normalSize13Text = normalSize13Text();
    expect(
      _normalSize13Text,
      GoogleFonts.sora(
        fontWeight: FontWeight.w400,
        color: color,
        fontSize: 13,
      ),
    );

    // size 12
    final TextStyle _heavySize12Text = heavySize12Text();
    expect(
      _heavySize12Text,
      GoogleFonts.sora(
        fontWeight: FontWeight.w700,
        color: color,
        fontSize: 12,
      ),
    );

    final TextStyle _veryHeavySize12Text = veryHeavySize12Text();
    expect(
      _veryHeavySize12Text,
      GoogleFonts.sora(
        fontWeight: FontWeight.w800,
        color: color,
        fontSize: 12,
      ),
    );

    final TextStyle _boldSize12Text = boldSize12Text();
    expect(
      _boldSize12Text,
      GoogleFonts.sora(
        fontWeight: FontWeight.w500,
        color: color,
        fontSize: 12,
      ),
    );
    final TextStyle _normalSize12Text = normalSize12Text();
    expect(
      _normalSize12Text,
      GoogleFonts.sora(
        fontWeight: FontWeight.w400,
        color: color,
        fontSize: 12,
      ),
    );

    // size 11
    final TextStyle _heavySize11Text = heavySize11Text();
    expect(
      _heavySize11Text,
      GoogleFonts.sora(
        fontWeight: FontWeight.w700,
        color: color,
        fontSize: 11,
      ),
    );
    final TextStyle _normalSize11Text = normalSize11Text();
    expect(
      _normalSize11Text,
      GoogleFonts.sora(
        fontWeight: FontWeight.w400,
        color: color,
        fontSize: 11,
      ),
    );

    // size 10
    final TextStyle _heavySize10Text = heavySize10Text();
    expect(
      _heavySize10Text,
      GoogleFonts.sora(
        fontWeight: FontWeight.w700,
        color: color,
        fontSize: 10,
      ),
    );
    final TextStyle _normalSize10Text = normalSize10Text();
    expect(
      _normalSize10Text,
      GoogleFonts.sora(
        fontWeight: FontWeight.w400,
        color: color,
        fontSize: 10,
      ),
    );

    // size 9
    final TextStyle _normalSize9Text = normalSize9Text();
    expect(
      _normalSize9Text,
      GoogleFonts.sora(
        fontWeight: FontWeight.w400,
        color: color,
        fontSize: 9,
      ),
    );
  });
}
