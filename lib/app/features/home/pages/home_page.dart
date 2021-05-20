import 'package:arthurmasson_portfolio/app/features/home/widgets/weather_list.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            stretch: true,
            // onStretchTrigger: () {
            //   print('Load new data!');
            // },
            backgroundColor: Colors.blue[800],
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              stretchModes: <StretchMode>[
                StretchMode.zoomBackground,
                StretchMode.fadeTitle,
                StretchMode.blurBackground,
              ],
              title: Text('Horizons'),
              background: DecoratedBox(
                position: DecorationPosition.foreground,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.center,
                    colors: <Color>[Colors.blue[800], Colors.transparent],
                  ),
                ),
                child: Image.network(
                  headerImage,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          WeeklyForecastList(),
        ],
      ),
    );
  }
}
