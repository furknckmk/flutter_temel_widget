

import 'package:flutter/material.dart';
import 'package:flutter_temel_widget/main.dart';

class MyCounterPage extends StatefulWidget {
  MyCounterPage({Key? key}) : super(key: key);

  @override
  State<MyCounterPage> createState() => _MyCounterPageState();
}

class _MyCounterPageState extends State<MyCounterPage> {
 int _sayac = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Counter AppBar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyNewTextWidget(),
            Text(_sayac.toString(),
                style: Theme.of(context).textTheme.headline1),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('tiklandi $_sayac');
          sayacArttir();
        },
        child: Icon(
          Icons.add,
          size: 35,
          color: Colors.amber,
        ),
      ),
    );
  }

  void sayacArttir() {
    setState(() {
      _sayac++;
    });
  }
  }

class MyNewTextWidget extends StatelessWidget {
  const MyNewTextWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Butona basilma miktari',
      style: TextStyle(fontSize: 24),
    );
  }
}
