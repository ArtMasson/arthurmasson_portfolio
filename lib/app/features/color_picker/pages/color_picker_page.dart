import 'package:arthurmasson_portfolio/app/features/color_picker/models/design_argument.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColorPage extends StatefulWidget {
  @override
  _ColorPageState createState() => _ColorPageState();
}

class _ColorPageState extends State<ColorPage> {
  Color _textColor = Colors.black;
  Color _colorLeft = Colors.white;
  Color _colorRight = Colors.white;
  double _sliderValue = 0;

  var _containerDecoration = BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [Colors.blueGrey.shade50, Colors.blueGrey.shade50]));

  void changeBackgroundColor(sliderValue) {
    var newTextColor;

    switch (sliderValue) {
      case 0:
        _colorLeft = Colors.blueGrey.shade50;
        _colorRight = Colors.blueGrey.shade50;
        newTextColor = Colors.black;
        break;
      case 10:
        _colorLeft = Colors.red.shade400;
        _colorRight = Colors.red.shade300;
        newTextColor = Colors.white;
        break;
      case 20:
        _colorLeft = Colors.orange;
        _colorRight = Colors.orange.shade400;
        newTextColor = Colors.white;
        break;
      case 30:
        _colorLeft = Colors.yellow;
        _colorRight = Colors.yellow.shade400;
        newTextColor = Colors.black;
        break;
      case 40:
        _colorLeft = Colors.lime;
        _colorRight = Colors.lime.shade400;
        newTextColor = Colors.black;
        break;
      case 50:
        _colorLeft = Colors.green;
        _colorRight = Colors.green.shade400;
        newTextColor = Colors.white;
        break;
      case 60:
        _colorLeft = Colors.cyan;
        _colorRight = Colors.cyan.shade300;
        newTextColor = Colors.black;
        break;
      case 70:
        _colorLeft = Colors.blue;
        _colorRight = Colors.blue.shade400;
        newTextColor = Colors.white;
        break;
      case 80:
        _colorLeft = Colors.indigo;
        _colorRight = Colors.indigo.shade400;
        newTextColor = Colors.white;
        break;
      case 90:
        _colorLeft = Colors.purple;
        _colorRight = Colors.purple.shade400;
        newTextColor = Colors.white;
        break;
      case 100:
        _colorLeft = Colors.brown;
        _colorRight = Colors.brown;
        newTextColor = Colors.white;
        break;
      case 110:
        _colorLeft = Colors.grey;
        _colorRight = Colors.grey;
        newTextColor = Colors.black;
        break;
      case 120:
        _colorLeft = Colors.black54;
        _colorRight = Colors.black54;
        newTextColor = Colors.white;
        break;
      default:
        _colorLeft = Colors.white;
        _colorRight = Colors.white;
        newTextColor = Colors.black;
    }
    setState(() {
      _containerDecoration = BoxDecoration(
        gradient: RadialGradient(
          // begin: Alignment.topCenter,
          // end: Alignment.bottomCenter,
          colors: [_colorLeft, _colorRight],
        ),
      );
    });
    setState(() {
      _textColor = newTextColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        duration: Duration(
          milliseconds: 75,
        ),
        decoration: _containerDecoration,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 300,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 200,
              ),
              child: Text(
                "Qual é a sua cor favorita?",
                style: TextStyle(
                  color: _textColor,
                  fontSize: 50,
                ),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 200,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: _textColor,
                      spreadRadius: 3,
                    ),
                  ],
                ),
                width: MediaQuery.of(context).size.width,
                child: CupertinoSlider(
                    min: 0,
                    max: 120,
                    divisions: 12,
                    value: _sliderValue,
                    onChanged: (newValue) {
                      setState(() {
                        _sliderValue = newValue;
                        changeBackgroundColor(_sliderValue);
                      });
                    }),
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomRight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 50, left: 50),
                      child: OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          primary: Colors.transparent,
                          backgroundColor: Colors.transparent,
                          side: BorderSide(color: _textColor, width: 5),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            "Pular".toUpperCase(),
                            style: TextStyle(
                              color: _textColor,
                              fontSize: 40,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 50,
                        right: 50,
                      ),
                      child: OutlinedButton(
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            '/avatar',
                            arguments: DesignArgument(
                              _containerDecoration,
                              _textColor,
                            ),
                          );
                        },
                        style: OutlinedButton.styleFrom(
                          primary: Colors.transparent,
                          backgroundColor: Colors.transparent,
                          side: BorderSide(
                            color: _textColor,
                            width: 5,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            "Continuar".toUpperCase(),
                            style: TextStyle(
                              color: _textColor,
                              fontSize: 40,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
