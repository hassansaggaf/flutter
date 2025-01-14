// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({super.key});

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {

  // text editing controller - to GET what the user typed

  TextEditingController myController = TextEditingController();

  // greet message variable

  String greetingMessage = "";

  // Greet user method 
  void greetUser(){
    String userName = myController.text;
    setState(() {
      greetingMessage = "Hello, " + userName;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(greetingMessage),
              TextField(
                controller: myController,
                decoration: 
                InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Type your name",
                  ),
                
              ),
              ElevatedButton(
                onPressed: greetUser, 
                child: Text("Tap"),
              ),
            ],
          ),
        ),
      )
    );
  }
}