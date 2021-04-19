import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:precious_plants/constants.dart';
import 'package:precious_plants/models/PlantBox.dart';
import 'package:precious_plants/details/components/body.dart';

//import 'package:shop_app/models/Product.dart';
class AboutScreen extends StatelessWidget {
  final PlantBox plantBox;

  const AboutScreen({Key key, this.plantBox}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: buildAppBar(context),
      body: Body(plantBox: plantBox,),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.green,
      elevation:0,
      leading: IconButton(
        icon: SvgPicture.asset(
          'assets/icons/back.svg',
          color: Colors.white,),
        onPressed: () =>Navigator.pop(context),
      ),
      actions: <Widget>[
        IconButton(icon: SvgPicture.asset('assets/icons/search.svg'),
        onPressed: () {},
        ),
        IconButton(icon: SvgPicture.asset('assets/icons/cart.svg'),
          onPressed: () {},
        ),
        SizedBox(width: kDefaultPaddin / 2)
      ]
    );
  }
}
