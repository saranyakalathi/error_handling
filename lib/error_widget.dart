import 'package:flutter/material.dart';

void main() {
  FlutterError.onError=(FlutterErrorDetails errorDetails) {
    print('Global error occured ${errorDetails.exception}');
  };
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('ErrorWidget example app'),
        ),
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
            onPressed: () {
              int res = 2 ~/ 0;
              print(res);
            },
            icon: Icon(Icons.agriculture)),
          ErrorHandler(
          FlutterErrorDetails(exception: 'custom exception'),
        ),
      ],
    );
  }
}

class ErrorHandler extends ErrorWidget{
  ErrorHandler(this.errorDetails) : super(errorDetails);
  final FlutterErrorDetails errorDetails;
  @override
  Widget build(FlutterErrorDetails details) {
    return Text('Error occured ${errorDetails.exception}');
  }
}
