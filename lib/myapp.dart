import 'package:flutter/material.dart';

void main() {
  FlutterError.onError=(FlutterErrorDetails details) {
    print('Global error occured ${details.exception}');
  };
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title:const Text('Global error hander'),
          //handleerror
        ),
        body:Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  throw Exception('Global error');
                },
                child: const Text('trigerring exception'),
              ),
              const SizedBox(height: 10,),
              ElevatedButton(
                onPressed: () {
                  print('B) Using a global error handler –');
                },
                child: const Text('Question 106'),
              ),
              const SizedBox(height: 10,),
              ElevatedButton(
                onPressed: () {
                  print('A) Utilize try/catch blocks and provide user-friendly error messages ');
                },
                child: const Text('Question 107'),
              ),
              const SizedBox(height: 10,),
              ElevatedButton(
                onPressed: () {
                  print('B) To serve as a global exception handler – ');
                },
                child: const Text('Question 108'),
              ),
              const SizedBox(height: 10,),
              ElevatedButton(
                onPressed: () {
                  print('B) To serve as a global exception handler – ');
                },
                child: const Text('Question 109'),
              ),
              const SizedBox(height: 10,),
              ElevatedButton(
                onPressed: () {
                  print('A) Users may receive verbose and confusing error messages ');
                },
                child: const Text('Question 110'),
              ),
              const SizedBox(height: 10,),
              ElevatedButton(
                onPressed: () {
                  print('B) Displaying technical or raw error messages  ');
                },
                child: const Text('Question 111'),
              ),
              const SizedBox(height: 10,),
              ElevatedButton(
                onPressed: () {
                  print('A) By utilizing the ErrorWidget.builder – ');
                },
                child: const Text('Question 112'),
              ),
              const SizedBox(height: 10,),
              ElevatedButton(
                onPressed: () {
                  print('B) Using try/catch blocks within async functions –  ');
                },
                child: const Text('Question 113'),
              ),
              const SizedBox(height: 10,),
              ElevatedButton(
                onPressed: () {
                  print('B) Employing FlutterError.onError – and C) Using Isolate.current.addErrorListener – ');
                },
                child: const Text('Question 114'),
              ),
              const SizedBox(height: 10,),
              ElevatedButton(
                onPressed: () {
                  print('B) Using try/catch blocks within async functions –  ');
                },
                child: const Text('Question 115'),
              ),
          ],
        ),
        ),
    );
  }
}
