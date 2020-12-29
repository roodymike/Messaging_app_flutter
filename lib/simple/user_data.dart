import 'package:flutter/material.dart';
class username_screen extends StatefulWidget {
  @override
  _username_screenState createState() => _username_screenState();
}

class _username_screenState extends State<username_screen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      appBar: AppBar(
        brightness: Brightness.dark,
        elevation: 8,
        title: Text(
        'Chat Room',
        style: TextStyle(
        color: Colors.white,
        ),
        ),
      ),
      body: ListView.builder(
        itemCount: 6,
        itemBuilder: (BuildContext context, int index) {
          //final Message chat = chats[index];
          return Form(
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
          TextFormField(
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () { 
                print('Button Pressed');
              },
              child: Text('Submit'),
            ),
          ),
        ],
    ),
    );
    },
    ),);
  }
}