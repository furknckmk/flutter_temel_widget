import 'package:flutter/material.dart';

class DropDownButtonKullanimi extends StatefulWidget {
  DropDownButtonKullanimi({Key? key}) : super(key: key);

  @override
  State<DropDownButtonKullanimi> createState() =>
      _DropDownButtonKullanimiState();
}

class _DropDownButtonKullanimiState extends State<DropDownButtonKullanimi> {
  String? dropdownValue = null;
  List<String> _tumSehirler = ['Ankara', 'Bursa', 'Izmir', 'Hatay', 'Furkan'];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton<String>(
        hint: Text('Sehir Seciniz'),
        value: dropdownValue,
        onChanged: (String? yeni) {
          setState(() {
            print('calisti $yeni');
            dropdownValue = yeni!;
          });
        },
        /* items: [
          DropdownMenuItem(
            child: Text('Ankara Sehri'),
            value: 'Ankara',
          ),
          DropdownMenuItem(
            child: Text('Hatay Sehri'),
            value: 'Hatay',
          ),
          DropdownMenuItem(
            child: Text('Izmir Sehri'),
            value: 'Izmir',
          ),
          DropdownMenuItem(
            child: Text('Istanbul Sehri'),
            value: 'Istanbul',
          ),
        ],*/
        items: _tumSehirler //string listeyi map ile dropdown listeye donusturduk en son tolist diyerek bunu liste haline cevirdik
            .map(
              (String oAnkiSehir) => DropdownMenuItem(
                child: Text(oAnkiSehir),
                value: oAnkiSehir,
              ),
            )
            .toList(),
      ),
    );
  }
}
