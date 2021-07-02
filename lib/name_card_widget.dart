import 'package:flutter/material.dart';

Card NameCardWidget({required TextEditingController nameController, required String myText}) {
  return Card(
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
            controller: nameController,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "enter Some Text",
                labelText: "Name"
            ),
          ),
        )
      ],
    ),
  );
}