import 'dart:async';

import 'package:flutter/material.dart';
import 'package:laptopharbor/login.dart';
class loader1 extends StatefulWidget {
  const loader1({super.key});

  @override
  State<loader1> createState() => _loader1State();
}

class _loader1State extends State<loader1> {
  void initState() {
    super.initState();

    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Login()),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.black12,
        child: Image.asset("images/loader.gif"),
      ),
    );
  }
}
