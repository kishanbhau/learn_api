import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  double? number;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              child: Image(
                image: AssetImage('assets/Avatar.jpg'),
              ),
            ),
          )
        ],
        title: Text('Discover'),
        centerTitle: true,
        leading: const Image(image: AssetImage('assets/fi_menu.png')),
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 27.0,
          fontFamily: 'Merriweather',
        ),
      ),
      body: SizedBox(
        height: 1000.0,
        child: Column(
          children: [
            Container(
              height: 60.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 29.0),
                    child: Container(
                      padding: EdgeInsets.zero,
                      child: Center(child: Text('Popular')),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 29.0),
                    child: Container(
                      padding: EdgeInsets.zero,
                      child: Center(child: Text('Featured')),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 29.0),
                    child: Container(
                      padding: EdgeInsets.zero,
                      child: Center(child: Text('Most Visited')),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 29.0),
                    child: Container(
                      padding: EdgeInsets.zero,
                      child: Center(child: Text('Europe')),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 29.0, right: 29.0),
                    child: Container(
                      padding: EdgeInsets.zero,
                      child: Center(child: Text('Asia')),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 14.0),
            Container(
              height: 253.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(10, (index) => Padding(
                  padding: const EdgeInsets.only(left: 29.0),
                  child: Stack(children: [
                    Container(
                      width: 335,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(19.0),
                        color: Color(0xFFD0CBFF),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 81.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(19.0),
                          color: Colors.black26,
                        ),
                        width: 335,

                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 22.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Padding(
                                      padding:  EdgeInsets.only(
                                          top: 5.0),
                                      child: Text(
                                        'Northam Mountain',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        RatingBar.builder(
                                          initialRating: 3,
                                          itemSize: 16.0,
                                          minRating: 1,
                                          allowHalfRating: true,
                                          itemCount: 5,
                                          itemPadding:
                                          EdgeInsets.symmetric(vertical: 10.0),
                                          itemBuilder: (context, _) => const Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                          ),
                                          onRatingUpdate: (value) {
                                            setState(() {
                                              number=value;
                                            });
                                          },
                                        ),
                                        if (number!=null)
                                          Text(number.toString(),style: TextStyle(fontFamily: 'san-sarif',fontWeight: FontWeight.w500,fontSize: 13),)
                                      ],
                                    ),

                                  ],
                                ),
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                child: IconButton(onPressed: (){},icon:Icon(Icons.favorite,color: Color(0xFFFF54A0)),
                                ),
                              ),

                            ],
                          ),
                        ),
                      ),
                    )
                  ]),
                ),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
