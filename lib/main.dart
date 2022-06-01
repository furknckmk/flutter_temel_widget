import 'package:flutter/material.dart';
import 'package:flutter_temel_widget/dropdown_button.dart';
import 'package:flutter_temel_widget/image_widget.dart';
import 'package:flutter_temel_widget/popup_menu.dart';
import 'package:flutter_temel_widget/temel_button_tur.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Counter App',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Scaffold(
        appBar: AppBar(
          actions: [PopupMenuKullanimi()],
          title: Text('Button Ornekleri'),
        ),
        body: ImageOrnekleri(),
      ),
    );
  }
}
