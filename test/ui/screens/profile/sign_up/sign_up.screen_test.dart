import 'package:excellence_teams_frontend/ui/screens/profile/sign_up/sign_up.screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:nv_golden/nv_golden.dart';

void main() {
  testWidgets('screenshot test for SignUpScreen', (tester) async {
    final wrapper = NvWidgetWrapper();

    final nvGolden = NvGolden.devices(deviceSizes: [
      Screen(size: Size(1336, 768)),
      Screen(size: Size(1728, 1117)),
      Screen(size: Size(1920, 1080)),
    ])
      ..addScenario(
        name: "SignUpScreen Anfangsszenario",
        widget: wrapper.wrap(SignUpScreen()),
      );

    await tester.createGolden(nvGolden, 'sign_up_screen');
  });
}
