import 'package:bus/loginscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class splashscreen extends StatefulWidget{
  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    gotologin();
    super.initState();

  }
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.orange[400],
     body:Padding( padding:EdgeInsets.all(10),child: Center(
       child: Image.asset("assets/imagess/pngkey.com-carro-png-8762713.png"
      ,height: 250,
         width: 250,
       ),
     ),
   ),);
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
  Future<void>gotologin()async{
    await Future.delayed(Duration(seconds: 3));
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx){
      return loginscreen();
    },),);

  }
}