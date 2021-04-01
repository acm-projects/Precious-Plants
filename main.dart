//Search bar at top

import 'dart:ui';
import "aboutPlant.dart";
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class MainPage extends StatefulWidget {
  _MainPageState createState() => _MainPageState();

}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[Container(
          height: size.height * 0.45,
          decoration: BoxDecoration(color: Color(0xDC2F7D32)),
        ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(12, 25, 30, 16),
                  child: Text(
                    "Precious Plants",
                    style: Theme.of(context)
                        .textTheme
                        .display1
                        .copyWith(
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 30),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(29.5),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search",
                        border: InputBorder.none,
                        icon: Icon(
                          Icons.search,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: 0.85,
                      mainAxisSpacing: 20,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              onTap:() {
                                Navigator.push(
                                context,
                                MaterialPageRoute(
                                builder: (context) => AboutPage()),
                                );
                              },
                              child: PlantCard(
                                onTap:AboutPage(),
                                title: "Plant 1",
                              //  svgSrc: "assets/moneyPlant.jpg",
                              ),
                            ),
                          ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap:() {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AboutPage()),
                              );
                            },
                            child: PlantCard(
                                title: "Plant 2"
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap:() {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AboutPage()),
                              );
                            },
                            child: PlantCard(
                                title: "Plant 3"
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap:() {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AboutPage()),
                              );
                            },
                            child: PlantCard(
                                title: "Plant 4"
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap:() {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AboutPage()),
                              );
                            },
                            child: PlantCard(
                                title: "Plant 5"
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: PlantCard(
                              title: "Add Plant"
                          ),
                        ),
                      ],
                    )
                ),
              ],
          ),
            ),
          )
        ],
      ),
    );
  }

}

class PlantCard extends StatelessWidget {
  final String svgSrc;
  final String title;
  const PlantCard({
    Key key, this.svgSrc, this.title, AboutPage onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
       decoration: BoxDecoration(
         color: Colors.white,
         borderRadius: BorderRadius.circular(13),
         boxShadow: [BoxShadow(
           offset: Offset(0, 17),
           blurRadius: 17,
           spreadRadius: -23,
           color: Colors.grey[500],
         ),
         ],
       ),
       child: Column(
         children: <Widget>[
           Spacer(),
         //  SvgPicture.asset(svgSrc),
           Spacer(),
           Text(
             title,
             textAlign: TextAlign.center,
             style: Theme.of(context)
               .textTheme
               .title
               .copyWith(fontSize: 20)
           ),
         ],
       ),
     );
  }
}


