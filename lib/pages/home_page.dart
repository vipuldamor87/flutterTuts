import 'package:flutter/material.dart';
import 'package:flutter_app2/drawer/drawer.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../name_card_widget.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
 // var myText = "Change My Name";
  //TextEditingController _nameController = TextEditingController();

  var url = "https://jsonplaceholder.typicode.com/photos";
  var data;


  @override
  void initState() {
    super.initState();
    fetchData();
  }
  fetchData() async{
        var res = await http.get(Uri.parse(url));
        print(res.body);
        data = jsonDecode(res.body);
        setState(() {

        });
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
      body: data!=null
          ? ListView.builder(itemBuilder: (context,index){
            return ListTile(
              title: Text(data[index]["title"]),
              subtitle: Text("ID : ${data[index]["id"]}"),
              leading: Image.network(data[index]["url"]),
            );
      },itemCount: data.length,)
          :Center(
            child: CircularProgressIndicator(),
      ),
      drawer: MyDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
         // myText = _nameController.text;
          //setState(() {});
        },
        child: Icon(Icons.send),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }


}