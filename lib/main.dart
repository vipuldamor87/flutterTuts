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
          height: 100,
          width: 100,
          color: Colors.teal,
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0),
          children:<Widget>[
            UserAccountsDrawerHeader(
                accountName: Text('Vipul Damor'),
                accountEmail: Text('Vipul@abc.com'),
                currentAccountPicture:CircleAvatar(
                  backgroundImage: NetworkImage('https://i.pinimg.com/474x/7d/1a/3f/7d1a3f77eee9f34782c6f88e97a6c888.jpg'),
                ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('vipul damor'),
              subtitle: Text('developer'),
              trailing: Icon(Icons.edit),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Email'),
              subtitle: Text('vipul@abc.com'),
              trailing: Icon(Icons.email),
            ),
          ]
        ) ,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.edit),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
