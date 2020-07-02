import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobilepr2020/customization.dart';
import 'package:mobilepr2020/main.dart';

class ResultAnimation extends StatefulWidget {
  final massage;
  final img;
  ResultAnimation({Key key, @required this.massage, this.img})
      : super(key: key);

  @override
  ResultAnimations createState() =>
      ResultAnimations(massage: massage, img: img);
}

class ResultAnimations extends State<ResultAnimation> {
  var massage;
  var img;
  ResultAnimations({Key key, @required this.massage, this.img});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myColor,
      appBar: AppBar(
        title: Text("Результат анкетирования"),
        backgroundColor: myColor,
      ),
      body: MyResult(
        massages: massage,
        img: img,
      ),
      drawerScrimColor: myColor,
      bottomSheet: Container(
        //color: myColor,
        width: MediaQuery.of(context).size.width,
        height: 40,
        child: Align(
          alignment: Alignment.topRight,
          //вернуться к анкетам
          child: FlatButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ),
              );
            },
            child: Container(
              child: Wrap(
                direction: Axis.horizontal,
                alignment: WrapAlignment.center,
                children: <Widget>[
                  Text(
                    "Вернуться к анкетам",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: myColor,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      decoration: TextDecoration.underline,
                      decorationColor: Color(0xFFfc324d),
                    ),
                  ),
                  Icon(
                    Icons.forward,
                    color: myColor,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MyResult extends StatefulWidget {
  final massages;
  final img;
  MyResult({Key key, @required this.massages, this.img});
  @override
  MyResults createState() => MyResults(massage: massages, img: img);
}

class MyResults extends State<MyResult> {
  String massage;
  var img;
  MyResults({Key key, this.massage, this.img});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        height: 400,
        child: Column(
          children: <Widget>[
            CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage(img),
            ),

            /* Container(
              margin: EdgeInsets.only(
                top: 10,
                left: 15.0,
                right: 15.0,
              ),
              child: Text(
                massage,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            */
            Expanded(
              child: ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.only(
                      top: 10,
                      left: 15.0,
                      right: 15.0,
                    ),
                    child: Text(
                      massage,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
