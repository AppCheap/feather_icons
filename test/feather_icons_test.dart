import 'package:feather_icons/feather_icons.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('icons retain their package font metadata', () {
    expect(FeatherIcons.activity.fontFamily, 'Feather');
    expect(FeatherIcons.activity.fontPackage, 'feather_icons');
    expect(FeatherIcons.activity.matchTextDirection, isTrue);
    expect(FeatherIconsMap['activity'], FeatherIcons.activity);
  });

  test('camelCase and snake_case APIs resolve to the same icon', () {
    expect(FeatherIcons.arrowLeft, FeatherIconsSnakeCase.arrow_left);
    expect(FeatherIconsMap['arrow-left'], FeatherIcons.arrowLeft);
  });
}
