import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:precious_plants/constant/data_json.dart';
import 'package:precious_plants/pages/about.dart';
import 'package:precious_plants/theme/colors.dart';

class SavedPage extends StatefulWidget {
  @override
  _savedPage createState() => _savedPage();
}

class _savedPage extends State<SavedPage> {
  int activeMenu = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
    );
  }
  Widget getBody(){
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
                top: 20,
                left: 20,right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Saved",style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400
                ),),
                Row(
                  children: <Widget>[
                    Icon(LineIcons.search),
                    SizedBox(width: 15,),
                    Icon(LineIcons.bookmark)
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 20,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(right: 20,left: 20),
              child: Row(children: List.generate(menuItems.length, (index){
                return Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: InkWell(
                    onTap: (){
                      setState(() {
                        activeMenu = index;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border(bottom: BorderSide(color: activeMenu == index ? primary : Colors.transparent,width: 2))
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(menuItems[index],style: TextStyle(
                            fontSize: 17
                        ),),
                      ),
                    ),
                  ),
                );
              })
              ),
            ),
          ),
          SizedBox(height: 30,),
          Wrap(
            children: List.generate(dataItems.length, (index){
              return InkWell(
                onTap: (){
                  /*"id" : 1,
                  "scientificName" : "Epipremnum aureum",
                  "name": "Pothos",
                  "watering frequency" : "1 time per week",
                  "sunlight" : "indirect light",
                  "soil" : "well-draining potting soil",
                  "img" : "https://www.almanac.com/sites/default/files/image_nodes/pothos_usmee_ss-crop.jpg",
                  "height" : 20,*/
                  Navigator.push(context, MaterialPageRoute(builder: (_) => ProductDetailPage(id: dataItems[index]['id'].toString(),
                    name: dataItems[index]['name'],
                    scientificName: dataItems[index]['scientificName'],
                    img: dataItems[index]['img'],
                    height: dataItems[index]['height'].toString(),
                    //promotionPrice: dataItems[index]['promotionPrice'].toString(),
                    watering: dataItems[index]['watering'],
                    sunlight: dataItems[index]['sunlight'],
                    soil: dataItems[index]['soil'],
                  )));
                },
                child: Card(
                    elevation: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Hero(
                          tag: dataItems[index]['id'].toString(),
                          child: Container(
                            width: (size.width-16)/2,
                            height: (size.width-16)/2,
                            decoration: BoxDecoration(
                                image: DecorationImage(image: NetworkImage(dataItems[index]['img']),fit: BoxFit.cover)
                            ),
                          ),
                        ),
                        SizedBox(height: 15,),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(dataItems[index]['name'],style: TextStyle(
                              fontSize: 16
                          ),),
                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(dataItems[index]['height'].toString()+" ft",style: TextStyle(
                              fontSize: 16
                          ),),
                        ),
                        SizedBox(height: 10,),
                      ],
                    )
                ),
              );
            }),
          )
        ],
      ),
    );
  }
}