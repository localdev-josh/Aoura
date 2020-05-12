import 'package:aoura/screens/dashboad.dart';
import 'package:aoura/shared/styleguide/responsive_ui/size_config.dart';
import 'package:flutter/material.dart';
import 'package:aoura/shared/widgets/dashed_rect.dart';
import 'package:aoura/shared/widgets/filter.dart';
import 'package:aoura/shared/widgets/heading.dart';
import 'package:aoura/shared/widgets/project_detail_card.dart';

class Projects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints viewportConstraints) {
        return ScrollConfiguration(
          behavior: MyBehavior(),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: ConstrainedBox(
              constraints:
                  BoxConstraints(minHeight: viewportConstraints.maxHeight),
              child: Column(children: [
                Container(
                  margin: EdgeInsets.only(
                      left: 6.11 * SizeConfig.widthMultiplier,
                      right: 6.11 * SizeConfig.widthMultiplier,
                      top: 2.35 * SizeConfig.heightMultiplier),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Row(
                          children: <Widget>[
                            Text(
                              "My projects",
                              style: TextStyle(
                                  fontSize: 3.525 * SizeConfig.textMultiplier,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff2F3336)),
                            ),
                            Container(
                                margin: EdgeInsets.only(
                                    top: 0.705 * SizeConfig.heightMultiplier,
                                    left: 0.51 * SizeConfig.widthMultiplier),
                                child: Icon(
                                  Icons.keyboard_arrow_down,
                                  color: Color(0xffFD6768),
                                ))
                          ],
                        ),
                      ),
                      DottedBorder(
                          borderType: BorderType.RRect,
                          radius: Radius.circular(
                              0.94 * SizeConfig.heightMultiplier),
                          color: Colors.grey,
                          child: Center(
                            child: Transform.rotate(
                              angle: 4.75,
                              child: Icon(
                                Icons.tune,
                                size: 2.82 * SizeConfig.textMultiplier,
                                color: Color(0xffFD6768),
                              ),
                            ),
                          ),
                          strokeWidth: 1,
                          padding: EdgeInsets.all(
                              1.175 * SizeConfig.heightMultiplier),
                          dashPattern: [3, 4])
                    ],
                  ),
                ),
                FiltersWidget(
                  updateFilter: () {},
                ),
                SizedBox(
                  height: 1.41 * SizeConfig.heightMultiplier,
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: 6.11 * SizeConfig.widthMultiplier,
                      vertical: 2.35 * SizeConfig.heightMultiplier),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "You have 11 projects",
                    style: TextStyle(
                        fontSize: 1.76 * SizeConfig.textMultiplier,
                        fontWeight: FontWeight.w800,
                        color: Color(0xffB4B4B4)),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 14.10 * SizeConfig.heightMultiplier),
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return ProjectDetailCard();
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
