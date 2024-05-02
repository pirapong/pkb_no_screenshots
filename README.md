# PKB No Screenshots
    Flutter plugin to enable, disable or toggle screenshot support in your application.  ios and android.

## Usage
```
const Text(
              'ScreenshotIOS',
            ),
            ElevatedButton(
              onPressed: () {
                DisableScreenshots.disable_enable('');
              },
              child:  Text('Disabled'),
            ),

            const Text(
              'ScreenshotAndroid',
            ),
            ElevatedButton(
              child: const Text('Press to turn off screenshot'),
              onPressed: ()  {
                DisableScreenshots.disable_enable('D');
              },
            ),
            ElevatedButton(
              child: const Text('Press to turn on screenshot'),
              onPressed: ()  {
                DisableScreenshots.disable_enable('E');
              },
            ),
```


## Add native ios 
    Add code to your ios/Runner/AppDelegate.swift dependencies
## Usage
```
import UIKit
import Flutter

let CHANNEL = "disableScreenshots"
@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    let controller: FlutterViewController = window?.rootViewController as! FlutterViewController
    let channel = FlutterMethodChannel(name: CHANNEL, binaryMessenger: controller.binaryMessenger)
    channel.setMethodCallHandler({
                [weak self] (call: FlutterMethodCall, result: FlutterResult) -> Void in
                   if (call.method == "disable") {
                        self?.window?.makeSecureDisable()
                    }
            })
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}

extension UIWindow {
    func makeSecureDisable() {
        let field = UITextField()
        let view = UIView(frame: CGRect(x: 0, y: 0, width: field.frame.self.width, height: field.frame.self.height))
        field.isSecureTextEntry = true
        self.addSubview(field)
        self.layer.superlayer?.addSublayer(field.layer)
        field.layer.sublayers?.last!.addSublayer(self.layer)
        field.leftView = view
        field.leftViewMode = .always
    }
}

```