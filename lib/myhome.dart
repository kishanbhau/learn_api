import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height/1.75,
            decoration: const BoxDecoration(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(40.0)),
                color: Colors.purpleAccent,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10.0,
                      offset: Offset(5.0, 5.0),
                      spreadRadius: 2.0)
                ]),
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: const Padding(
                padding: EdgeInsets.only(top: 50.0,left: 38.0),
                child: Text(
                  'Winter\nVacation Trip',
                  style:
                  TextStyle(
                    fontSize: 45.0, 
                    color: Colors.black,
                    fontFamily: 'Merriweather'
                    
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
