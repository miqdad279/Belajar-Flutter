import 'package:flutter/material.dart';

class Dzikir extends StatefulWidget {
  const Dzikir({Key? key}) : super(key: key);

  @override
  State<Dzikir> createState() => _DzikirState();
}

class _DzikirState extends State<Dzikir> {
  int number = 0;
  void tekanT() {
    setState(() {
      number += 1;
    });
  }

  void reset() {
    setState(() {
      number = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dzikir'),
        elevation: 0,
        backgroundColor: const Color(0xFF2D898B),
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                RawMaterialButton(
                  onPressed: reset,
                  elevation: 2.0,
                  fillColor: Colors.white,
                  padding: const EdgeInsets.all(15.0),
                  shape: const CircleBorder(),
                  child: const Icon(
                    Icons.refresh,
                    size: 30.0,
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 200, bottom: 80),
                child: Text(
                  number.toString(),
                  style: const TextStyle(fontSize: 70),
                ),
              ),
              RawMaterialButton(
                onPressed: tekanT,
                elevation: 2.0,
                fillColor: Colors.white,
                padding: const EdgeInsets.all(15.0),
                shape: const CircleBorder(),
                child: const Icon(
                  Icons.add,
                  size: 80.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
