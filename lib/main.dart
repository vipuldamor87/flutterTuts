import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app2/drawer/drawer.dart';
import 'package:flutter_app2/pages/home_page.dart';

import 'name_card_widget.dart';


void main(){
  //widgetsapp //MaterialApp //Cupertinoapp
  runApp(MaterialApp(
    home:HomePage(),
    theme: ThemeData(
      primarySwatch: Colors.purple,
    ),
  ));
}

