// import 'package:flutter_test/flutter_test.dart';
// import 'package:pkb_no_screenshots/pkb_no_screenshots.dart';
// import 'package:pkb_no_screenshots/pkb_no_screenshots_platform_interface.dart';
// import 'package:pkb_no_screenshots/pkb_no_screenshots_method_channel.dart';
// import 'package:plugin_platform_interface/plugin_platform_interface.dart';
//
// class MockPkbNoScreenshotsPlatform
//     with MockPlatformInterfaceMixin
//     implements PkbNoScreenshotsPlatform {
//
//   @override
//   Future<String?> getPlatformVersion() => Future.value('42');
// }
//
// void main() {
//   final PkbNoScreenshotsPlatform initialPlatform = PkbNoScreenshotsPlatform.instance;
//
//   test('$MethodChannelPkbNoScreenshots is the default instance', () {
//     expect(initialPlatform, isInstanceOf<MethodChannelPkbNoScreenshots>());
//   });
//
//   test('getPlatformVersion', () async {
//     PkbNoScreenshots pkbNoScreenshotsPlugin = PkbNoScreenshots();
//     MockPkbNoScreenshotsPlatform fakePlatform = MockPkbNoScreenshotsPlatform();
//     PkbNoScreenshotsPlatform.instance = fakePlatform;
//
//     expect(await pkbNoScreenshotsPlugin.getPlatformVersion(), '42');
//   });
// }
