import 'package:flutter/material.dart';
import 'package:precious_plants/constants.dart';
import 'package:precious_plants/models/PlantBox.dart';
import 'package:precious_plants/details/about_plant2.dart';

import 'categories.dart';
import 'item_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text(
            "Saved",
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: GridView.builder(
                itemCount: products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: kDefaultPaddin,
                  crossAxisSpacing: kDefaultPaddin,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) =>
                    ItemCard(plantBox: products[index], press: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>AboutScreen(
                              plantBox: products[index],))),
                )),
          ),
        ),
      ],
    );
  }
}