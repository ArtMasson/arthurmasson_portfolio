import 'package:flutter/material.dart';

class AvatarPage extends StatefulWidget {
  final boxDecoration;
  final textColor;

  const AvatarPage({Key key, this.boxDecoration, this.textColor})
      : super(key: key);

  @override
  _AvatarPageState createState() => _AvatarPageState(boxDecoration, textColor);
}

class _AvatarPageState extends State<AvatarPage> {
  final _containerDecoration;
  final _textColor;

  _AvatarPageState(this._containerDecoration, this._textColor);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        duration: Duration(milliseconds: 75),
        decoration: _containerDecoration,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 100,
                    ),
                    Text(
                      "Quem é você nessa aventura?",
                      style: TextStyle(color: _textColor, fontSize: 50),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 100),
                        child: GridView.count(
                          crossAxisSpacing: 50,
                          crossAxisCount: 4,
                          children: [
                            Container(
                              color: Colors.green,
                            ),
                            Container(
                              color: Colors.blue,
                            ),
                            Container(
                              color: Colors.red,
                            ),
                            Container(
                              color: Colors.yellow,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
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
                              style: TextStyle(color: _textColor, fontSize: 40),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 50, right: 50),
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
                              "Início".toUpperCase(),
                              style: TextStyle(color: _textColor, fontSize: 40),
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
      ),
    );
  }
}
