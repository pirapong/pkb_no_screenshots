import 'dart:io';

import 'package:flutter/services.dart';
import 'package:pkb_no_screenshots/pkb_no_screenshotAndroid.dart';
import 'callback.dart';

class DisableScreenshots {

  static Future disable_enable(status) async {
    if (Platform.isAndroid) {
      status == 'D' ?
      await _disableScreenshotsAndroid():
      await  _enableScreenshotsAndroid();
    } else if (Platform.isIOS) {
      await _disableScreenshotsIOS();
    }
  }

  static Future<void> _disableScreenshotsAndroid() async {
    final _noScreenshot = NoScreenshot.instance;
    try {
      await _noScreenshot.screenshotOff();
    } on PlatformException catch (e) {
      print("Error disabling screenshots on Android: ${e.message}");
    }
  }

  static Future<void> _enableScreenshotsAndroid() async {
    final _noScreenshot = NoScreenshot.instance;
    try {
      await  _noScreenshot.screenshotOn();
    } on PlatformException catch (e) {
      print("Error disabling screenshots on Android: ${e.message}");
    }
  }

  // static Future ScreenshotCallbackIos() async {
  //   String status = 'T';
  //   late ScreenshotCallbackIos ScreenshotCallbackIos;
  //   ScreenshotCallbackIos =  ScreenshotCallbackIos();
  //   ScreenshotCallbackIos.addListener(() {});
  //   return status;
  // }

  static Future _disableScreenshotsIOS() async {
    const platform = MethodChannel('disableScreenshots');
    try {
      await platform.invokeMethod('disable');
    } on PlatformException catch (e) {
      print("Error disabling screenshots on iOS: ${e.message}");
    }
  }
}
