import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'constants.dart';
import 'pkb_no_screenshot_platform_interface.dart';

/// An implementation of [NoScreenshotPlatform] that uses method channels.
class MethodChannelNoScreenshot extends NoScreenshotPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('com.pkb.no_screenshot');

  @override
  Future<bool> toggleScreenshot() async {
    final result =
        await methodChannel.invokeMethod<bool>(toggleScreenShotConst);
    return result ?? false;
  }

  @override
  Future<bool> screenshotOff() async {
    final result = await methodChannel.invokeMethod<bool>(screenShotOffConst);
    return result ?? false;
  }

  @override
  Future<bool> screenshotOn() async {
    final result = await methodChannel.invokeMethod<bool>(screenShotOnConst);
    return result ?? false;
  }
}
