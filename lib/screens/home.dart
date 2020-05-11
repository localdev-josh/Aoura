import 'package:flutter/material.dart';
import 'package:aoura/screens/dashboad.dart';
import 'package:aoura/screens/projects.dart';
import 'package:aoura/shared/styleguide/responsive_ui/size_config.dart';
import 'package:aoura/shared/widgets/bottom_nav.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  int selectedIndex = 0;

  updateIndex(index) {
    print(index);
    setState(() {
      selectedIndex = index;
    });
  }

  Widget accountTab() {
    return Container(
      padding: EdgeInsets.only(top: 32, left: 8.0, right: 6.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //AppBar ,
      body: DefaultTabController(
          initialIndex: 0,
          length: 3,
          child: Scaffold(
              //AppBar ,
              body: SafeArea(
            child: Stack(
              children: <Widget>[
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: 60,
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(
                        vertical: 3.25 * SizeConfig.heightMultiplier,
                        horizontal: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            new Text(
                              selectedIndex == 0 ? 'Dashboard' : 'Projects',
                              style: new TextStyle(
                                  color: Color(0xff303135),
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.3,
                                  fontSize: 23.0),
                            ),
                            new Text(
                              'CreoTeam',
                              style: new TextStyle(
                                  color: Color(0xffB0B0B0), fontSize: 16.0, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        ClipRRect(
                          borderRadius: new BorderRadius.circular(8.0),
                          child: Image.asset(
                            "assets/user.jpeg",
                            width: 50.0,
                            height: 50.0,
                          ),
                        ),
                      ],
                    )),
                Container(
                  margin: EdgeInsets.only(
                      top: 15.35 * SizeConfig.heightMultiplier),
                  child: TabBarView(physics: PageScrollPhysics(), children: [
                    Dashboard(),
                    Projects(),
                    accountTab(),
                  ]),
                ),
                Container(
                    alignment: Alignment.bottomCenter,
                    margin: EdgeInsets.symmetric(
                        vertical: 2.35 * SizeConfig.heightMultiplier),
                    child: CustomBottomNav(updateIndex))
              ],
            ),
          ))),
    );
  }
}
