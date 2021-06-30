import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


void main(){
  //widgetsapp //MaterialApp //Cupertinoapp
  runApp(MaterialApp(
    home:HomePage(),
    theme: ThemeData(
      primarySwatch: Colors.purple,
    ),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('awesome app'),
      ),
      body: Container(
        child:Text('Hii Flutter'),
      ),
    );
  }
}
