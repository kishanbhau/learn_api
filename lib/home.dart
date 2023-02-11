import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:learn_api/PlaceData.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<PlaceData> placedata = [
    PlaceData(name: "Northern Mountain", image: "assets/winter.jpg", rating: 0.0),
    PlaceData(name: "Himalya", image: "assets/hima.jpg", rating: 0.0),
    PlaceData(name: "Ujjain", image: "assets/ujjain.jpg", rating: 0.0),
    PlaceData(name: "Jaipur", image: "assets/Jaipur.jpg", rating: 0.0),
    PlaceData(name: "Kerla", image: "assets/karla.jpg", rating: 0.0)
  ];

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

      body: SingleChildScrollView(
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
                children: List.generate(
                  placedata.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(left: 29.0),
                    child: Stack(children: [

                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(19.0)),
                        child: Container(
                          width: 335,
                          height: 253,
                          child: Image(
                            image: AssetImage(placedata[index].image ?? "No image"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 81.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(19.0),
                            color: Colors.black38,
                          ),
                          width: 335,
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 22.0),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(top: 5.0),
                                        child: Text(
                                          placedata[index].name ?? "",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          RatingBar.builder(
                                            initialRating: placedata[index]
                                                    .rating
                                                    ?.toDouble() ??
                                                0.0,
                                            itemSize: 16.0,
                                            minRating: 1,
                                            allowHalfRating: true,
                                            itemCount: 5,
                                            itemPadding: EdgeInsets.symmetric(
                                                vertical: 10.0),
                                            itemBuilder: (context, _) =>
                                                const Icon(
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
                                    ],
                                  ),
                                ),
                                CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.favorite,
                                        color: Color(0xFFFF54A0)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ]),
                  ),
                ),
              ),
            ),
            SizedBox(height: 54.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Text('Recommended',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 18.0)),
                  ),
                  Text('View All', style: TextStyle(fontSize: 14.0))
                ],
              ),
            ),
            SizedBox(
              height: 32.0,
            ),
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: placedata.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 4.0,
                  mainAxisSpacing: 4.0),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 13.0,top: 27.0),
                  child: Stack(children: [
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(19.0)),
                      child: Container(
                        width: 335,
                        height: 253,
                        child: Image(
                          image: AssetImage(placedata[index].image ?? "No image"),
                          fit: BoxFit.cover,
                        ),
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
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 8.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 5.0),
                                      child: Row(
                                        children: [
                                          Text(
                                            placedata[index].name ?? "",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12.0,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        RatingBar.builder(
                                          initialRating: placedata[index]
                                                  .rating
                                                  ?.toDouble() ??
                                              0.0,
                                          itemSize: 12.0,
                                          minRating: 1,
                                          allowHalfRating: true,
                                          itemCount: 5,
                                          itemPadding: EdgeInsets.symmetric(
                                              vertical: 10.0),
                                          itemBuilder: (context, _) =>
                                              const Icon(
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
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 65, left: 119),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 14.0,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.favorite,
                              color: Color(0xFFFF54A0), size: 12.0),
                        ),
                      ),
                    ),
                  ]),
                );
              },
            )
          ],
        ),
      ),
      bottomNavigationBar: FloatingNavbar(
        backgroundColor: Colors.white,
        elevation: 14.0,
        onTap: (int val) {

        },
        currentIndex: 0,
        padding: EdgeInsets.symmetric(vertical: 15.0,horizontal: 13),
        borderRadius: 44.0,
        selectedBackgroundColor: null,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Color(0xFF6A62B7),
        iconSize: 30.0,
        items: [
          FloatingNavbarItem(icon: Icons.home_filled,),
          FloatingNavbarItem(icon: Icons.calendar_month_rounded, ),
          FloatingNavbarItem(icon: Icons.search_rounded, ),
          FloatingNavbarItem(icon: Icons.person_2_rounded, ),
        ],
      ),

    );
  }
}
