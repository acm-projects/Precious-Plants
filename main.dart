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
                  padding: const EdgeInsets.fromLTRB(55, 25, 30, 16),

                  child:Text(
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
                  padding: EdgeInsets.fromLTRB(150, 12, 150, 20),
                  child: IconButton(
                    icon: Icon(Icons.search,color: Colors.white, size: 30.0, ),
                    onPressed: (){
                      showSearch(context: context, delegate: DataSearch());
                    },
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
                                //body: Image.asset("assets/images/moneyPlant.jpg"),
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

class DataSearch extends SearchDelegate<String>{
  final plants = [
    "Pothos",
    "Tomatoes",
   "Rosemary",
    "Snake Plant",
    "Sunflower",
    "Lavender",
    "Mint",
    "Jade Plant",
    "Aloe Vera",
    "Paddle Plant",
    "Lady Palm",
    "Money Tree"
  ];

  final recentPlants = [
    "Money Tree",
    "Aloe Vera",
    "Sunflower",
    "Mint"
  ];
  @override
  List<Widget> buildActions(BuildContext context) {
    // actions for app bar
    return [
      IconButton(icon: Icon(Icons.clear), onPressed: (){})
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // leading icon on the left of the app bar
    return IconButton(
        icon: AnimatedIcon(
          icon:AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ),
        onPressed: (){});
  }

  @override
  Widget buildResults(BuildContext context) {
    // show some result based on selection
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // show when someone searches for something
    final suggestionList = query.isEmpty?recentPlants:plants;
    
    return ListView.builder(itemBuilder: (context, index)=>ListTile(
      leading: Icon(Icons.autorenew),
      title: Text(suggestionList[index]),
    ),
      itemCount:suggestionList.length,
    );
  }
  
}

class PlantCard extends StatelessWidget {
  final String title;
  const PlantCard({
    Key key, this.title, AboutPage onTap, Image body,
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


