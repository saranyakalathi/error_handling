import 'package:flutter/material.dart';

void main(){
  runApp(ArithException());
}

class ArithException extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ArithException'),
        ),
        body: IconButton(onPressed: () {
          try {
            int a = 10;
            int b = 0;
            int c = a ~/ b;
            print(c);
          } catch (e) {
            print('zeros are not allowed in denominator');
          }
        }, icon: const Icon(Icons.error),),
      ),
    );
  } 
}