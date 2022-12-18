import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class Natija extends StatelessWidget {
  final int natija;
  final savollarUzinligi;
  final Function() qaytadanBoshlash;

  Natija(this.natija, this.savollarUzinligi, this.qaytadanBoshlash);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Natija: $natija / $savollarUzinligi",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          ElevatedButton.icon(
            onPressed: qaytadanBoshlash,
            icon: Icon(Icons.restart_alt),
            label: Text("Restart"),
          ),
        ],
      ),
    );
  }
}
