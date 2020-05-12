import 'package:aoura/shared/styleguide/responsive_ui/size_config.dart';
import 'package:flutter/material.dart';
import 'package:aoura/shared/widgets/project_card.dart';
import 'package:aoura/shared/widgets/carousel_slider.dart';

class ProjectSlider extends StatefulWidget {
  ProjectSlider({@required this.projects}) : super();
  final List projects;
  @override
  _ProjectSliderState createState() => _ProjectSliderState();
}

class _ProjectSliderState extends State<ProjectSlider> {
  int _current = 0;

  buildList(context, store) {
    return ProjectCard();
  }

  buildIndicator(context, index, project, demoSlider) {
    return GestureDetector(
      onTap: () {
        setState(() {
          demoSlider.jumpToPage(index);
        });
      },
      child: Container(
        width: 6.0,
        height: 6.0,
        margin: EdgeInsets.symmetric(vertical: 2.82 * SizeConfig.heightMultiplier, horizontal: 3.0),
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.all(Radius.circular(0.94 * SizeConfig.heightMultiplier)),
            color: _current == index
                ? Colors.black
                : Colors.grey.withOpacity(0.8)),
      ),
    );
  }

  Widget sliderDemo() {
    final demoSlider = Container(
      child: CarouselSlider(
      aspectRatio: 2.0,
      enableInfiniteScroll: true,
      viewportFraction: 0.75,
      scrollPhysics: BouncingScrollPhysics(),
      height: MediaQuery.of(context).size.height * 0.35,
      items: widget.projects
          .map<Widget>((project) => buildList(context, project))
          .toList(),
      autoPlay: false,
      enlargeCenterPage: true,
      onPageChanged: (index) {
        setState(() {
          _current = index;
        });
      },
      )
    );
    return Column(children: [
      demoSlider,
      Container(
        child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: widget.projects
                .map<Widget>((store) => buildIndicator(
                    context, widget.projects.indexOf(store), store, demoSlider))
                .toList()),
      ),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return sliderDemo();
  }
}
