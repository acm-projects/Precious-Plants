
import 'package:flutter/material.dart';
import 'package:precious_plants/models/PlantBox.dart';

import '../../../constants.dart';

class Description extends StatelessWidget {
  const Description({
    Key key,
    @required this.plantBox,
  }) : super(key: key);

  final PlantBox plantBox;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: Text(
        plantBox.description,
        style: TextStyle(height: 1.5),
      ),
    );
  }
}