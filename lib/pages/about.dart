import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:precious_plants/theme/colors.dart';

class ProductDetailPage extends StatefulWidget {
  /*"id" : 1,
                  "scientificName" : "Epipremnum aureum",
                  "name": "Pothos",
                  "watering frequency" : "1 time per week",
                  "sunlight" : "indirect light",
                  "soil" : "well-draining potting soil",
                  "img" : "https://www.almanac.com/sites/default/files/image_nodes/pothos_usmee_ss-crop.jpg",
                  "height" : 20,*/
  final String id;
  final String name;
  final String scientificName;
  final String img;
  final String watering;
  final String sunlight;
  final String soil;
  final String height;
  //final List size;
  //final List color;

  const ProductDetailPage({Key key, this.id, this.name, this.scientificName, this.img, this.height, this.watering, this.sunlight, this.soil}) : super(key: key);
  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  int activeSize = 0;
  int activeColor = 0;
  String activeImg = '';
  int qty = 1;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      activeImg = widget.img;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
      bottomSheet: getBottom(),
    );
  }
  Widget getBottom(){
    var size = MediaQuery.of(context).size;
    return Container(
      height: 80,
      width: size.width,
      child: FlatButton(
          color: primary,
          onPressed: (){
            // your add cart here
          }, child: Text("SAVE",style: TextStyle(
          fontSize: 18,
          color: white
      ),)),
    );
  }
  Widget getBody(){
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 60),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 20),
              child: InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Icon(Icons.arrow_back_ios)),
              ),
            ),
            SizedBox(height: 10,),
            Card(
              elevation: 2,
              child: Hero(
                tag: widget.id.toString(),
                child: Container(
                  height: 400,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage(activeImg),fit: BoxFit.cover)
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Name :",style: TextStyle(
                      fontSize: 16,
                      height: 1.5
                  ),),
                  SizedBox(width: 20,),
                  Flexible(
                    child: Text(widget.name,style: TextStyle(
                        fontSize: 16,
                        height: 1.5
                    ),),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Scientific Name:",style: TextStyle(
                      fontSize: 16,
                      height: 1.5
                  ),),
                  SizedBox(width: 20,),
                  Flexible(
                    child: Text(widget.scientificName,style: TextStyle(
                        fontSize: 16,
                        height: 1.5
                    ),),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Height :",style: TextStyle(
                      fontSize: 16,
                      height: 1.5
                  ),),
                  SizedBox(width: 20,),
                  Flexible(
                      child: Row(children: <Widget>[
                        Text(widget.height+" ft",style: TextStyle(
                            fontSize: 16,height: 1.5
                        ),),
                        SizedBox(width: 20,),
                      ],)
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),

            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Sunlight :",style: TextStyle(
                      fontSize: 16,
                      height: 1.5
                  ),),
                  SizedBox(width: 20,),
                  Flexible(
                    child: Text(widget.sunlight,style: TextStyle(
                        fontSize: 16,
                        height: 1.5
                    ),),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Watering :",style: TextStyle(
                      fontSize: 16,
                      height: 1.5
                  ),),
                  SizedBox(width: 20,),
                  Flexible(
                    child: Text(widget.watering,style: TextStyle(
                        fontSize: 16,
                        height: 1.5
                    ),),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Soil :",style: TextStyle(
                      fontSize: 16,
                      height: 1.5
                  ),),
                  SizedBox(width: 20,),
                  Flexible(
                    child: Text(widget.soil,style: TextStyle(
                        fontSize: 16,
                        height: 1.5
                    ),),
                  ),
                ],
              ),
            ),
            /*Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Size :",style: TextStyle(
                      fontSize: 16,
                      height: 1.5
                  ),),
                  SizedBox(width: 20,),
                  Flexible(
                      child: Wrap(
                          children: List.generate(widget.size.length, (index){
                            return Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: InkWell(
                                onTap: (){
                                  setState(() {
                                    activeSize = widget.size[index]['id'];
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        width: 2,
                                        color: activeSize == widget.size[index]['id'] ? primary : Colors.transparent,

                                      ),
                                      borderRadius: BorderRadius.circular(5)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 12,bottom: 12,right: 15,left: 15),
                                    child: Text(widget.size[index]['value'],style: TextStyle(
                                        fontSize: 16,
                                        height: 1.5
                                    ),),
                                  ),
                                ),
                              ),
                            );
                          })
                      )
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Color :",style: TextStyle(
                      fontSize: 16,
                      height: 1.5
                  ),),
                  SizedBox(width: 20,),
                  Flexible(
                      child: Wrap(
                          children: List.generate(widget.color.length, (index){
                            return Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: InkWell(
                                onTap: (){
                                  setState(() {
                                    activeColor = widget.color[index]['id'];
                                    activeImg = widget.color[index]['value'];
                                  });
                                },
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(image: NetworkImage(widget.color[index]['value']),fit: BoxFit.cover),
                                      border: Border.all(
                                        width: 2,
                                        color: activeColor == widget.color[index]['id'] ? primary : Colors.transparent,

                                      ),
                                      borderRadius: BorderRadius.circular(5)
                                  ),

                                ),
                              ),
                            );
                          })
                      )
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Qty :",style: TextStyle(
                      fontSize: 16,
                      height: 1.5
                  ),),
                  SizedBox(width: 20,),
                  Flexible(
                      child: Row(
                        children: <Widget>[
                          InkWell(
                            onTap: (){
                              if(qty > 1){
                                setState(() {
                                  qty = --qty;
                                });
                              }
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: black.withOpacity(0.5)
                                  )
                              ),
                              width: 35,
                              height: 35,
                              child: Icon(LineIcons.minus,color: black.withOpacity(0.5),),
                            ),
                          ),
                          SizedBox(width: 25,),
                          Text(qty.toString(),style: TextStyle(
                              fontSize: 16
                          ),),
                          SizedBox(width: 25,),
                          InkWell(
                            onTap: (){
                              setState(() {
                                qty = ++qty;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: black.withOpacity(0.5)
                                  )
                              ),
                              width: 35,
                              height: 35,
                              child: Icon(LineIcons.plus,color: black.withOpacity(0.5),),
                            ),
                          )
                        ],
                      )
                  ),
                ],
              ),
            ),*/
          ],
        ),
      ),
    );
  }
}