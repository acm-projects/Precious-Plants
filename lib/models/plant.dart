import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Plant {
  String plantName;
  String scientificName;
  String waterFreq;
  String sunlight;
  String height;
  String soil;

  Plant({
    this.plantName,
    this.scientificName,
    this.waterFreq,
    this.sunlight,
    this.height,
    this.soil,
  });

 // String getPlantName() =>  this.plantName;


  factory Plant.fromJson(Map<String, dynamic> data) => new Plant(
    //id: data["id"],
    plantName: data["plant_name"],
    scientificName: data["scientific_name"],
    waterFreq: data["water_freq"],
    sunlight: data["sunlight"],
    height: data["height"],
    soil: data["soil"],

    //email: data["email"],
  );

  //Plant.fromMap(Map<String, Object> first);

  Map<String, dynamic> toJson() => {
    //"id": id,
    "plant_name": plantName,
    "scientific_name": scientificName,
    "water_freq": waterFreq,
    "sunlight": sunlight,
    "height": height,
    "soil": soil,
  };

  Plant.fromMap(Map<String, dynamic> map) {
    this.plantName = map['plant_name'];
    this.scientificName = map['scientific_name'];
    this.waterFreq = map['water_freq'];
    this.sunlight = map['sunlight'];
    this.height = map['height'];
    this.soil = map['soil'];
  }
  Plant fromMap(Map<String, dynamic> map) {
    return Plant.fromMap(map);
  }


}