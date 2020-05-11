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
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 24,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Today's tasks",
                        style:
                            TextStyle(fontSize: 30, fontWeight: FontWeight.w700, color: Color(0xff2F3336)),
                      ),
                      DottedBorder(
                          borderType: BorderType.RRect,
                          radius: Radius.circular(8),
                          color: Colors.grey,
                          child: Center(
                            child: Icon(
                              Icons.navigate_next,
                              size: 28,
                              color: Colors.orange,
                            ),
                          ),
                          strokeWidth: 1,
                          padding: EdgeInsets.all(8),
                          dashPattern: [3, 4])
                    ],
                  ),
                ),
                SizedBox(
                  height: 22,
                ),
                Container(
                  margin: EdgeInsets.only(left: 24),
                  child: ProjectSlider(
                    projects: [1, 2, 3, 4, 5],
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 24,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Open projects",
                        style:
                        TextStyle(fontSize: 22, fontWeight: FontWeight.w600, color: Color(0xff2F3336)),
                      ),
                      DottedBorder(
                          borderType: BorderType.RRect,
                          radius: Radius.circular(8),
                          color: Colors.grey,
                          child: Center(
                            child: Icon(
                              Icons.navigate_next,
                              size: 28,
                              color: Colors.orange,
                            ),
                          ),
                          strokeWidth: 1,
                          padding: EdgeInsets.all(8),
                          dashPattern: [3, 4])
                    ],
                  ),
                ),
                SizedBox(
                  height: 12.0,
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
