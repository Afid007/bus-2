
import 'package:bus/splashscreen.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(Bus());
}
class Bus extends StatelessWidget {
  const Bus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:splashscreen(),
    );
  }
}
