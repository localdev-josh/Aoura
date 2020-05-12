import 'package:aoura/shared/styleguide/responsive_ui/size_config.dart';
import 'package:aoura/shared/widgets/progress_indicator.dart';
import 'package:flutter/material.dart';

import 'dart:math' as math;

class ProjectDetailCard extends StatelessWidget {
  final List title = [
    "Eatini mobile-app",
    "bizfrontal_v1",
    "Techgen innovations",
  ];

  final List colors = [Colors.blue, Colors.black, Colors.green];

  @override
  Widget build(BuildContext context) {
    var rng = new math.Random.secure();
    return Container(
        margin: EdgeInsets.symmetric(
            horizontal: 6.11 * SizeConfig.widthMultiplier,
            vertical: 1.41 * SizeConfig.heightMultiplier),
        decoration: BoxDecoration(
            borderRadius:
                BorderRadius.circular(0.94 * SizeConfig.heightMultiplier),
            color: Colors.white),
        child: Container(
          height: 29.38 * SizeConfig.heightMultiplier,
          padding: EdgeInsets.symmetric(
              vertical: 3.17 * SizeConfig.heightMultiplier),
          child: Stack(
            children: <Widget>[
              Positioned(
                left: 0,
                top: 0,
                child: FractionallySizedBox(
                  child: Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 6.87 * SizeConfig.widthMultiplier,
                    ),
                    child: Center(
                      child: Text(
                        title[rng.nextInt(3)]
                            .split(" ")[0][0]
                            .toString()
                            .toUpperCase(),
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 2.82 * SizeConfig.textMultiplier),
                      ),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: new BorderRadius.circular(
                            0.94 * SizeConfig.heightMultiplier),
                        color: colors[rng.nextInt(3)]),
                    width: 17.81 * SizeConfig.widthMultiplier,
                    height: 8.2256 * SizeConfig.heightMultiplier,
                  ),
                ),
              ),
              Positioned(
                top: 1.175 * SizeConfig.heightMultiplier,
                left: 30.53 * SizeConfig.widthMultiplier,
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        title[rng.nextInt(3)],
                        style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w700,
                            fontSize: 2.35 * SizeConfig.textMultiplier,
                            fontFamily: "SF"),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        height: 0.59 * SizeConfig.heightMultiplier,
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            "${rng.nextInt(40)} tasks",
                            style: TextStyle(
                                color: Color(0xff2958DA),
                                fontSize: 2.115 * SizeConfig.textMultiplier,
                                fontWeight: FontWeight.bold),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Container(
                            width: 1.0,
                            color: Color(0xffC8C8C8),
                            height: 1.53 * SizeConfig.heightMultiplier,
                            margin: EdgeInsets.symmetric(horizontal: 10),
                          ),
                          Text(
                            "${rng.nextInt(30)} sep 19",
                            style: TextStyle(
                              fontSize: 2.115 * SizeConfig.textMultiplier,
                              fontWeight: FontWeight.bold,
                              color: Color(0xffFF8586),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 1.76 * SizeConfig.heightMultiplier,
                      ),
                      Text(
                        "Members",
                        style: TextStyle(
                          fontSize: 1.88 * SizeConfig.heightMultiplier,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffC2C1C1),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            top: 0.82 * SizeConfig.heightMultiplier),
                        child: Row(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: new BorderRadius.circular(
                                      0.94 * SizeConfig.heightMultiplier),
                                  image: DecorationImage(
                                      image: AssetImage("assets/user.jpeg"))),
                              width: 7.63 * SizeConfig.widthMultiplier,
                              height: 3.525 * SizeConfig.heightMultiplier,
                            ),
                            Container(
                              margin: EdgeInsets.all(
                                  0.94 * SizeConfig.heightMultiplier),
                              decoration: BoxDecoration(
                                  borderRadius: new BorderRadius.circular(
                                      0.94 * SizeConfig.heightMultiplier),
                                  image: DecorationImage(
                                      image: AssetImage("assets/user.jpeg"))),
                              width: 7.63 * SizeConfig.widthMultiplier,
                              height: 3.525 * SizeConfig.heightMultiplier,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 1.645 * SizeConfig.heightMultiplier,
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            bottom: 1.645 * SizeConfig.heightMultiplier),
                        width: 50.89 * SizeConfig.widthMultiplier,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "Progress",
                              style: TextStyle(
                                  color: Color(0xffAEAEAE),
                                  fontSize: 1.76 * SizeConfig.textMultiplier,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "75%",
                              style: TextStyle(
                                color: Color(0xff7FCE9F),
                                fontWeight: FontWeight.bold,
                                fontSize: 1.88 * SizeConfig.textMultiplier,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 50.89 * SizeConfig.widthMultiplier,
                        height: 6,
                        child: FAProgressBar(
                          size: 4,
                          currentValue: 75,
                          progressColor: Color(0xff6DD28E),
                          backgroundColor: Color(0xffF0F0F0),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
