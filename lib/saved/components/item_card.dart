import 'package:flutter/material.dart';
import 'package:precious_plants/models/PlantBox.dart';

import '../../../constants.dart';

class ItemCard extends StatelessWidget {
  final PlantBox plantBox;
  final Function press;
  const ItemCard({
    Key key,
    this.plantBox,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(kDefaultPaddin),
              // For  demo we use fixed height  and width
              // Now we dont need them
              // height: 180,
              // width: 160,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Hero(
                tag: "${plantBox.id}",
                child: Image.asset(plantBox.image),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
            child: Text(
              // products is out demo list
              plantBox.title,
              style: TextStyle(color: kTextLightColor),
            ),
          ),
          Text(
            "water ${plantBox.water} times weekly",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}