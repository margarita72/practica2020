import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobilepr2020/Result/result.dart';
import 'package:mobilepr2020/customization.dart';

class Anxietylevel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          primary: true,
          slivers: <Widget>[
            SliverAppBar(
              flexibleSpace: FlexibleSpaceBar(
                stretchModes: <StretchMode>[
                  StretchMode.zoomBackground,
                  StretchMode.blurBackground,
                  StretchMode.fadeTitle,
                ],
                centerTitle: true,
                title: Container(
                  margin: EdgeInsets.only(left: 10.0),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: RichText(
                      text: TextSpan(
                        text: "Анкета №2 \n",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Уровень тревожности',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                background: Stack(
                  fit: StackFit.expand,
                  children: <Widget>[
                    Image.asset('assets/images/my19.jpg', fit: BoxFit.cover),
                  ],
                ),
              ),
              backgroundColor: myColorBlue,
              brightness: Brightness.light,
              expandedHeight: 200.0,
              floating: true,
            ),
            //контент
            MyProfileTwoSliverList(),
          ],
        ),
      ),
    );
  }
}

class MyProfileTwoSliverList extends StatefulWidget {
  @override
  MyProfileTwoSliverLists createState() => MyProfileTwoSliverLists();
}

class MyProfileTwoSliverLists extends State<MyProfileTwoSliverList> {
  int radioSmoking;
  int radioAlcohol;
  int radioOvereating;
  int radioLowAppetite;
  int radioWeatherChange;
  int radioIrritability;
  int radioDigestiveUpset;
  int radioPoorToleranceOfWaiting;
  int radioSleepDisturbance;
  int radioHeartPain;
  int radioHeadaches;
  int radioAnxiety;
  final formKeys = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate([
        Center(
          child: Form(
            key: formKeys,
            child: Column(
              children: <Widget>[
                //Курение
                Container(
                  height: 160.0,
                  margin: EdgeInsets.only(
                    left: 15.0,
                    right: 15.0,
                    top: 10.0,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(3.0)),
                    border: Border.all(width: 2.0, color: Colors.white),
                  ),
                  child: Column(
                    children: <Widget>[
                      //М-Ж
                      Container(
                        margin: EdgeInsets.only(
                          left: 20.0,
                          top: 3.0,
                        ),
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          '1.Как часто вы курите?',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey[500],
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),

                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorBlue,
                            groupValue: radioSmoking,
                            value: 1,
                            title: Text(
                              "Никогда",
                              style: TextStyle(
                                color: radioSmoking == 1
                                    ? myColorBlue
                                    : Colors.grey[500],
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                radioSmoking = val;
                              });
                            },
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorBlue,
                            groupValue: radioSmoking,
                            value: 2,
                            title: Text(
                              "Редко",
                              style: TextStyle(
                                color: radioSmoking == 2
                                    ? myColorBlue
                                    : Colors.grey[500],
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                radioSmoking = val;
                              });
                            },
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorBlue,
                            groupValue: radioSmoking,
                            value: 3,
                            title: Container(
                              width: 40,
                              margin: EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                "При стрессе или т.п",
                                style: TextStyle(
                                  color: radioSmoking == 3
                                      ? myColorBlue
                                      : Colors.grey[500],
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                radioSmoking = val;
                              });
                            },
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorBlue,
                            groupValue: radioSmoking,
                            value: 4,
                            title: Text(
                              "Часто",
                              style: TextStyle(
                                color: radioSmoking == 4
                                    ? myColorBlue
                                    : Colors.grey[500],
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                radioSmoking = val;
                              });
                            },
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorBlue,
                            groupValue: radioSmoking,
                            value: 5,
                            title: Text(
                              "Постоянно",
                              style: TextStyle(
                                color: radioSmoking == 5
                                    ? myColorBlue
                                    : Colors.grey[500],
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                radioSmoking = val;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                //Алкоголь
                Container(
                  height: 160.0,
                  margin: EdgeInsets.only(
                    left: 15.0,
                    right: 15.0,
                    top: 20.0,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(3.0)),
                    border: Border.all(width: 2.0, color: Colors.white),
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(
                          left: 20.0,
                          top: 3.0,
                        ),
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          '2.Как часто вы употребляете алкоголь?',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey[500],
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorBlue,
                            groupValue: radioAlcohol,
                            value: 1,
                            title: Text(
                              "Никогда",
                              style: TextStyle(
                                color: radioAlcohol == 1
                                    ? myColorBlue
                                    : Colors.grey[500],
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                radioAlcohol = val;
                              });
                            },
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorBlue,
                            groupValue: radioAlcohol,
                            value: 2,
                            title: Text(
                              "Редко",
                              style: TextStyle(
                                color: radioAlcohol == 2
                                    ? myColorBlue
                                    : Colors.grey[500],
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                radioAlcohol = val;
                              });
                            },
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorBlue,
                            groupValue: radioAlcohol,
                            value: 3,
                            title: Container(
                              width: 40,
                              margin: EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                "При стрессе или т.п",
                                style: TextStyle(
                                  color: radioAlcohol == 3
                                      ? myColorBlue
                                      : Colors.grey[500],
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                radioAlcohol = val;
                              });
                            },
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorBlue,
                            groupValue: radioAlcohol,
                            value: 4,
                            title: Text(
                              "Часто",
                              style: TextStyle(
                                color: radioAlcohol == 4
                                    ? myColorBlue
                                    : Colors.grey[500],
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                radioAlcohol = val;
                              });
                            },
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorBlue,
                            groupValue: radioAlcohol,
                            value: 5,
                            title: Text(
                              "Постоянно",
                              style: TextStyle(
                                color: radioAlcohol == 5
                                    ? myColorBlue
                                    : Colors.grey[500],
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                radioAlcohol = val;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                //переедание
                Container(
                  height: 160.0,
                  margin: EdgeInsets.only(
                    left: 15.0,
                    right: 15.0,
                    top: 20.0,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(3.0)),
                    border: Border.all(width: 2.0, color: Colors.white),
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(
                          left: 20.0,
                          top: 3.0,
                        ),
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          '3.Как часто вы переедаете?',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey[500],
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorBlue,
                            groupValue: radioOvereating,
                            value: 1,
                            title: Text(
                              "Никогда",
                              style: TextStyle(
                                color: radioOvereating == 1
                                    ? myColorBlue
                                    : Colors.grey[500],
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                radioOvereating = val;
                              });
                            },
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorBlue,
                            groupValue: radioOvereating,
                            value: 2,
                            title: Text(
                              "Редко",
                              style: TextStyle(
                                color: radioOvereating == 2
                                    ? myColorBlue
                                    : Colors.grey[500],
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                radioOvereating = val;
                              });
                            },
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorBlue,
                            groupValue: radioOvereating,
                            value: 3,
                            title: Container(
                              width: 40,
                              margin: EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                "При стрессе или т.п",
                                style: TextStyle(
                                  color: radioOvereating == 3
                                      ? myColorBlue
                                      : Colors.grey[500],
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                radioOvereating = val;
                              });
                            },
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorBlue,
                            groupValue: radioOvereating,
                            value: 4,
                            title: Text(
                              "Часто",
                              style: TextStyle(
                                color: radioOvereating == 4
                                    ? myColorBlue
                                    : Colors.grey[500],
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                radioOvereating = val;
                              });
                            },
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorBlue,
                            groupValue: radioOvereating,
                            value: 5,
                            title: Text(
                              "Постоянно",
                              style: TextStyle(
                                color: radioOvereating == 5
                                    ? myColorBlue
                                    : Colors.grey[500],
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                radioOvereating = val;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                //снижение аппетита
                Container(
                  height: 160.0,
                  margin: EdgeInsets.only(
                    left: 15.0,
                    right: 15.0,
                    top: 20.0,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(3.0)),
                    border: Border.all(width: 2.0, color: Colors.white),
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(
                          left: 20.0,
                          top: 3.0,
                        ),
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          '4.Как часто у вас снижен аппетит?',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey[500],
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorBlue,
                            groupValue: radioLowAppetite,
                            value: 1,
                            title: Text(
                              "Никогда",
                              style: TextStyle(
                                color: radioLowAppetite == 1
                                    ? myColorBlue
                                    : Colors.grey[500],
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                radioLowAppetite = val;
                              });
                            },
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorBlue,
                            groupValue: radioLowAppetite,
                            value: 2,
                            title: Text(
                              "Редко",
                              style: TextStyle(
                                color: radioLowAppetite == 2
                                    ? myColorBlue
                                    : Colors.grey[500],
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                radioLowAppetite = val;
                              });
                            },
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorBlue,
                            groupValue: radioLowAppetite,
                            value: 3,
                            title: Container(
                              width: 40,
                              margin: EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                "При стрессе или т.п",
                                style: TextStyle(
                                  color: radioLowAppetite == 3
                                      ? myColorBlue
                                      : Colors.grey[500],
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                radioLowAppetite = val;
                              });
                            },
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorBlue,
                            groupValue: radioLowAppetite,
                            value: 4,
                            title: Text(
                              "Часто",
                              style: TextStyle(
                                color: radioLowAppetite == 4
                                    ? myColorBlue
                                    : Colors.grey[500],
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                radioLowAppetite = val;
                              });
                            },
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorBlue,
                            groupValue: radioLowAppetite,
                            value: 5,
                            title: Text(
                              "Постоянно",
                              style: TextStyle(
                                color: radioLowAppetite == 5
                                    ? myColorBlue
                                    : Colors.grey[500],
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                radioLowAppetite = val;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                //перемена погоды
                Container(
                  height: 160.0,
                  margin: EdgeInsets.only(
                    left: 15.0,
                    right: 15.0,
                    top: 20.0,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(3.0)),
                    border: Border.all(width: 2.0, color: Colors.white),
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(
                          left: 20.0,
                          top: 3.0,
                        ),
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          '5. Вы чувствительны к перемене погоды?',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey[500],
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorBlue,
                            groupValue: radioWeatherChange,
                            value: 1,
                            title: Text(
                              "Никогда",
                              style: TextStyle(
                                color: radioWeatherChange == 1
                                    ? myColorBlue
                                    : Colors.grey[500],
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                radioWeatherChange = val;
                              });
                            },
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorBlue,
                            groupValue: radioWeatherChange,
                            value: 2,
                            title: Text(
                              "Редко",
                              style: TextStyle(
                                color: radioWeatherChange == 2
                                    ? myColorBlue
                                    : Colors.grey[500],
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                radioWeatherChange = val;
                              });
                            },
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorBlue,
                            groupValue: radioWeatherChange,
                            value: 3,
                            title: Container(
                              width: 40,
                              margin: EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                "При стрессе или т.п",
                                style: TextStyle(
                                  color: radioWeatherChange == 3
                                      ? myColorBlue
                                      : Colors.grey[500],
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                radioWeatherChange = val;
                              });
                            },
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorBlue,
                            groupValue: radioWeatherChange,
                            value: 4,
                            title: Text(
                              "Часто",
                              style: TextStyle(
                                color: radioWeatherChange == 4
                                    ? myColorBlue
                                    : Colors.grey[500],
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                radioWeatherChange = val;
                              });
                            },
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorBlue,
                            groupValue: radioWeatherChange,
                            value: 5,
                            title: Text(
                              "Постоянно",
                              style: TextStyle(
                                color: radioWeatherChange == 5
                                    ? myColorBlue
                                    : Colors.grey[500],
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                radioWeatherChange = val;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                //раздрожательность
                Container(
                  height: 160.0,
                  margin: EdgeInsets.only(
                    left: 15.0,
                    right: 15.0,
                    top: 20.0,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(3.0)),
                    border: Border.all(width: 2.0, color: Colors.white),
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(
                          left: 20.0,
                          top: 3.0,
                        ),
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          '6. Как часто вы раздражаетесь?',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey[500],
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorBlue,
                            groupValue: radioIrritability,
                            value: 1,
                            title: Text(
                              "Никогда",
                              style: TextStyle(
                                color: radioIrritability == 1
                                    ? myColorBlue
                                    : Colors.grey[500],
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                radioIrritability = val;
                              });
                            },
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorBlue,
                            groupValue: radioIrritability,
                            value: 2,
                            title: Text(
                              "Редко",
                              style: TextStyle(
                                color: radioIrritability == 2
                                    ? myColorBlue
                                    : Colors.grey[500],
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                radioIrritability = val;
                              });
                            },
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorBlue,
                            groupValue: radioIrritability,
                            value: 3,
                            title: Container(
                              width: 40,
                              margin: EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                "При стрессе или т.п",
                                style: TextStyle(
                                  color: radioIrritability == 3
                                      ? myColorBlue
                                      : Colors.grey[500],
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                radioIrritability = val;
                              });
                            },
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorBlue,
                            groupValue: radioIrritability,
                            value: 4,
                            title: Text(
                              "Часто",
                              style: TextStyle(
                                color: radioIrritability == 4
                                    ? myColorBlue
                                    : Colors.grey[500],
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                radioIrritability = val;
                              });
                            },
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorBlue,
                            groupValue: radioIrritability,
                            value: 5,
                            title: Text(
                              "Постоянно",
                              style: TextStyle(
                                color: radioIrritability == 5
                                    ? myColorBlue
                                    : Colors.grey[500],
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                radioIrritability = val;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                //растройства пищеварения
                Container(
                  height: 160.0,
                  margin: EdgeInsets.only(
                    left: 15.0,
                    right: 15.0,
                    top: 20.0,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(3.0)),
                    border: Border.all(width: 2.0, color: Colors.white),
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(
                          left: 20.0,
                          top: 3.0,
                        ),
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          '7. Как часто вы испытываете растройства пищеварения?',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey[500],
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorBlue,
                            groupValue: radioDigestiveUpset,
                            value: 1,
                            title: Text(
                              "Никогда",
                              style: TextStyle(
                                color: radioDigestiveUpset == 1
                                    ? myColorBlue
                                    : Colors.grey[500],
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                radioDigestiveUpset = val;
                              });
                            },
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorBlue,
                            groupValue: radioDigestiveUpset,
                            value: 2,
                            title: Text(
                              "Редко",
                              style: TextStyle(
                                color: radioDigestiveUpset == 2
                                    ? myColorBlue
                                    : Colors.grey[500],
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                radioDigestiveUpset = val;
                              });
                            },
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorBlue,
                            groupValue: radioDigestiveUpset,
                            value: 3,
                            title: Container(
                              width: 40,
                              margin: EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                "При стрессе или т.п",
                                style: TextStyle(
                                  color: radioDigestiveUpset == 3
                                      ? myColorBlue
                                      : Colors.grey[500],
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                radioDigestiveUpset = val;
                              });
                            },
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorBlue,
                            groupValue: radioDigestiveUpset,
                            value: 4,
                            title: Text(
                              "Часто",
                              style: TextStyle(
                                color: radioDigestiveUpset == 4
                                    ? myColorBlue
                                    : Colors.grey[500],
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                radioDigestiveUpset = val;
                              });
                            },
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorBlue,
                            groupValue: radioDigestiveUpset,
                            value: 5,
                            title: Text(
                              "Постоянно",
                              style: TextStyle(
                                color: radioDigestiveUpset == 5
                                    ? myColorBlue
                                    : Colors.grey[500],
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                radioDigestiveUpset = val;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                //плохая переносимость ожидания
                Container(
                  height: 160.0,
                  margin: EdgeInsets.only(
                    left: 15.0,
                    right: 15.0,
                    top: 20.0,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(3.0)),
                    border: Border.all(width: 2.0, color: Colors.white),
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(
                          left: 20.0,
                          top: 3.0,
                        ),
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          '8. Как часто вы плохо переносите ожидание?',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey[500],
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorBlue,
                            groupValue: radioPoorToleranceOfWaiting,
                            value: 1,
                            title: Text(
                              "Никогда",
                              style: TextStyle(
                                color: radioPoorToleranceOfWaiting == 1
                                    ? myColorBlue
                                    : Colors.grey[500],
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                radioPoorToleranceOfWaiting = val;
                              });
                            },
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorBlue,
                            groupValue: radioPoorToleranceOfWaiting,
                            value: 2,
                            title: Text(
                              "Редко",
                              style: TextStyle(
                                color: radioPoorToleranceOfWaiting == 2
                                    ? myColorBlue
                                    : Colors.grey[500],
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                radioPoorToleranceOfWaiting = val;
                              });
                            },
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorBlue,
                            groupValue: radioPoorToleranceOfWaiting,
                            value: 3,
                            title: Container(
                              width: 40,
                              margin: EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                "При стрессе или т.п",
                                style: TextStyle(
                                  color: radioPoorToleranceOfWaiting == 3
                                      ? myColorBlue
                                      : Colors.grey[500],
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                radioPoorToleranceOfWaiting = val;
                              });
                            },
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorBlue,
                            groupValue: radioPoorToleranceOfWaiting,
                            value: 4,
                            title: Text(
                              "Часто",
                              style: TextStyle(
                                color: radioPoorToleranceOfWaiting == 4
                                    ? myColorBlue
                                    : Colors.grey[500],
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                radioPoorToleranceOfWaiting = val;
                              });
                            },
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorBlue,
                            groupValue: radioPoorToleranceOfWaiting,
                            value: 5,
                            title: Text(
                              "Постоянно",
                              style: TextStyle(
                                color: radioPoorToleranceOfWaiting == 5
                                    ? myColorBlue
                                    : Colors.grey[500],
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                radioPoorToleranceOfWaiting = val;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                //нарушение сна
                Container(
                  height: 160.0,
                  margin: EdgeInsets.only(
                    left: 15.0,
                    right: 15.0,
                    top: 20.0,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(3.0)),
                    border: Border.all(width: 2.0, color: Colors.white),
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(
                          left: 20.0,
                          top: 3.0,
                        ),
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          '9. Как часто вы плохо спите?',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey[500],
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorBlue,
                            groupValue: radioSleepDisturbance,
                            value: 1,
                            title: Text(
                              "Никогда",
                              style: TextStyle(
                                color: radioSleepDisturbance == 1
                                    ? myColorBlue
                                    : Colors.grey[500],
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                radioSleepDisturbance = val;
                              });
                            },
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorBlue,
                            groupValue: radioSleepDisturbance,
                            value: 2,
                            title: Text(
                              "Редко",
                              style: TextStyle(
                                color: radioSleepDisturbance == 2
                                    ? myColorBlue
                                    : Colors.grey[500],
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                radioSleepDisturbance = val;
                              });
                            },
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorBlue,
                            groupValue: radioSleepDisturbance,
                            value: 3,
                            title: Container(
                              width: 40,
                              margin: EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                "При стрессе или т.п",
                                style: TextStyle(
                                  color: radioSleepDisturbance == 3
                                      ? myColorBlue
                                      : Colors.grey[500],
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                radioSleepDisturbance = val;
                              });
                            },
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorBlue,
                            groupValue: radioSleepDisturbance,
                            value: 4,
                            title: Text(
                              "Часто",
                              style: TextStyle(
                                color: radioSleepDisturbance == 4
                                    ? myColorBlue
                                    : Colors.grey[500],
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                radioSleepDisturbance = val;
                              });
                            },
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorBlue,
                            groupValue: radioSleepDisturbance,
                            value: 5,
                            title: Text(
                              "Постоянно",
                              style: TextStyle(
                                color: radioSleepDisturbance == 5
                                    ? myColorBlue
                                    : Colors.grey[500],
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                radioSleepDisturbance = val;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                //боль сердца
                Container(
                  height: 160.0,
                  margin: EdgeInsets.only(
                    left: 15.0,
                    right: 15.0,
                    top: 20.0,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(3.0)),
                    border: Border.all(width: 2.0, color: Colors.white),
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(
                          left: 20.0,
                          top: 3.0,
                        ),
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          '10. Как часто вы испытываете сердечную боль?',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey[500],
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorBlue,
                            groupValue: radioHeartPain,
                            value: 1,
                            title: Text(
                              "Никогда",
                              style: TextStyle(
                                color: radioHeartPain == 1
                                    ? myColorBlue
                                    : Colors.grey[500],
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                radioHeartPain = val;
                              });
                            },
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorBlue,
                            groupValue: radioHeartPain,
                            value: 2,
                            title: Text(
                              "Редко",
                              style: TextStyle(
                                color: radioHeartPain == 2
                                    ? myColorBlue
                                    : Colors.grey[500],
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                radioHeartPain = val;
                              });
                            },
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorBlue,
                            groupValue: radioHeartPain,
                            value: 3,
                            title: Container(
                              width: 40,
                              margin: EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                "При стрессе или т.п",
                                style: TextStyle(
                                  color: radioHeartPain == 3
                                      ? myColorBlue
                                      : Colors.grey[500],
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                radioHeartPain = val;
                              });
                            },
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorBlue,
                            groupValue: radioHeartPain,
                            value: 4,
                            title: Text(
                              "Часто",
                              style: TextStyle(
                                color: radioHeartPain == 4
                                    ? myColorBlue
                                    : Colors.grey[500],
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                radioHeartPain = val;
                              });
                            },
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorBlue,
                            groupValue: radioHeartPain,
                            value: 5,
                            title: Text(
                              "Постоянно",
                              style: TextStyle(
                                color: radioHeartPain == 5
                                    ? myColorBlue
                                    : Colors.grey[500],
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                radioHeartPain = val;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                //головные боли

                Container(
                  height: 160.0,
                  margin: EdgeInsets.only(
                    left: 15.0,
                    right: 15.0,
                    top: 20.0,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(3.0)),
                    border: Border.all(width: 2.0, color: Colors.white),
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(
                          left: 20.0,
                          top: 3.0,
                        ),
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          '11. Как часто вы испытываете головную боль?',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey[500],
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorBlue,
                            groupValue: radioHeadaches,
                            value: 1,
                            title: Text(
                              "Никогда",
                              style: TextStyle(
                                color: radioHeadaches == 1
                                    ? myColorBlue
                                    : Colors.grey[500],
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                radioHeadaches = val;
                              });
                            },
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorBlue,
                            groupValue: radioHeadaches,
                            value: 2,
                            title: Text(
                              "Редко",
                              style: TextStyle(
                                color: radioHeadaches == 2
                                    ? myColorBlue
                                    : Colors.grey[500],
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                radioHeadaches = val;
                              });
                            },
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorBlue,
                            groupValue: radioHeadaches,
                            value: 3,
                            title: Container(
                              width: 40,
                              margin: EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                "При стрессе или т.п",
                                style: TextStyle(
                                  color: radioHeadaches == 3
                                      ? myColorBlue
                                      : Colors.grey[500],
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                radioHeadaches = val;
                              });
                            },
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorBlue,
                            groupValue: radioHeadaches,
                            value: 4,
                            title: Text(
                              "Часто",
                              style: TextStyle(
                                color: radioHeadaches == 4
                                    ? myColorBlue
                                    : Colors.grey[500],
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                radioHeadaches = val;
                              });
                            },
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorBlue,
                            groupValue: radioHeadaches,
                            value: 5,
                            title: Text(
                              "Постоянно",
                              style: TextStyle(
                                color: radioHeadaches == 5
                                    ? myColorBlue
                                    : Colors.grey[500],
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                radioHeadaches = val;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                //тревожность

                Container(
                  height: 160.0,
                  margin: EdgeInsets.only(
                    left: 15.0,
                    right: 15.0,
                    top: 20.0,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(3.0)),
                    border: Border.all(width: 2.0, color: Colors.white),
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(
                          left: 20.0,
                          top: 3.0,
                        ),
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          '12. Как часто вы испытываете тревожность?',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey[500],
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorBlue,
                            groupValue: radioAnxiety,
                            value: 1,
                            title: Text(
                              "Никогда",
                              style: TextStyle(
                                color: radioAnxiety == 1
                                    ? myColorBlue
                                    : Colors.grey[500],
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                radioAnxiety = val;
                              });
                            },
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorBlue,
                            groupValue: radioAnxiety,
                            value: 2,
                            title: Text(
                              "Редко",
                              style: TextStyle(
                                color: radioAnxiety == 2
                                    ? myColorBlue
                                    : Colors.grey[500],
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                radioAnxiety = val;
                              });
                            },
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorBlue,
                            groupValue: radioAnxiety,
                            value: 3,
                            title: Container(
                              width: 40,
                              margin: EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                "При стрессе или т.п",
                                style: TextStyle(
                                  color: radioAnxiety == 3
                                      ? myColorBlue
                                      : Colors.grey[500],
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                radioAnxiety = val;
                              });
                            },
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorBlue,
                            groupValue: radioAnxiety,
                            value: 4,
                            title: Text(
                              "Часто",
                              style: TextStyle(
                                color: radioAnxiety == 4
                                    ? myColorBlue
                                    : Colors.grey[500],
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                radioAnxiety = val;
                              });
                            },
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorBlue,
                            groupValue: radioAnxiety,
                            value: 5,
                            title: Text(
                              "Постоянно",
                              style: TextStyle(
                                color: radioAnxiety == 5
                                    ? myColorBlue
                                    : Colors.grey[500],
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                radioAnxiety = val;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                //кнопка
                Container(
                  margin: EdgeInsets.only(
                      top: 20.0, left: 15.0, right: 15.0, bottom: 10.0),
                  height: 45.0,
                  child: RaisedButton(
                    color: myColorBlue,
                    onPressed: resultButton,
                    textColor: Colors.white,
                    shape: StadiumBorder(),
                    child: Container(
                      decoration: BoxDecoration(),
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Узнать результат",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      width: MediaQuery.of(context).size.width,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }

  void resultButton() {
    int sum = radioSmoking +
        radioAlcohol +
        radioOvereating +
        radioLowAppetite +
        radioWeatherChange +
        radioIrritability +
        radioDigestiveUpset +
        radioPoorToleranceOfWaiting +
        radioSleepDisturbance +
        radioHeartPain +
        radioHeadaches +
        radioAnxiety;
    String massage = '';

    if (sum > 10 && sum < 20) {
      massage = 'В данный момент времени у Вас все хорошо';
    } else if (sum >= 20 && sum < 30) {
      massage = 'Обратите внимание у Вас умеренная тревожность';
    } else if (sum >= 30) {
      massage =
          'Обратите внимание у Вас высокий уровень тревожности. Вы крайне нуждаетесь в психологической помощи';
    } else {
      massage =
          'Вы ответили на критически малое кол-во вопросов для нормальной оценки';
    }
    //отправимся на новую форму
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ResultAnimation(
          massage: massage,
          img: 'assets/images/my4.jpg',
        ),
      ),
    );
  }
}
