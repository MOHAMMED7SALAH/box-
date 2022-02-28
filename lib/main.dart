import 'package:flutter/material.dart';

import 'package:device_preview/device_preview.dart';

void main() => runApp(
  DevicePreview(
    // enabled: !kReleaseMode,
    builder: (context) => MyApp(), // Wrap your app
  ),
);
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            decoration: BoxDecoration(
                color: Colors.blue,
                gradient: LinearGradient(
                  begin: FractionalOffset.bottomLeft,
                  end: FractionalOffset.topRight,
                  colors: <Color>[Colors.purple, Colors.orange],
                ),
                borderRadius: BorderRadius.circular(11),
                boxShadow: [
                  BoxShadow(color: Colors.yellow, offset: Offset(5.0, 5.0))
                ]),
            child: Material(
              borderRadius: BorderRadius.circular(11),
              clipBehavior: Clip.hardEdge,
              child: InkWell(
                onTap: () {
                  print("tapped");
                },
                child: Container(
                  width: ButtonTheme.of(context).minWidth,
                  height: ButtonTheme.of(context).height,
                  child: Center(
                    child: Text(
                      "log in",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              color: Colors.transparent,
            ),
          ),
        ),
      ),
    );
  }
}
