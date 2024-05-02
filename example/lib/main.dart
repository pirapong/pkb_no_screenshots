// import 'package:example/close.dart';
// import 'package:flutter/material.dart';
// import 'package:pkb_no_screenshots/pkb_no_screenshots.dart';
// import 'package:screenshot_callback/screenshot_callback.dart';
//
// void main() {
//   runApp(const MyApp());
//
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//
//   final String title;
//
//   @override
//   void initState() {
//     super.initState();
//   }
//   @override
//   void dispose() {
//     super.dispose();
//   }
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'ScreenshotIOS',
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 DisableScreenshots.disable_enable('');
//                 DisableScreenshots.ScreenshotCallbackIos().then((value) => {
//                   Navigator.pushReplacement(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) =>
//                           Close(),
//                     ),
//                   ),
//                 });
//
//               },
//               child:  Text('Disabled'),
//             ),
//
//             const Text(
//               'ScreenshotAndroid',
//             ),
//             ElevatedButton(
//               child: const Text('Press to turn off screenshot'),
//               onPressed: ()  {
//                 DisableScreenshots.disable_enable('D');
//               },
//             ),
//             ElevatedButton(
//               child: const Text('Press to turn on screenshot'),
//               onPressed: ()  {
//                 DisableScreenshots.disable_enable('E');
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }



import 'package:example/close.dart';
import 'package:flutter/material.dart';
import 'package:pkb_no_screenshots/callback.dart';
import 'package:pkb_no_screenshots/pkb_no_screenshots.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late ScreenshotCallbackIos screenshotCallback;
  @override
  void initState() {
    super.initState();
    init();
  }

  void init() async {
    await initScreenshotCallbackIOS();
  }

  Future<void> initScreenshotCallbackIOS() async {
    screenshotCallback = ScreenshotCallbackIos();
    screenshotCallback.addListener(() {
    });

    screenshotCallback.addListener(() {
      print(' NO Screenshot');
      // Navigator.pushReplacement(
      //   context,
      //   MaterialPageRoute(
      //     builder: (context) =>
      //         Close(),
      //   ),
      // );
    });
  }

  @override
  void dispose() {
    screenshotCallback.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
   home: Scaffold(
     appBar: AppBar(
       title: Text('PKB NO Screenshot'),
     ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
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
          ],
        ),
      ),
   ),
    );
  }
}