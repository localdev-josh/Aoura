import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:aoura/shared/styleguide/responsive_ui/size_config.dart';

class CustomBottomNav extends StatefulWidget {
  final Function updateIndex;

  CustomBottomNav(this.updateIndex);

  @override
  State<StatefulWidget> createState() {
    return _CustomBottomNav();
  }
}

class _CustomBottomNav extends State<CustomBottomNav> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    double myHeight = 8.23 * SizeConfig.heightMultiplier;
    return Material(
      elevation: 20.0,
      color: Color(0xff2F3034),
      shape: new RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(8.0),
      ),
      child: Container(
          height: myHeight,
          width: MediaQuery.of(context).size.width / 1.14,
          padding: EdgeInsets.only(
              right: 2.54 * SizeConfig.widthMultiplier,
              left: 5.09 * SizeConfig.widthMultiplier),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.wrap_text,
                      size: 2.71 * SizeConfig.textMultiplier,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              Container(
                width: 1.0,
                color: Color(0xff464749),
                margin: EdgeInsets.only(
                    left: 5.09 * SizeConfig.widthMultiplier,
                    right: 0.25 * SizeConfig.widthMultiplier),
                height: 2.94 * SizeConfig.heightMultiplier,
              ),
              Expanded(
                child: Container(
                  child: TabBar(
                    tabs: [
                      Tab(
                        icon: Icon(
                          FeatherIcons.home,
                          size: 2.235 * SizeConfig.textMultiplier,
                        ),
                      ),
                      Tab(
                        icon: Icon(
                          FeatherIcons.list,
                          size: 2.235 * SizeConfig.textMultiplier,
                        ),
                      ),
                      Tab(
                        icon: Icon(
                          FeatherIcons.search,
                          size: 2.235 * SizeConfig.textMultiplier,
                        ),
                      ),
                    ],
                    onTap: (int index) {
                      setState(() {
                        _selectedIndex = index;
                      });

                      widget.updateIndex(index);
                    },
                    indicatorColor: Colors.transparent,
                    indicatorSize: TabBarIndicatorSize.label,
                    labelColor: Color(0xffFF6668),
                    unselectedLabelColor: Colors.white,
                  ),
                ),
              ),
              Container(
                width: 13.74 * SizeConfig.widthMultiplier,
                height: 6 * SizeConfig.heightMultiplier,
                child: RaisedButton(
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(0.94 * SizeConfig.heightMultiplier),
                  ),
                  color: Color(0xff2D55DB),
                  child: Icon(
                    Icons.add,
                    size: 2.70 * SizeConfig.textMultiplier,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              )
            ],
          )),
    );
  }
}
