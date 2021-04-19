import 'package:flutter/material.dart';

//String plantName;
//   String scientificName;
//   String waterFreq;
//   String sunlight;
//   String height;
//   String soil;
class PlantBox {
  final String image, title, scititle, description;
  //final int price, size, id;
  final int height, id, water;
  //final Color color;
  PlantBox({
    this.id,
    this.water,
    this.scititle,
    this.image,
    this.title,
    this.height,
    this.description,
    //this.size,
    //this.color,
  });
}

List<PlantBox> products = [
  PlantBox(
      id: 1,
      title: "Pothos",
      scititle: "hi",
      water: 2,
      //price: 234,
      height: 40,
      description: dummyText,
      image: "assets/images/plant1.png"),
  PlantBox(
      id: 2,
      title: "Belt Bag",
      //price: 234,
      //size: 8,
      scititle: "hi",
      water: 2,
      description: dummyText,
      image: "assets/images/plant1.png"),
      //color: Color(0xFFD3A984)),
  PlantBox(
      id: 3,
      title: "Hang Top",
      //price: 234,
      //size: 10,
      scititle: "hi",
      water: 2,
      description: dummyText,
      image: "assets/images/plant1.png"),
      //color: Color(0xFF989493)),
  PlantBox(
      id: 4,
      title: "Old Fashion",
      //price: 234,
      //size: 11,
      scititle: "hi",
      water: 2,
      description: dummyText,
      image: "assets/images/plant1.png"),
      //color: Color(0xFFE6B398)),
  PlantBox(
      id: 5,
      title: "Office Code",
      //price: 234,
      //size: 12,
      scititle: "hi",
      water: 2,
      description: dummyText,
      image: "assets/images/plant1.png"),
      //color: Color(0xFFFB7883)),
  PlantBox(
    id: 6,
    title: "Office Code",
    //price: 234,
    //size: 12,
      scititle: "hi",
      water: 2,
    description: dummyText,
    image: "assets/images/plant1.png"),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";

