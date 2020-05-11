import 'package:aoura/shared/widgets/progress_indicator.dart';
import 'package:flutter/material.dart';

import 'dart:math' as math;

class ProjectCardTile extends StatelessWidget {
  final List title = [
    "Eatini mobile-app",
    "bizfrontal_v1",
    "Techgen innovations",
  ];

  final List colors = [Color(0xffE4E4E4), Color(0xff2F3034), Color(0xff6CD090)];

  @override
  Widget build(BuildContext context) {
    var rng = new math.Random.secure();
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0, bottom: 8),
        child: ListTile(
          leading: Container(
            child: Center(
              child: Text(
                title[rng.nextInt(3)].split(" ")[0][0].toString().toUpperCase(),
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 24),
              ),
            ),
            decoration: BoxDecoration(
                borderRadius: new BorderRadius.circular(8.0),
                color: colors[rng.nextInt(3)]),
            width: 56.0,
          ),
          title: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title[rng.nextInt(3)],
                style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                    fontFamily: "SF"),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 4,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "${rng.nextInt(40)} tasks",
                    style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 13,
                        fontWeight: FontWeight.bold),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    "${rng.nextInt(20)} members",
                    style: TextStyle(
                      fontSize: 13,
                      color: Color(0xffB9B9B9),
                      fontWeight: FontWeight.w700
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              FAProgressBar(
                size: 4,
                currentValue: 75,
                progressColor: Color(0xff6DD28E),
                backgroundColor: Color(0xffF0F0F0),
              ),
              SizedBox(
                height: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}