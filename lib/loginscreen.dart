
import 'dart:convert';

import 'package:bus/Apiservices.dart';
import 'package:bus/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
class loginscreen extends StatefulWidget {
  const loginscreen({Key? key}) : super(key: key);

  @override
  State<loginscreen> createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
  final usercontroller=TextEditingController();
  final passwordcontroller=TextEditingController();
   calllogincall(){
    final service=Apiservices();
    service.logincall(
      {
        "username":usercontroller.text.toString(),
        "password":passwordcontroller.text.toString(),
      }
    ).then((value) {
      if(value.error!=null){
        print("get data"+value.error!);
      }else{
        print(value.token!);
      }
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[300],
      appBar: AppBar(
        backgroundColor: Colors.orange[400],
        centerTitle: true,
        title: Text("BUSOOO"),
      ),
      body:SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: usercontroller,
                 decoration: InputDecoration(
                   border:OutlineInputBorder(),
                   hintText: "User Name",
                   hintStyle: TextStyle(fontWeight: FontWeight.bold),
                 ),
                ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: passwordcontroller,
                decoration: InputDecoration(
                  border:OutlineInputBorder(),
                  hintText: "Password",
                    hintStyle: TextStyle(fontWeight: FontWeight.bold)
                ),
              ),
            ),
            ElevatedButton(onPressed: (){
              calllogincall();
            },

                child: Text("LOGIN")),
          ],
        ),
      ),
    );
  }
}
