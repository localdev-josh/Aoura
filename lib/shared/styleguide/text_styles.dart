import 'package:flutter/material.dart';
import 'package:aoura/shared/styleguide/colors.dart';
import 'package:aoura/shared/styleguide/responsive_ui/size_config.dart';


final TextStyle filterTextStyle = TextStyle(
    color: Colors.black,
//  fontSize: 1.64 * SizeConfig.textMultiplier,
//    fontFamily: "poppins",
    fontWeight: FontWeight.w700
);


final TextStyle menuTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 1.64 * SizeConfig.textMultiplier,
    fontFamily: "poppins"
);

final TextStyle selectedMenuTextStyle = TextStyle(
  color: Color(0XFFC4727E),
  fontSize: 1.64 * SizeConfig.textMultiplier,
  fontFamily: "poppins"
);

final Color selectedIconStyle = Color(0XFFF76C4B);

final Color iconStyle = Color(0XFFFFFFFF);

final TextStyle menuCenterStyle = TextStyle(
  color: Color(0XFFCBCBCD),
  fontSize: 1.7 * SizeConfig.textMultiplier,
  fontFamily: 'Poppins',
  letterSpacing: 2.0
);

final TextStyle goldcoinGreyStyle = TextStyle(
    color: Color(0xff938A8A),
    fontSize: 15.0,
    fontWeight: FontWeight.normal,
    fontFamily: "Product Sans");

final TextStyle goldCoinWhiteStyle = TextStyle(
    color: Colors.white,
    fontSize: 15.0,
    fontWeight: FontWeight.normal,
    fontFamily: "Product Sans");

final TextStyle greyStyle =
TextStyle(fontSize: 38.0, color: Colors.grey, fontFamily: "Product Sans");
final TextStyle whiteStyle =
TextStyle(fontSize: 38.0, color: Colors.white, fontFamily: "Product Sans");

final TextStyle boldStyle = TextStyle(
  fontSize: 48.0,
  color: Colors.black,
  fontFamily: "Product Sans",
  fontWeight: FontWeight.bold,
);

final TextStyle descriptionGreyStyle = TextStyle(
  color: Colors.grey,
  fontSize: 18.0,
  fontFamily: "Poppins",
);

final TextStyle descriptionWhiteStyle = TextStyle(
  color: Colors.white,
  fontSize: 18.0,
  fontFamily: "Poppins",
);