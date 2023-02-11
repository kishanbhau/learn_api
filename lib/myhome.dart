import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learn_api/PlaceData.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  String texts =
      "Enjoy your winter vacations with warmth and amazing sightseeing on the mountains.Enjoy the best experience with us!";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            child: Image(
              image: AssetImage('assets/winter.jpg'),
              fit: BoxFit.cover,
            ),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.53,
            clipBehavior: Clip.antiAliasWithSaveLayer,
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
          SizedBox(
            height: 20.0,
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 38.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Winter\nVacation Trip',
                      style: TextStyle(
                          fontSize: 36.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 14.0,
                    ),
                    Text(
                      texts,
                      style: TextStyle(
                          height: 1.6,
                          fontSize: 16.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(height: 38.0),
                    OutlinedButton(
                      onPressed: (){

                      },
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
                        backgroundColor: Color(0xFF6A62B7)
                      ),
                      child: Directionality(

                        textDirection: TextDirection.rtl,
                        child: TextButton.icon(
                          onPressed: null,
                          icon: Icon(
                            Icons.arrow_right_alt_rounded,
                            color: Colors.white,
                            size: 37.14,
                            
                          ),
                          label: Text(
                            "Lat's Go",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.white
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
