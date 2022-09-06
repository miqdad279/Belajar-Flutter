import 'package:flutter/material.dart';
import 'package:miqdad_app/dzikir.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Qur\'an App'),
        elevation: 0,
        backgroundColor: const Color(0xFF2D898B),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 30, top: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      'Hi, Miqdad',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      'Welcome!',
                      style: Theme.of(context)
                          .textTheme
                          .subtitle2!
                          .copyWith(fontSize: 14.0),
                    ),
                  ],
                ),
                const CircleAvatar(
                    maxRadius: 30.0,
                    minRadius: 30.0,
                    backgroundImage: AssetImage('images/pp.jpg')),
              ],
            ),
          ),
          Column(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 40),
                child: Center(
                  child: Image.asset('images/Jam.png'),
                ),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(left: 30, top: 50, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Ink.image(
                                image: const AssetImage('images/Al-Quran.png'),
                                width: 40,
                                height: 40,
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              const Text(
                                'Al-Qur\'an',
                                style: TextStyle(color: Colors.grey),
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Ink.image(
                                image: const AssetImage('images/Murottal.png'),
                                width: 40,
                                height: 40,
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              const Text(
                                'Murottal',
                                style: TextStyle(color: Colors.grey),
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const Dzikir();
                            }));
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Ink.image(
                                image: const AssetImage('images/Dzikir.png'),
                                width: 40,
                                height: 40,
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              const Text('Dzikir'),
                              const SizedBox(
                                height: 6,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Ink.image(
                                image: const AssetImage('images/More.png'),
                                width: 40,
                                height: 40,
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              const Text(
                                'More',
                                style: TextStyle(color: Colors.grey),
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
