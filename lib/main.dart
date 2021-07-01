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
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          width: 100,
          height:100,
          clipBehavior: Clip.antiAlias,
          alignment: Alignment.bottomRight,
          decoration: BoxDecoration(
            color: Colors.red,
            gradient: LinearGradient(colors:[Colors.purple,
            Colors.yellow]),
            boxShadow: [
              BoxShadow(
                color:Colors.grey,
                blurRadius: 10,
              )
            ],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text('THis is a box',
          textAlign: TextAlign.center,
          style:TextStyle(
            fontSize: 20,
            color:Colors.white,
            fontWeight: FontWeight.bold,
          )),
        ),
      ),
    );
  }
}
