import 'package:flutter/material.dart';
import 'package:precious_plants/models/PlantBox.dart';
import 'package:precious_plants/constants.dart';


class PlantTitleWithImage extends StatelessWidget {
  const PlantTitleWithImage({
    Key key,
    @required this.plantBox,
  }) : super(key: key);

  final PlantBox plantBox;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            plantBox.title,
            style: TextStyle(color: Colors.white),
          ),
          Text(
            plantBox.title,
            style: Theme.of(context)
                .textTheme
                .headline4
                .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: kDefaultPaddin),
          Row(
            children: <Widget>[
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: "Water\n"),
                    TextSpan(
                      text: "${plantBox.water} times weekly",
                      style: Theme.of(context).textTheme.headline4.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(width: kDefaultPaddin),
              Expanded(
                child: Hero(
                  tag: "${plantBox.id}",
                  child: Image.asset(
                    plantBox.image,
                    fit: BoxFit.fill,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}