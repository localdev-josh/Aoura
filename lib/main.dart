import 'package:aoura/shared/styleguide/responsive_ui/size_config.dart';
import 'package:flutter/material.dart';
import 'package:aoura/screens/home.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints){
      return OrientationBuilder(builder: (context, orientation){
        SizeConfig().init(constraints, orientation);
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Task App',
          theme: ThemeData(
              primarySwatch: Colors.blue,
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent),
          home: Home(),
        );
      });
  });
  }
}
