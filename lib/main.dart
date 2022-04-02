import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Color Gradients',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var tinggi = MediaQuery.of(context).size.height;
    var lebar = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Postest 1 Ega Sulfika',
          style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255), fontSize: 25),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(color: Color.fromRGBO(10, 65, 59, 1)),
        ),
      ),
      body: Column(
        children: <Widget>[
          const Text(
            '........................hallo........................',
            style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 25,
                fontWeight: FontWeight.w800),
          ),
          Flexible(
            flex: 1,
            child: Container(
              width: lebar,
              height: tinggi,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    colors: <Color>[
                      Color.fromRGBO(10, 65, 59, 1),
                      Color.fromARGB(255, 243, 33, 138),
                    ]),
                border: Border.all(
                  width: 10,
                  color: Color.fromARGB(221, 255, 255, 255),
                ),
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
          Flexible(
            flex: 5,
            child: Container(
              width: lebar,
              height: tinggi,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    colors: <Color>[
                      Color.fromRGBO(10, 65, 59, 1),
                      Color.fromARGB(255, 255, 255, 255),
                    ]),
                border: Border.all(
                  width: 10,
                  color: Color.fromARGB(221, 255, 255, 255),
                ),
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
