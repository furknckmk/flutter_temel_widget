import 'dart:math';

import 'package:flutter/material.dart';

class PopupMenuKullanimi extends StatefulWidget {
  PopupMenuKullanimi({Key? key}) : super(key: key);

  @override
  State<PopupMenuKullanimi> createState() => _PopupMenuKullanimiState();
}

class _PopupMenuKullanimiState extends State<PopupMenuKullanimi> {
  String _secilenSehir = 'Renkler';
  List<String> renkler = ['Mavi', 'Yesil', 'Kirmizi', 'Teal', 'Teal', 'Teal', 'Teal', 'Teal', 'Teal', 'Teal', 'Teal', 'Teal', 'Teal', 'Teal'];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: PopupMenuButton<String>(
        onSelected: (String sehir) {
          print('secilen sehir ; $sehir');
          setState(() {
            _secilenSehir = sehir;
          });
        },
        child: Text(_secilenSehir),
        itemBuilder: (BuildContext context) {
          /*  return <PopupMenuEntry<String>>[
            PopupMenuItem(
              child: Text('Ankara'),
              value: 'Ankara',
            ),
            PopupMenuItem(
              child: Text('Bursa'),
              value: 'Bursa',
            ),
            PopupMenuItem(
              child: Text('Hatay'),
              value: 'Hatay',
            ),
            PopupMenuItem(
              child: Text('Adana'),
              value: 'Adana',
            ),
          ]; */
          return renkler
              .map(
                (String e) => PopupMenuItem(
                  child: Text(e),
                  value: e,
                ),
              )
              .toList();
        },
      ),
    );
  }
}
