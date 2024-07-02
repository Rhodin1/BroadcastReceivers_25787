import 'package:broadcast_receiver/dependency_injection.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<void> maain() async {
  runApp(const MyApp());
  DependencyInjection.init();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: const Page1(),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff1D1E22),
        title: const Text('HOME'),
        centerTitle: true,
      ),
      body: Center(
        child: MaterialButton(
          height: 60,
          minWidth: 200,
          child: const Text(
            'GO TO PAGE 2',
            style: TextStyle(color: Colors.white),
          ),
          color: const Color(0xff1D1E22),
          onPressed: () => Navigator.push<void>(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) => const Page2(),
            ),
          ),
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent[700],
        title: const Text('PAGE 2'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Welcome to Page 2!'),
      ),
    );
  }
}
