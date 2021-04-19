//Search bar at top

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class AboutPage extends StatefulWidget {
    _AboutPageState createState() => _AboutPageState();

}

class _AboutPageState extends State<AboutPage> {
    @override
    Widget build(BuildContext context) {
        var size = MediaQuery.of(context).size;
        return Scaffold(
            body: Stack(
                children: <Widget>[Container(
                    height: size.height * 0.45,
                    decoration: BoxDecoration(color: Color(0xFF4CAF50)),
                ),
                    SafeArea(
                        child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                    Padding(
                                        padding: const EdgeInsets.fromLTRB(12, 25, 30, 16),
                                        child: Text(
                                            "Money Plant",
                                            style: Theme.of(context)
                                                .textTheme
                                                .display1
                                                .copyWith(
                                                fontWeight: FontWeight.w700,
                                                color: Colors.white,
                                            ),
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
                                                    child: PlantCard(
                                                        title: "Watering Schedule",
                                                        body: "Weekly\n\nNext Watering:\nWed, March 10",
                                                    ),
                                                ),
                                                Padding(
                                                    padding: const EdgeInsets.all(8.0),
                                                    child: PlantCard(
                                                        title: "Light",
                                                        body: "Indirect lighting",
                                                    ),
                                                ),
                                                Padding(
                                                    padding: const EdgeInsets.all(8.0),
                                                    child: PlantCard(
                                                        title: "More Info...",
                                                        body: "Scientific name: Epipremnum aureum",
                                                    ),
                                                ),
                                                Padding(
                                                    padding: const EdgeInsets.all(8.0),
                                                    child: PlantCard(
                                                        title: "Progress",
                                                        body: "Strong stems, needs trimming",
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

class PlantCard extends StatelessWidget {
    final String svgSrc;
    final String title;
    final String body;
    const PlantCard({
        Key key, this.svgSrc, this.title, this.body,
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
                    //SvgPicture.asset(svgSrc),
                    Text(
                        title,
                        textAlign: TextAlign.start,
                        style: Theme.of(context)
                            .textTheme
                            .title
                            .copyWith(fontSize: 20)
                    ),
                    Text(
                        body,
                        textAlign: TextAlign.start,
                        style: Theme.of(context)
                            .textTheme
                            .title
                            .copyWith(fontSize: 15)
                    ),
                ],
            ),
        );
    }
}