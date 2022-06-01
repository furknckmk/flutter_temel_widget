import 'dart:ui';

import 'package:flutter/material.dart';

class ImageOrnekleri extends StatelessWidget {
  const ImageOrnekleri({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String _imgUrl =
        "https://shiftdelete.net/wp-content/themes/shiftdelete/assets/img/logo-2x.png";
    return Center(
      child: Column(
        children: [
          IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Container(
                    child: Image.network(
                      _imgUrl,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.red.shade300,
                    child: Image.asset(
                      'assets/images/1631573433411.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    //color: Colors.blue,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        child: Text(
                          'F.C',
                          style: Theme.of(context).textTheme.headlineLarge,
                        ),
                        backgroundImage: NetworkImage(
                            'https://www.kindpng.com/picc/m/451-4517876_default-profile-hd-png-download.png'),
                        backgroundColor: Colors.amber,
                        foregroundColor: Colors.red,
                        radius: 80,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: FadeInImage.assetNetwork(
                placeholder: 'assets/images/loading.gif',
                image:
                    'https://media.istockphoto.com/vectors/male-profile-flat-blue-simple-icon-with-long-shadow-vector-id522855255?k=20&m=522855255&s=612x612&w=0&h=fLLvwEbgOmSzk1_jQ0MgDATEVcVOh_kqEe0rqi7aM5A='),
          )
        ],
      ),
    );
  }
}
