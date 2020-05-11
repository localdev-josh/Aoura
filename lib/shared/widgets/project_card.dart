import 'package:aoura/shared/widgets/progress_indicator.dart';
import 'package:flutter/material.dart';

import 'dart:math' as math;

class ProjectCard extends StatelessWidget {
  final List colors = [Color(0xffFF5B5A), Color(0xff2D55DB), Color(0xff6EC186)];

  @override
  Widget build(BuildContext context) {
    var rng = new math.Random.secure();
    return Padding(
      padding: EdgeInsets.only(top: 8.0, bottom: 8.0, right: 16),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 2.0,
        child: Container(
          decoration: BoxDecoration(
            color: colors[rng.nextInt(3)],
            borderRadius: BorderRadius.circular(15),
          ),
          padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 44),
          height: MediaQuery.of(context).size.height * 0.3,
          // width: 260,
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Branding Studio",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Poppins",
                          fontSize: 16,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 15,),
                      Text(
                        "Homepage\ndesign",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w700,
                          fontSize: 25,
                          letterSpacing: 0.3
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "43%",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w900),
                      ),
                      SizedBox(height: 12,),
                      FAProgressBar(
                        size: 4,
                        borderRadius: 2,
                        currentValue: 43,
                        progressColor: Colors.blueAccent,
                        backgroundColor: Color(0xff2D3331),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
