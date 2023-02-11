import 'package:customizable_counter/customizable_counter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learn_api/PlaceData.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  double? number;
  String texts =
      "Enjoy your winter vacations with warmth and amazing sightseeing on the mountains.Enjoy the best experience with us!";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            child: Image(
              image: AssetImage('assets/winter.jpg'),
              fit: BoxFit.cover,
            ),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.48,
          ),
          SizedBox(
            height: 20.0,
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 290),
              width: MediaQuery.of(context).size.width,
              height: double.maxFinite,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(40.0)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10.0,
                        offset: Offset(5.0, 5.0),
                        spreadRadius: 2.0)
                  ]),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 38.0, vertical: 41.0),
                child: ListView(
                  children: [
                    Text(
                      'Mount Fuji',
                      style: TextStyle(
                          fontSize: 36.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_on_outlined, size: 11.0),
                        Text(
                          'Honshu, Japan',
                          style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        RatingBar.builder(
                          initialRating: number ?? 0.0,
                          itemSize: 16.0,
                          minRating: 1,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding: EdgeInsets.symmetric(vertical: 10.0),
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (value) {
                            setState(() {
                              number = value;
                            });
                          },
                        ),
                        if (number != null)
                          Text(
                            number.toString(),
                            style: TextStyle(
                                fontFamily: 'san-sarif',
                                fontWeight: FontWeight.w500,
                                fontSize: 13),
                          )
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        CustomizableCounter(
                          borderColor: Colors.white,
                          borderRadius: 100,
                          textColor: Colors.black,
                          textSize: 12,
                          count: 0,
                          step: 1,
                          minCount: 0,
                          maxCount: 10,
                          incrementIcon: Container(
                            height: 72.0,
                            width: 26.0,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(13.5)),
                                color: Color(0xFF897CFF)),
                            child: const Icon(
                              size: 16.0,
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                          decrementIcon: Container(
                            height: 72.0,
                            width: 26.0,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(13.5)),
                                color: Color(0xFF897CFF)),
                            child: const Icon(
                              size: 16.0,
                              Icons.remove,
                              color: Colors.white,
                            ),
                          ),
                          onCountChange: (count) {},
                          onIncrement: (count) {},
                          onDecrement: (count) {},
                        ),
                        Icon(CupertinoIcons.clock, size: 22.0),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            '5 days',
                            style: TextStyle(
                                fontFamily: 'san-sarif', fontSize: 18.0),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      'Discription',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20.0,
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      texts,
                      style: TextStyle(
                          height: 1.6,
                          fontSize: 16.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(height: 15.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                          text: TextSpan(
                              children: [
                            TextSpan(
                              text: '\$400',
                              style: TextStyle(
                                  fontSize: 22.0,
                                  color: Color(0xFF6A62B7),
                                  fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: '/Package',
                              style: TextStyle(
                                  height: 1.6,
                                  fontSize: 14.0,
                                  color: Color(0xFF6A62B7),
                                  fontWeight: FontWeight.bold),
                            ),
                          ]),
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50.0)),
                              backgroundColor: Color(0xFF6A62B7)),
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
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
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
