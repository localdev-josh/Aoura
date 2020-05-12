import 'package:aoura/shared/styleguide/responsive_ui/size_config.dart';
import 'package:flutter/material.dart';
import 'package:aoura/shared/widgets/dashed_rect.dart';
import 'package:aoura/shared/widgets/project_card_tile.dart';
import 'package:aoura/shared/widgets/projects_slider.dart';

class Dashboard extends StatelessWidget {
  Function get updateIndex => null;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints viewportConstraints) {
        return ScrollConfiguration(
          behavior: MyBehavior(),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              constraints:
                  BoxConstraints(minHeight: viewportConstraints.maxHeight),
              child: Column(children: [
                Container(
                  margin: EdgeInsets.only(
                      left: 6.11 * SizeConfig.widthMultiplier,
                      right: 6.11 * SizeConfig.widthMultiplier,
                      bottom: 2.582 * SizeConfig.heightMultiplier,
                      top: 2.35 * SizeConfig.heightMultiplier),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Today's tasks",
                        style: TextStyle(
                            fontSize: 3.525 * SizeConfig.textMultiplier,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff2F3336)),
                      ),
                      DottedBorder(
                          borderType: BorderType.RRect,
                          radius: Radius.circular(8),
                          color: Colors.grey,
                          child: Center(
                            child: Icon(
                              Icons.navigate_next,
                              size: 3.29 * SizeConfig.textMultiplier,
                              color: Color(0xffFD6768),
                            ),
                          ),
                          strokeWidth: 1,
                          padding: EdgeInsets.all(
                              0.94 * SizeConfig.heightMultiplier),
                          dashPattern: [3, 4])
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: 6.11 * SizeConfig.widthMultiplier,
                      bottom: 0.94 * SizeConfig.heightMultiplier),
                  child: ProjectSlider(
                    projects: [1, 2, 3, 4, 5],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: 6.11 * SizeConfig.widthMultiplier,
                      right: 6.11 * SizeConfig.widthMultiplier,
                      bottom: 1.41 * SizeConfig.heightMultiplier),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Open projects",
                        style: TextStyle(
                            fontSize: 2.585 * SizeConfig.textMultiplier,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff2F3336)),
                      ),
                      DottedBorder(
                          borderType: BorderType.RRect,
                          radius: Radius.circular(8),
                          color: Colors.grey,
                          child: Center(
                            child: Icon(
                              Icons.navigate_next,
                              size: 3.29 * SizeConfig.textMultiplier,
                              color: Color(0xffFD6768),
                            ),
                          ),
                          strokeWidth: 1,
                          padding: EdgeInsets.all(0.94 * SizeConfig.heightMultiplier),
                          dashPattern: [3, 4])
                    ],
                  ),
                ),
                Container(
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return ProjectCardTile();
                    },
                  ),
                )
              ]),
            ),
          ),
        );
      },
    );
  }
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
