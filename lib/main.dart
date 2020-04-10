import 'package:flutter/material.dart';
import 'home_page.dart';


class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "My Calculator",

      theme: new ThemeData(
        brightness: Brightness.dark,
          primarySwatch: Colors.blue),
      home: new HomePage(),
    );

}
}

