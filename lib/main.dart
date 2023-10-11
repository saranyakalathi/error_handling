import 'package:error_handling/myapp.dart';
import 'package:flutter/material.dart';

void main() {
  FlutterError.onError=(FlutterErrorDetails details) {
    print('Global error occured ${details.exception}');
  };
  runApp(MyApp());
}

