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

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  var myText = "Change My Name";
  TextEditingController _nameController = TextEditingController();


  @override
  void initState() {
    super.initState();
  }


  @override
  void dispose() {
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(title: Text('awesome app'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Card(
              child: Column(
                children: <Widget>[
                  Image.asset(
                    "assets/day.png",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                      myText,
                    style: TextStyle(fontSize: 25,
                    fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextField(
                      controller: _nameController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "enter Some Text",
                        labelText: "Name"
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        )
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
        onPressed: () {
          myText = _nameController.text;
          setState(() {});
        },
        child: Icon(Icons.send),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
