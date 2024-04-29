import 'package:flutter/material.dart';

class Close extends StatefulWidget {
  const Close({super.key});

  @override
  State<Close> createState() => _CloseState();
}

class _CloseState extends State<Close> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('แคปรูปหน้าจอได้'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'ไม่สามารถ แคปรูปหน้าจอได้',
            ),
            ElevatedButton(
              onPressed: () {

              },
              child:  Text('exit'),
            ),
          ],
        ),
      ),
    );
  }
}
