import 'package:flutter/material.dart';
import 'package:mobilepr2020/Animation/FadeAnimation.dart';
import 'package:mobilepr2020/Profiles/anxietylevel.dart';
import 'package:mobilepr2020/Profiles/individualHealth.dart';
import 'package:mobilepr2020/customization.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<List> products = [
    [
      'assets/images/my1.jpg',
      'Анкета №1',
      '100 \$',
      'Уровень индивидуального здоровья и факторов риска развития хронических неинфекционных болезней',
      IndividualHealth(),
    ],
    [
      'assets/images/my4.jpg',
      'Анкета №2',
      '120 \$',
      'Уровень тревожности',
      Anxietylevel(),
    ],
    [
      'assets/images/my3.jpg',
      'Анкета №3',
      '80 \$',
      'Опросник SF-36 «Качество жизни»',
      IndividualHealth(),
    ],
  ];

  int currentIndex = 0;

  void _next() {
    setState(() {
      if (currentIndex < products.length - 1) {
        currentIndex++;
      } else {
        currentIndex = currentIndex;
      }
    });
  }

  void _preve() {
    setState(() {
      if (currentIndex > 0) {
        currentIndex--;
      } else {
        currentIndex = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            GestureDetector(
              onHorizontalDragEnd: (DragEndDetails details) {
                if (details.velocity.pixelsPerSecond.dx > 0) {
                  _preve();
                } else if (details.velocity.pixelsPerSecond.dx < 0) {
                  _next();
                }
              },
              child: FadeAnimation(
                  .8,
                  Container(
                    width: double.infinity,
                    height: 550,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(products[currentIndex][0]),
                            fit: BoxFit.cover)),
                    child: Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.bottomRight,
                              colors: [
                            Colors.grey[700].withOpacity(.9),
                            Colors.grey.withOpacity(.0),
                          ])),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          FadeAnimation(
                              1,
                              Container(
                                width: 90,
                                margin: EdgeInsets.only(bottom: 60),
                                child: Row(
                                  children: _buildIndicator(),
                                ),
                              ))
                        ],
                      ),
                    ),
                  )),
            ),
            Expanded(
              child: Transform.translate(
                offset: Offset(0, -40),
                child: FadeAnimation(
                    1,
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(30),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          FadeAnimation(
                              1.3,
                              Text(
                                products[currentIndex][1],
                                style: TextStyle(
                                    //color: Colors.grey[800],
                                    color: myColor,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              )),
                          SizedBox(
                            height: 15,
                          ),

                          //название анкеты
                          FadeAnimation(
                              1.4,
                              Text(
                                products[currentIndex][3],
                                style: TextStyle(
                                    //color: Color(0xFF33CC99),
                                    //fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              )),
                          Expanded(
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: FadeAnimation(
                                1.7,
                                RaisedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            products[currentIndex][4],
                                      ),
                                    );
                                  },
                                  child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 45,
                                      child: Center(
                                        child: Text(
                                          "Пройти",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontSize: 20,
                                          ),
                                        ),
                                      )),
                                  color: myColor,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _indicator(bool isActive) {
    return Expanded(
      child: Container(
        height: 4,
        margin: EdgeInsets.only(right: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: isActive ? Colors.grey[800] : Colors.white),
      ),
    );
  }

  List<Widget> _buildIndicator() {
    List<Widget> indicators = [];
    for (int i = 0; i < products.length; i++) {
      if (currentIndex == i) {
        indicators.add(_indicator(true));
      } else {
        indicators.add(_indicator(false));
      }
    }

    return indicators;
  }
}
