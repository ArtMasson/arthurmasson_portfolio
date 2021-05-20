import 'package:arthurmasson_portfolio/app/features/avatar_picker/pages/avatar_picker_page.dart';
import 'package:arthurmasson_portfolio/app/features/color_picker/models/design_argument.dart';
import 'package:arthurmasson_portfolio/app/features/color_picker/pages/color_picker_page.dart';
import 'package:arthurmasson_portfolio/app/features/home/pages/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppRoute extends StatefulWidget {
  @override
  _AppRouteState createState() => _AppRouteState();
}

class _AppRouteState extends State<AppRoute> {
  final routes = {
    '/': (context) => HomePage(),
    '/color': (context) => ColorPage(),
    '/avatar': (context, boxDecoration, textColor) => AvatarPage(
          boxDecoration: boxDecoration,
          textColor: textColor,
        )
  };

  @override
  Widget build(BuildContext context) {
    var initialRoute = "/";

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: initialRoute,
      onGenerateRoute: (settings) {
        if (settings.name == "/avatar") {
          final DesignArgument args = settings.arguments;
          return CupertinoPageRoute(
              builder: (context) => routes[settings.name](
                  context, args.containerDecoration, args.textColor));
        } else {
          return CupertinoPageRoute(
              builder: (context) => routes[settings.name](context));
        }
      },
    );
  }
}
