import 'package:english_quiz/widgets/natija.dart';
import 'package:flutter/material.dart';
import './widgets/savol.dart';
import './widgets/natija.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Map<String, dynamic>> savollarVaJavoblar = [
    {
      "savol": "1. What _____ your name?",
      "javoblar": [
        {"matn": "are", "togrimi": false},
        {"matn": "is", "togrimi": true},
        {"matn": "Hello", "togrimi": false},
        {"matn": "tom", "togrimi": false},
      ],
    },
    {
      "savol": "2. Who _____ you?",
      "javoblar": [
        {"matn": "hi", "togrimi": false},
        {"matn": "me", "togrimi": false},
        {"matn": "are", "togrimi": true},
        {"matn": "Mike", "togrimi": false},
      ],
    },
    {
      "savol": "3. Where _____ she from?",
      "javoblar": [
        {"matn": "Me", "togrimi": false},
        {"matn": "Cat", "togrimi": false},
        {"matn": "blacd", "togrimi": false},
        {"matn": "is", "togrimi": true},
      ],
    },
    {
      "savol": "4. What color _____ you like?",
      "javoblar": [
        {"matn": "Me", "togrimi": false},
        {"matn": "do", "togrimi": true},
        {"matn": "black", "togrimi": false},
        {"matn": "is", "togrimi": false},
      ],
    },
  ];

  String javob1 = "1-Javob S1";
  String javob2 = "2-Javob S1";
  String javob3 = "3-Javob S1";
  String javob4 = "4-Javob S1";

  int hozirgiSavolRaqami = 0;
  int natija = 0;

  void answerQuestion(bool togrimi) {
    setState(() {
      hozirgiSavolRaqami++;

      if (togrimi) {
        natija++;
      }
    });
  }

  void qaytadanBoshlash() {
    setState(() {
      hozirgiSavolRaqami = 0;
      natija = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ingliz tili Quiz'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: hozirgiSavolRaqami < savollarVaJavoblar.length
              ? Savol(
                  savollarVaJavoblar[hozirgiSavolRaqami]["savol"],
                  savollarVaJavoblar[hozirgiSavolRaqami]["javoblar"],
                  answerQuestion)
              : Natija(natija, savollarVaJavoblar.length, qaytadanBoshlash),
        ),
      ),
    );
  }
}

//okkkk