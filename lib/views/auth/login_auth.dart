import 'package:flutter/material.dart';

class signin_auth extends StatefulWidget {
  @override
  _signin_authState createState() => _signin_authState();
}

class _signin_authState extends State<signin_auth> with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Container(

    );
  }
}
