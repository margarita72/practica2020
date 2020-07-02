import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobilepr2020/Result/result.dart';
import 'package:mobilepr2020/customization.dart';

class Sf36 extends StatelessWidget {
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
                  child: RichText(
                    text: TextSpan(
                      text: "Анкета №3 \n",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Опросник SF-36 «Качество жизни»',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                background: Stack(
                  fit: StackFit.expand,
                  children: <Widget>[
                    Image.asset('assets/images/my3.jpg', fit: BoxFit.cover),
                  ],
                ),
              ),
              backgroundColor: myColorGrin,
              brightness: Brightness.light,
              expandedHeight: 200.0,
              floating: true,
            ),
            //контент
            MyProfileThreeSliverList(),
          ],
        ),
      ),
    );
  }
}

class MyProfileThreeSliverList extends StatefulWidget {
  @override
  MyProfileThreeSliverLists createState() => MyProfileThreeSliverLists();
}

class MyProfileThreeSliverLists extends State<MyProfileThreeSliverList> {
  final formKeys = GlobalKey<FormState>();
  int healthStatus = 0; //состояние здоровья
  int healthStatusTwoo = 0; //состояние здоровья
  int healthRestrictionThreeA = 0; //а
  int healthRestrictionThreeB = 0; //б
  int healthRestrictionThreeC = 0; //в
  int healthRestrictionThreeD = 0; //г
  int healthRestrictionThreeE = 0; //д
  int healthRestrictionThreeF = 0; //е
  int healthRestrictionThreeG = 0; //ж
  int healthRestrictionThreeH = 0; //з
  int healthRestrictionThreeI = 0; //и
  int healthRestrictionThreeJ = 0; //к

  //физическое состояние 4 недели
  int physicalCondition4WeeksA = 0;
  int physicalCondition4WeeksB = 0;
  int physicalCondition4WeeksC = 0;
  int physicalCondition4WeeksD = 0;

  //work difficulties 4 weeks
  int workDifficulties4WeeksA = 0;
  int workDifficulties4WeeksB = 0;
  int workDifficulties4WeeksC = 0;

  //family time 4 weeks
  int familyTime4Weeks = 0;

  //physical pain 4 weeks
  int physicalPain4Weeks = 0;

  //normal work 4 weeks
  int normalWork4Weeks = 0;

  //FOUR weeks
  int fourWeeksA = 0;
  int fourWeeksB = 0;
  int fourWeeksC = 0;
  int fourWeeksD = 0;
  int fourWeeksE = 0;
  int fourWeeksF = 0;
  int fourWeeksG = 0;
  int fourWeeksH = 0;
  int fourWeeksI = 0;

  //active communication with people
  int activeCommunicationWithPeople = 0;

  //statement
  int statementA = 0;
  int statementB = 0;
  int statementC = 0;
  int statementD = 0;

  //переменные для подсчета итогов
  double pf3 = 0.0;
  double pr4 = 0.0;
  double bp7 = 0.0;
  double bp8 = 0.0;
  double br78 = 0.0;
  double gh11 = 0.0;
  double vt91 = 0.0;
  double sf610 = 0.0;
  double re5 = 0.0;
  double mh92 = 0.0;

  double sumGH = 0.0;
  int sumPr = 0;

  double sumPH = 0.0;
  double ph = 0.0;

  String message = "";
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate([
        Center(
          child: Form(
            key: formKeys,
            child: Column(
              children: <Widget>[
                
                //оценка здоровья
                Container(
                  height: 160.0,
                  margin: EdgeInsets.only(
                    left: 5.0,
                    right: 5.0,
                    top: 10.0,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(3.0)),
                    border: Border.all(width: 2.0, color: Colors.white),
                  ),
                  child: Column(
                    children: <Widget>[
                      // здоровье
                      Container(
                        margin: EdgeInsets.only(
                          left: 20.0,
                          top: 3.0,
                        ),
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          '1.В целом Вы бы оценили своё состояние здоровья как?',
                          style: TextStyle(
                            fontSize: 15,
                            color: myColorText,
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
                            activeColor: myColorGrin,
                            groupValue: healthStatus,
                            value: 5,
                            title: Text(
                              "Отличное",
                              style: TextStyle(
                                color: healthStatus == 5
                                    ? myColorGrin
                                    : myColorText,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                healthStatus = val;
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
                            activeColor: myColorGrin,
                            groupValue: healthStatus,
                            value: 4,
                            title: Text(
                              "Очень хорошее",
                              style: TextStyle(
                                color: healthStatus == 4
                                    ? myColorGrin
                                    : myColorText,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                healthStatus = val;
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
                            activeColor: myColorGrin,
                            groupValue: healthStatus,
                            value: 3,
                            title: Container(
                              width: 40,
                              margin: EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                "Хорошее",
                                style: TextStyle(
                                  color: healthStatus == 3
                                      ? myColorGrin
                                      : myColorText,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                healthStatus = val;
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
                            activeColor: myColorGrin,
                            groupValue: healthStatus,
                            value: 2,
                            title: Text(
                              "Посредственное",
                              style: TextStyle(
                                color: healthStatus == 2
                                    ? myColorGrin
                                    : myColorText,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                healthStatus = val;
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
                            activeColor: myColorGrin,
                            groupValue: healthStatus,
                            value: 1,
                            title: Text(
                              "Плохое",
                              style: TextStyle(
                                color: healthStatus == 1
                                    ? myColorGrin
                                    : myColorText,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                healthStatus = val;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                //тоже здоровье
                Container(
                  height: 180.0,
                  margin: EdgeInsets.only(
                    left: 5.0,
                    right: 5.0,
                    top: 15.0,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(3.0)),
                    border: Border.all(width: 2.0, color: Colors.white),
                  ),
                  child: Column(
                    children: <Widget>[
                      // здоровье
                      Container(
                        margin: EdgeInsets.only(
                          left: 20.0,
                          top: 3.0,
                        ),
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          '2.Как бы Вы в целом оценили свое здоровье сейчас по сравнению с тем, что было год назад?',
                          style: TextStyle(
                            fontSize: 15,
                            color: myColorText,
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
                            activeColor: myColorGrin,
                            groupValue: healthStatusTwoo,
                            value: 1,
                            title: Text(
                              "Значительно лучше, чем год назад",
                              style: TextStyle(
                                color: healthStatusTwoo == 1
                                    ? myColorGrin
                                    : myColorText,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                healthStatusTwoo = val;
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
                            activeColor: myColorGrin,
                            groupValue: healthStatusTwoo,
                            value: 2,
                            title: Text(
                              "Несколько лучше, чем год назад",
                              style: TextStyle(
                                color: healthStatusTwoo == 2
                                    ? myColorGrin
                                    : myColorText,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                healthStatusTwoo = val;
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
                            activeColor: myColorGrin,
                            groupValue: healthStatusTwoo,
                            value: 3,
                            title: Container(
                              width: 40,
                              margin: EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                "Примерно так же, как год назад",
                                style: TextStyle(
                                  color: healthStatusTwoo == 3
                                      ? myColorGrin
                                      : myColorText,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                healthStatusTwoo = val;
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
                            activeColor: myColorGrin,
                            groupValue: healthStatusTwoo,
                            value: 4,
                            title: Text(
                              "Несколько хуже, чем год назад",
                              style: TextStyle(
                                color: healthStatusTwoo == 4
                                    ? myColorGrin
                                    : myColorText,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                healthStatusTwoo = val;
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
                            activeColor: myColorGrin,
                            groupValue: healthStatusTwoo,
                            value: 5,
                            title: Text(
                              "Гораздо хуже, чем год назад",
                              style: TextStyle(
                                color: healthStatusTwoo == 5
                                    ? myColorGrin
                                    : myColorText,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                healthStatusTwoo = val;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                //дальше 3

                Container(
                  height: 1400.0,
                  margin: EdgeInsets.only(
                    left: 5.0,
                    right: 5.0,
                    top: 20.0,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(3.0)),
                    border: Border.all(width: 2.0, color: Colors.white),
                  ),
                  child: Column(
                    children: <Widget>[
                      // здоровье
                      Container(
                        margin: EdgeInsets.only(
                          left: 20.0,
                          top: 3.0,
                        ),
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          '3.Ограничивает ли Вас состояние Вашего здоровья в настоящее время в выполнении перечисленных ниже физических нагрузок? Если да, то в какой степени?',
                          style: TextStyle(
                            fontSize: 15,
                            color: myColorText,
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),

                      //a
                      Container(
                        margin: EdgeInsets.only(
                          left: 25.0,
                          top: 10.0,
                        ),
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          'a) тяжелые физические нагрузки, такие как бег, поднятие тяжестей, занятие силовыми видами спорта',
                          style: TextStyle(
                            color: myColorText,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),

                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorGrin,
                            groupValue: healthRestrictionThreeA,
                            value: 1,
                            title: Text(
                              "Да, значительно ограничивает",
                              style: TextStyle(
                                color: healthRestrictionThreeA == 1
                                    ? myColorGrin
                                    : myColorText,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                healthRestrictionThreeA = val;
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
                            activeColor: myColorGrin,
                            groupValue: healthRestrictionThreeA,
                            value: 2,
                            title: Text(
                              "Да, немного ограничивает ",
                              style: TextStyle(
                                color: healthRestrictionThreeA == 2
                                    ? myColorGrin
                                    : myColorText,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                healthRestrictionThreeA = val;
                              });
                            },
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorGrin,
                            groupValue: healthRestrictionThreeA,
                            value: 3,
                            title: Container(
                              width: 40,
                              margin: EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                "Нет, совсем не ограничивает ",
                                style: TextStyle(
                                  color: healthRestrictionThreeA == 3
                                      ? myColorGrin
                                      : myColorText,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                healthRestrictionThreeA = val;
                              });
                            },
                          ),
                        ),
                      ),

                      //б
                      Container(
                        margin: EdgeInsets.only(
                          left: 25.0,
                          top: 15.0,
                        ),
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          'б) умеренные Физические нагрузки, такие как передвинуть стол, поработать с пылесосом, собирать грибы или ягоды',
                          style: TextStyle(
                            color: myColorText,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),

                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorGrin,
                            groupValue: healthRestrictionThreeB,
                            value: 1,
                            title: Text(
                              "Да, значительно ограничивает",
                              style: TextStyle(
                                color: healthRestrictionThreeB == 1
                                    ? myColorGrin
                                    : myColorText,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                healthRestrictionThreeB = val;
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
                            activeColor: myColorGrin,
                            groupValue: healthRestrictionThreeB,
                            value: 2,
                            title: Text(
                              "Да, немного ограничивает ",
                              style: TextStyle(
                                color: healthRestrictionThreeB == 2
                                    ? myColorGrin
                                    : myColorText,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                healthRestrictionThreeB = val;
                              });
                            },
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorGrin,
                            groupValue: healthRestrictionThreeB,
                            value: 3,
                            title: Container(
                              width: 40,
                              margin: EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                "Нет, совсем не ограничивает ",
                                style: TextStyle(
                                  color: healthRestrictionThreeB == 3
                                      ? myColorGrin
                                      : myColorText,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                healthRestrictionThreeB = val;
                              });
                            },
                          ),
                        ),
                      ),

                      //в
                      Container(
                        margin: EdgeInsets.only(
                          left: 25.0,
                          top: 10.0,
                        ),
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          'в) поднять или нести сумку с продуктами',
                          style: TextStyle(
                            color: myColorText,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),

                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorGrin,
                            groupValue: healthRestrictionThreeC,
                            value: 1,
                            title: Text(
                              "Да, значительно ограничивает",
                              style: TextStyle(
                                color: healthRestrictionThreeC == 1
                                    ? myColorGrin
                                    : myColorText,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                healthRestrictionThreeC = val;
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
                            activeColor: myColorGrin,
                            groupValue: healthRestrictionThreeC,
                            value: 2,
                            title: Text(
                              "Да, немного ограничивает ",
                              style: TextStyle(
                                color: healthRestrictionThreeC == 2
                                    ? myColorGrin
                                    : myColorText,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                healthRestrictionThreeC = val;
                              });
                            },
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorGrin,
                            groupValue: healthRestrictionThreeC,
                            value: 3,
                            title: Container(
                              width: 40,
                              margin: EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                "Нет, совсем не ограничивает ",
                                style: TextStyle(
                                  color: healthRestrictionThreeC == 3
                                      ? myColorGrin
                                      : myColorText,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                healthRestrictionThreeC = val;
                              });
                            },
                          ),
                        ),
                      ),

                      //г
                      Container(
                        margin: EdgeInsets.only(
                          left: 25.0,
                          top: 10.0,
                        ),
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          'г) подняться пешком по лестнице на несколько пролетов',
                          style: TextStyle(
                            color: myColorText,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),

                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorGrin,
                            groupValue: healthRestrictionThreeD,
                            value: 1,
                            title: Text(
                              "Да, значительно ограничивает",
                              style: TextStyle(
                                color: healthRestrictionThreeD == 1
                                    ? myColorGrin
                                    : myColorText,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                healthRestrictionThreeD = val;
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
                            activeColor: myColorGrin,
                            groupValue: healthRestrictionThreeD,
                            value: 2,
                            title: Text(
                              "Да, немного ограничивает ",
                              style: TextStyle(
                                color: healthRestrictionThreeD == 2
                                    ? myColorGrin
                                    : myColorText,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                healthRestrictionThreeD = val;
                              });
                            },
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorGrin,
                            groupValue: healthRestrictionThreeD,
                            value: 3,
                            title: Container(
                              width: 40,
                              margin: EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                "Нет, совсем не ограничивает ",
                                style: TextStyle(
                                  color: healthRestrictionThreeD == 3
                                      ? myColorGrin
                                      : myColorText,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                healthRestrictionThreeD = val;
                              });
                            },
                          ),
                        ),
                      ),
                      //д
                      Container(
                        margin: EdgeInsets.only(
                          left: 25.0,
                          top: 10.0,
                        ),
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          'д) подняться пешком по лестнице на один пролет',
                          style: TextStyle(
                            color: myColorText,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),

                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorGrin,
                            groupValue: healthRestrictionThreeE,
                            value: 1,
                            title: Text(
                              "Да, значительно ограничивает",
                              style: TextStyle(
                                color: healthRestrictionThreeE == 1
                                    ? myColorGrin
                                    : myColorText,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                healthRestrictionThreeE = val;
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
                            activeColor: myColorGrin,
                            groupValue: healthRestrictionThreeE,
                            value: 2,
                            title: Text(
                              "Да, немного ограничивает ",
                              style: TextStyle(
                                color: healthRestrictionThreeE == 2
                                    ? myColorGrin
                                    : myColorText,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                healthRestrictionThreeE = val;
                              });
                            },
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorGrin,
                            groupValue: healthRestrictionThreeE,
                            value: 3,
                            title: Container(
                              width: 40,
                              margin: EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                "Нет, совсем не ограничивает ",
                                style: TextStyle(
                                  color: healthRestrictionThreeE == 3
                                      ? myColorGrin
                                      : myColorText,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                healthRestrictionThreeE = val;
                              });
                            },
                          ),
                        ),
                      ),

                      //е
                      Container(
                        margin: EdgeInsets.only(
                          left: 25.0,
                          top: 10.0,
                        ),
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          'е) наклониться, встать на колени, присесть на корточки',
                          style: TextStyle(
                            color: myColorText,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),

                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorGrin,
                            groupValue: healthRestrictionThreeF,
                            value: 1,
                            title: Text(
                              "Да, значительно ограничивает",
                              style: TextStyle(
                                color: healthRestrictionThreeF == 1
                                    ? myColorGrin
                                    : myColorText,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                healthRestrictionThreeF = val;
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
                            activeColor: myColorGrin,
                            groupValue: healthRestrictionThreeF,
                            value: 2,
                            title: Text(
                              "Да, немного ограничивает ",
                              style: TextStyle(
                                color: healthRestrictionThreeF == 2
                                    ? myColorGrin
                                    : myColorText,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                healthRestrictionThreeF = val;
                              });
                            },
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorGrin,
                            groupValue: healthRestrictionThreeF,
                            value: 3,
                            title: Container(
                              width: 40,
                              margin: EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                "Нет, совсем не ограничивает ",
                                style: TextStyle(
                                  color: healthRestrictionThreeF == 3
                                      ? myColorGrin
                                      : myColorText,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                healthRestrictionThreeF = val;
                              });
                            },
                          ),
                        ),
                      ),

                      //ж
                      Container(
                        margin: EdgeInsets.only(
                          left: 25.0,
                          top: 10.0,
                        ),
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          'ж) пройти расстояние более одного километра',
                          style: TextStyle(
                            color: myColorText,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),

                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorGrin,
                            groupValue: healthRestrictionThreeG,
                            value: 1,
                            title: Text(
                              "Да, значительно ограничивает",
                              style: TextStyle(
                                color: healthRestrictionThreeG == 1
                                    ? myColorGrin
                                    : myColorText,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                healthRestrictionThreeG = val;
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
                            activeColor: myColorGrin,
                            groupValue: healthRestrictionThreeG,
                            value: 2,
                            title: Text(
                              "Да, немного ограничивает ",
                              style: TextStyle(
                                color: healthRestrictionThreeG == 2
                                    ? myColorGrin
                                    : myColorText,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                healthRestrictionThreeG = val;
                              });
                            },
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorGrin,
                            groupValue: healthRestrictionThreeG,
                            value: 3,
                            title: Container(
                              width: 40,
                              margin: EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                "Нет, совсем не ограничивает ",
                                style: TextStyle(
                                  color: healthRestrictionThreeG == 3
                                      ? myColorGrin
                                      : myColorText,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                healthRestrictionThreeG = val;
                              });
                            },
                          ),
                        ),
                      ),

                      //з
                      Container(
                        margin: EdgeInsets.only(
                          left: 25.0,
                          top: 10.0,
                        ),
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          'з) пройти расстояние в несколько кварталов',
                          style: TextStyle(
                            color: myColorText,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),

                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorGrin,
                            groupValue: healthRestrictionThreeH,
                            value: 1,
                            title: Text(
                              "Да, значительно ограничивает",
                              style: TextStyle(
                                color: healthRestrictionThreeH == 1
                                    ? myColorGrin
                                    : myColorText,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                healthRestrictionThreeH = val;
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
                            activeColor: myColorGrin,
                            groupValue: healthRestrictionThreeH,
                            value: 2,
                            title: Text(
                              "Да, немного ограничивает ",
                              style: TextStyle(
                                color: healthRestrictionThreeH == 2
                                    ? myColorGrin
                                    : myColorText,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                healthRestrictionThreeH = val;
                              });
                            },
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorGrin,
                            groupValue: healthRestrictionThreeH,
                            value: 3,
                            title: Container(
                              width: 40,
                              margin: EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                "Нет, совсем не ограничивает ",
                                style: TextStyle(
                                  color: healthRestrictionThreeH == 3
                                      ? myColorGrin
                                      : myColorText,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                healthRestrictionThreeH = val;
                              });
                            },
                          ),
                        ),
                      ),

                      //и
                      Container(
                        margin: EdgeInsets.only(
                          left: 25.0,
                          top: 10.0,
                        ),
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          'и) пройти расстояние в один квартал',
                          style: TextStyle(
                            color: myColorText,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),

                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorGrin,
                            groupValue: healthRestrictionThreeI,
                            value: 1,
                            title: Text(
                              "Да, значительно ограничивает",
                              style: TextStyle(
                                color: healthRestrictionThreeI == 1
                                    ? myColorGrin
                                    : myColorText,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                healthRestrictionThreeI = val;
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
                            activeColor: myColorGrin,
                            groupValue: healthRestrictionThreeI,
                            value: 2,
                            title: Text(
                              "Да, немного ограничивает ",
                              style: TextStyle(
                                color: healthRestrictionThreeI == 2
                                    ? myColorGrin
                                    : myColorText,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                healthRestrictionThreeI = val;
                              });
                            },
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorGrin,
                            groupValue: healthRestrictionThreeI,
                            value: 3,
                            title: Container(
                              width: 40,
                              margin: EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                "Нет, совсем не ограничивает ",
                                style: TextStyle(
                                  color: healthRestrictionThreeI == 3
                                      ? myColorGrin
                                      : myColorText,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                healthRestrictionThreeI = val;
                              });
                            },
                          ),
                        ),
                      ),
                      //к
                      Container(
                        margin: EdgeInsets.only(
                          left: 25.0,
                          top: 10.0,
                        ),
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          'к) самостоятельно вымыться, одеться',
                          style: TextStyle(
                            color: myColorText,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),

                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorGrin,
                            groupValue: healthRestrictionThreeJ,
                            value: 1,
                            title: Text(
                              "Да, значительно ограничивает",
                              style: TextStyle(
                                color: healthRestrictionThreeJ == 1
                                    ? myColorGrin
                                    : myColorText,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                healthRestrictionThreeJ = val;
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
                            activeColor: myColorGrin,
                            groupValue: healthRestrictionThreeJ,
                            value: 2,
                            title: Text(
                              "Да, немного ограничивает ",
                              style: TextStyle(
                                color: healthRestrictionThreeJ == 2
                                    ? myColorGrin
                                    : myColorText,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                healthRestrictionThreeJ = val;
                              });
                            },
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorGrin,
                            groupValue: healthRestrictionThreeJ,
                            value: 3,
                            title: Container(
                              width: 40,
                              margin: EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                "Нет, совсем не ограничивает ",
                                style: TextStyle(
                                  color: healthRestrictionThreeJ == 3
                                      ? myColorGrin
                                      : myColorText,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                healthRestrictionThreeJ = val;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                //дальше
                Container(
                  height: 630.0,
                  margin: EdgeInsets.only(
                    left: 5.0,
                    right: 5.0,
                    top: 20.0,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(3.0)),
                    border: Border.all(width: 2.0, color: Colors.white),
                  ),
                  child: Column(
                    children: <Widget>[
                      // здоровье
                      Container(
                        margin: EdgeInsets.only(
                          left: 20.0,
                          top: 3.0,
                        ),
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          '4. Бывало ли за последние 4 недели, что Ваше физическое состояние вызывало затруднения в Вашей работе или другой обычной повседневной деятельности, вследствие чего:',
                          style: TextStyle(
                            fontSize: 15,
                            color: myColorText,
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),

                      //a
                      Container(
                        margin: EdgeInsets.only(
                          left: 25.0,
                          top: 10.0,
                        ),
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          'a) пришлось сократить количество времени затрачиваемого на работу или другие дела',
                          style: TextStyle(
                            color: myColorText,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),

                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorGrin,
                            groupValue: physicalCondition4WeeksA,
                            value: 1,
                            title: Text(
                              "Да",
                              style: TextStyle(
                                color: physicalCondition4WeeksA == 1
                                    ? myColorGrin
                                    : myColorText,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                physicalCondition4WeeksA = val;
                              });
                            },
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorGrin,
                            groupValue: physicalCondition4WeeksA,
                            value: 2,
                            title: Text(
                              "Нет",
                              style: TextStyle(
                                color: physicalCondition4WeeksA == 2
                                    ? myColorGrin
                                    : myColorText,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                physicalCondition4WeeksA = val;
                              });
                            },
                          ),
                        ),
                      ),

                      //б
                      Container(
                        margin: EdgeInsets.only(
                          left: 25.0,
                          top: 15.0,
                        ),
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          'б)  выполнили меньше, чем хотели',
                          style: TextStyle(
                            color: myColorText,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),

                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorGrin,
                            groupValue: physicalCondition4WeeksB,
                            value: 1,
                            title: Text(
                              "Да",
                              style: TextStyle(
                                color: physicalCondition4WeeksB == 1
                                    ? myColorGrin
                                    : myColorText,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                physicalCondition4WeeksB = val;
                              });
                            },
                          ),
                        ),
                      ),

                      Flexible(
                        flex: 2,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorGrin,
                            groupValue: physicalCondition4WeeksB,
                            value: 2,
                            title: Container(
                              width: 40,
                              margin: EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                "Нет",
                                style: TextStyle(
                                  color: physicalCondition4WeeksB == 2
                                      ? myColorGrin
                                      : myColorText,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                physicalCondition4WeeksB = val;
                              });
                            },
                          ),
                        ),
                      ),

                      //в
                      Container(
                        margin: EdgeInsets.only(
                          left: 25.0,
                          top: 10.0,
                        ),
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          'в) вы были ограничены в выполнении какого-либо определенного вида работы или другой деятельности',
                          style: TextStyle(
                            color: myColorText,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),

                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorGrin,
                            groupValue: physicalCondition4WeeksC,
                            value: 1,
                            title: Text(
                              "Да",
                              style: TextStyle(
                                color: physicalCondition4WeeksC == 1
                                    ? myColorGrin
                                    : myColorText,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                physicalCondition4WeeksC = val;
                              });
                            },
                          ),
                        ),
                      ),

                      Flexible(
                        flex: 2,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorGrin,
                            groupValue: physicalCondition4WeeksC,
                            value: 2,
                            title: Container(
                              width: 40,
                              margin: EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                "Нет",
                                style: TextStyle(
                                  color: physicalCondition4WeeksC == 2
                                      ? myColorGrin
                                      : myColorText,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                physicalCondition4WeeksC = val;
                              });
                            },
                          ),
                        ),
                      ),

                      //г
                      Container(
                        margin: EdgeInsets.only(
                          left: 25.0,
                          top: 10.0,
                        ),
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          'г) были трудности при выполнении своей работы или других дел (например, они потребовали дополнительных усилий',
                          style: TextStyle(
                            color: myColorText,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),

                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorGrin,
                            groupValue: physicalCondition4WeeksD,
                            value: 1,
                            title: Text(
                              "Да",
                              style: TextStyle(
                                color: physicalCondition4WeeksD == 1
                                    ? myColorGrin
                                    : myColorText,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                physicalCondition4WeeksD = val;
                              });
                            },
                          ),
                        ),
                      ),

                      Flexible(
                        flex: 2,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorGrin,
                            groupValue: physicalCondition4WeeksD,
                            value: 2,
                            title: Container(
                              width: 40,
                              margin: EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                "Нет",
                                style: TextStyle(
                                  color: physicalCondition4WeeksD == 2
                                      ? myColorGrin
                                      : myColorText,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                physicalCondition4WeeksD = val;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                //еще дальше
                Container(
                  height: 450.0,
                  margin: EdgeInsets.only(
                    left: 5.0,
                    right: 5.0,
                    top: 20.0,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(3.0)),
                    border: Border.all(width: 2.0, color: Colors.white),
                  ),
                  child: Column(
                    children: <Widget>[
                      // здоровье
                      Container(
                        margin: EdgeInsets.only(
                          left: 20.0,
                          top: 3.0,
                        ),
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          '5. Бывало ли за последние 4 недели, что Ваше эмоциональное состояние вызывало затруднения в Вашей работе или другой обычной повседневной деятельности, вследствие чего:',
                          style: TextStyle(
                            fontSize: 15,
                            color: myColorText,
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),

                      //a
                      Container(
                        margin: EdgeInsets.only(
                          left: 25.0,
                          top: 10.0,
                        ),
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          'a) пришлось сократить количество времени, затрачиваемого на работу или другие дела',
                          style: TextStyle(
                            color: myColorText,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),

                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorGrin,
                            groupValue: workDifficulties4WeeksA,
                            value: 1,
                            title: Text(
                              "Да",
                              style: TextStyle(
                                color: workDifficulties4WeeksA == 1
                                    ? myColorGrin
                                    : myColorText,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                workDifficulties4WeeksA = val;
                              });
                            },
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorGrin,
                            groupValue: workDifficulties4WeeksA,
                            value: 2,
                            title: Text(
                              "Нет",
                              style: TextStyle(
                                color: workDifficulties4WeeksA == 2
                                    ? myColorGrin
                                    : myColorText,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                workDifficulties4WeeksA = val;
                              });
                            },
                          ),
                        ),
                      ),

                      //б
                      Container(
                        margin: EdgeInsets.only(
                          left: 25.0,
                          top: 15.0,
                        ),
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          'б)  выполнили меньше, чем хотели',
                          style: TextStyle(
                            color: myColorText,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),

                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorGrin,
                            groupValue: workDifficulties4WeeksB,
                            value: 1,
                            title: Text(
                              "Да",
                              style: TextStyle(
                                color: workDifficulties4WeeksB == 1
                                    ? myColorGrin
                                    : myColorText,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                workDifficulties4WeeksB = val;
                              });
                            },
                          ),
                        ),
                      ),

                      Flexible(
                        flex: 2,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorGrin,
                            groupValue: workDifficulties4WeeksB,
                            value: 2,
                            title: Container(
                              width: 40,
                              margin: EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                "Нет",
                                style: TextStyle(
                                  color: workDifficulties4WeeksB == 2
                                      ? myColorGrin
                                      : myColorText,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                workDifficulties4WeeksB = val;
                              });
                            },
                          ),
                        ),
                      ),

                      //в
                      Container(
                        margin: EdgeInsets.only(
                          left: 25.0,
                          top: 10.0,
                        ),
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          'в) выполняли свою работу или другие дела не так аккуратно, как обычно',
                          style: TextStyle(
                            color: myColorText,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),

                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorGrin,
                            groupValue: workDifficulties4WeeksC,
                            value: 1,
                            title: Text(
                              "Да",
                              style: TextStyle(
                                color: workDifficulties4WeeksC == 1
                                    ? myColorGrin
                                    : myColorText,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                workDifficulties4WeeksC = val;
                              });
                            },
                          ),
                        ),
                      ),

                      Flexible(
                        flex: 2,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorGrin,
                            groupValue: workDifficulties4WeeksC,
                            value: 2,
                            title: Container(
                              width: 40,
                              margin: EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                "Нет",
                                style: TextStyle(
                                  color: workDifficulties4WeeksC == 2
                                      ? myColorGrin
                                      : myColorText,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                workDifficulties4WeeksC = val;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                //дальше дальше
                Container(
                  height: 200.0,
                  margin: EdgeInsets.only(
                    left: 5.0,
                    right: 5.0,
                    top: 15.0,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(3.0)),
                    border: Border.all(width: 2.0, color: Colors.white),
                  ),
                  child: Column(
                    children: <Widget>[
                      // здоровье
                      Container(
                        margin: EdgeInsets.only(
                          left: 20.0,
                          top: 3.0,
                        ),
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          '6.Насколько Ваше физическое или эмоциональное состояние в течение последних 4 недель мешало Вам проводить время с семьей, друзьями, соседями или в коллективе?',
                          style: TextStyle(
                            fontSize: 15,
                            color: myColorText,
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
                            activeColor: myColorGrin,
                            groupValue: familyTime4Weeks,
                            value: 5,
                            title: Text(
                              "Совсем не мешало",
                              style: TextStyle(
                                color: familyTime4Weeks == 5
                                    ? myColorGrin
                                    : myColorText,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                familyTime4Weeks = val;
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
                            activeColor: myColorGrin,
                            groupValue: familyTime4Weeks,
                            value: 4,
                            title: Text(
                              "Немного",
                              style: TextStyle(
                                color: familyTime4Weeks == 4
                                    ? myColorGrin
                                    : myColorText,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                familyTime4Weeks = val;
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
                            activeColor: myColorGrin,
                            groupValue: familyTime4Weeks,
                            value: 3,
                            title: Container(
                              width: 40,
                              margin: EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                "Умеренно",
                                style: TextStyle(
                                  color: familyTime4Weeks == 3
                                      ? myColorGrin
                                      : myColorText,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                familyTime4Weeks = val;
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
                            activeColor: myColorGrin,
                            groupValue: familyTime4Weeks,
                            value: 2,
                            title: Text(
                              "Сильно",
                              style: TextStyle(
                                color: familyTime4Weeks == 2
                                    ? myColorGrin
                                    : myColorText,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                familyTime4Weeks = val;
                              });
                            },
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorGrin,
                            groupValue: familyTime4Weeks,
                            value: 1,
                            title: Text(
                              "Очень сильно",
                              style: TextStyle(
                                color: familyTime4Weeks == 1
                                    ? myColorGrin
                                    : myColorText,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                familyTime4Weeks = val;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                //еще еще
                Container(
                  height: 200.0,
                  margin: EdgeInsets.only(
                    left: 5.0,
                    right: 5.0,
                    top: 15.0,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(3.0)),
                    border: Border.all(width: 2.0, color: Colors.white),
                  ),
                  child: Column(
                    children: <Widget>[
                      // здоровье
                      Container(
                        margin: EdgeInsets.only(
                          left: 20.0,
                          top: 3.0,
                        ),
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          '7. Насколько сильную физическую боль Вы испытывали за последние 4 недели?',
                          style: TextStyle(
                            fontSize: 15,
                            color: myColorText,
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
                            activeColor: myColorGrin,
                            groupValue: physicalPain4Weeks,
                            value: 1,
                            title: Text(
                              "Совсем не испытывал(а)",
                              style: TextStyle(
                                color: physicalPain4Weeks == 1
                                    ? myColorGrin
                                    : myColorText,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                physicalPain4Weeks = val;
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
                            activeColor: myColorGrin,
                            groupValue: physicalPain4Weeks,
                            value: 2,
                            title: Text(
                              "Очень слабую",
                              style: TextStyle(
                                color: physicalPain4Weeks == 2
                                    ? myColorGrin
                                    : myColorText,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                physicalPain4Weeks = val;
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
                            activeColor: myColorGrin,
                            groupValue: physicalPain4Weeks,
                            value: 3,
                            title: Container(
                              width: 40,
                              margin: EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                "Слабую",
                                style: TextStyle(
                                  color: physicalPain4Weeks == 3
                                      ? myColorGrin
                                      : myColorText,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                physicalPain4Weeks = val;
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
                            activeColor: myColorGrin,
                            groupValue: physicalPain4Weeks,
                            value: 4,
                            title: Text(
                              "Умеренную",
                              style: TextStyle(
                                color: physicalPain4Weeks == 4
                                    ? myColorGrin
                                    : myColorText,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                physicalPain4Weeks = val;
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
                            activeColor: myColorGrin,
                            groupValue: physicalPain4Weeks,
                            value: 5,
                            title: Text(
                              "Сильную",
                              style: TextStyle(
                                color: physicalPain4Weeks == 5
                                    ? myColorGrin
                                    : myColorText,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                physicalPain4Weeks = val;
                              });
                            },
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorGrin,
                            groupValue: physicalPain4Weeks,
                            value: 6,
                            title: Text(
                              "Очень сильную",
                              style: TextStyle(
                                color: physicalPain4Weeks == 6
                                    ? myColorGrin
                                    : myColorText,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                physicalPain4Weeks = val;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                //еще еще 8
                Container(
                  height: 220.0,
                  margin: EdgeInsets.only(
                    left: 5.0,
                    right: 5.0,
                    top: 15.0,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(3.0)),
                    border: Border.all(width: 2.0, color: Colors.white),
                  ),
                  child: Column(
                    children: <Widget>[
                      // здоровье
                      Container(
                        margin: EdgeInsets.only(
                          left: 20.0,
                          top: 3.0,
                        ),
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          '8. В какой степени боль в течение последних 4 недель мешала Вам заниматься Вашей нормальной работой (включая работу вне дома и по дому)?',
                          style: TextStyle(
                            fontSize: 15,
                            color: myColorText,
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
                            activeColor: myColorGrin,
                            groupValue: normalWork4Weeks,
                            value: 1,
                            title: Text(
                              "Совсем не испытывал(а)",
                              style: TextStyle(
                                color: normalWork4Weeks == 1
                                    ? myColorGrin
                                    : myColorText,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                normalWork4Weeks = val;
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
                            activeColor: myColorGrin,
                            groupValue: normalWork4Weeks,
                            value: 2,
                            title: Text(
                              "Немного",
                              style: TextStyle(
                                color: normalWork4Weeks == 2
                                    ? myColorGrin
                                    : myColorText,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                normalWork4Weeks = val;
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
                            activeColor: myColorGrin,
                            groupValue: normalWork4Weeks,
                            value: 3,
                            title: Container(
                              width: 40,
                              margin: EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                "Умеренно",
                                style: TextStyle(
                                  color: normalWork4Weeks == 3
                                      ? myColorGrin
                                      : myColorText,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                normalWork4Weeks = val;
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
                            activeColor: myColorGrin,
                            groupValue: normalWork4Weeks,
                            value: 4,
                            title: Text(
                              "Сильно",
                              style: TextStyle(
                                color: normalWork4Weeks == 4
                                    ? myColorGrin
                                    : myColorText,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                normalWork4Weeks = val;
                              });
                            },
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorGrin,
                            groupValue: normalWork4Weeks,
                            value: 5,
                            title: Text(
                              "Очень сильно",
                              style: TextStyle(
                                color: normalWork4Weeks == 5
                                    ? myColorGrin
                                    : myColorText,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                normalWork4Weeks = val;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                //9
                Container(
                  height: 1400.0,
                  margin: EdgeInsets.only(
                    left: 5.0,
                    right: 5.0,
                    top: 20.0,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(3.0)),
                    border: Border.all(width: 2.0, color: Colors.white),
                  ),
                  child: Column(
                    children: <Widget>[
                      // здоровье
                      Container(
                        margin: EdgeInsets.only(
                          left: 20.0,
                          top: 3.0,
                        ),
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          '9.Как часто в течение последних 4 недель...',
                          style: TextStyle(
                            fontSize: 15,
                            color: myColorText,
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),

                      //a
                      Container(
                        margin: EdgeInsets.only(
                          left: 25.0,
                          top: 10.0,
                        ),
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          'a) вы чувствовали себя бодрым (ой)?',
                          style: TextStyle(
                            color: myColorText,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),

                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorGrin,
                            groupValue: fourWeeksA,
                            value: 5,
                            title: Text(
                              "Все время",
                              style: TextStyle(
                                color:
                                    fourWeeksA == 5 ? myColorGrin : myColorText,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                fourWeeksA = val;
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
                            activeColor: myColorGrin,
                            groupValue: fourWeeksA,
                            value: 4,
                            title: Text(
                              "Большую часть времени",
                              style: TextStyle(
                                color:
                                    fourWeeksA == 4 ? myColorGrin : myColorText,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                fourWeeksA = val;
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
                            activeColor: myColorGrin,
                            groupValue: fourWeeksA,
                            value: 3,
                            title: Container(
                              width: 40,
                              margin: EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                "Часто",
                                style: TextStyle(
                                  color: fourWeeksA == 3
                                      ? myColorGrin
                                      : myColorText,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                fourWeeksA = val;
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
                            activeColor: myColorGrin,
                            groupValue: fourWeeksA,
                            value: 2,
                            title: Container(
                              width: 40,
                              margin: EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                "Иногда",
                                style: TextStyle(
                                  color: fourWeeksA == 2
                                      ? myColorGrin
                                      : myColorText,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                fourWeeksA = val;
                              });
                            },
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorGrin,
                            groupValue: fourWeeksA,
                            value: 1,
                            title: Container(
                              width: 40,
                              margin: EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                "Редко",
                                style: TextStyle(
                                  color: fourWeeksA == 1
                                      ? myColorGrin
                                      : myColorText,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                fourWeeksA = val;
                              });
                            },
                          ),
                        ),
                      ),

                      //б
                      Container(
                        margin: EdgeInsets.only(
                          left: 25.0,
                          top: 15.0,
                        ),
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          'б) вы сильно нервничали?',
                          style: TextStyle(
                            color: myColorText,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),

                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorGrin,
                            groupValue: fourWeeksB,
                            value: 1,
                            title: Text(
                              "Все время",
                              style: TextStyle(
                                color:
                                    fourWeeksB == 1 ? myColorGrin : myColorText,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                fourWeeksB = val;
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
                            activeColor: myColorGrin,
                            groupValue: fourWeeksB,
                            value: 2,
                            title: Text(
                              "Большую часть времени",
                              style: TextStyle(
                                color:
                                    fourWeeksB == 2 ? myColorGrin : myColorText,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                fourWeeksB = val;
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
                            activeColor: myColorGrin,
                            groupValue: fourWeeksB,
                            value: 3,
                            title: Container(
                              width: 40,
                              margin: EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                "Часто",
                                style: TextStyle(
                                  color: fourWeeksB == 3
                                      ? myColorGrin
                                      : myColorText,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                fourWeeksB = val;
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
                            activeColor: myColorGrin,
                            groupValue: fourWeeksB,
                            value: 4,
                            title: Container(
                              width: 40,
                              margin: EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                "Иногда",
                                style: TextStyle(
                                  color: fourWeeksB == 4
                                      ? myColorGrin
                                      : myColorText,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                fourWeeksB = val;
                              });
                            },
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorGrin,
                            groupValue: fourWeeksB,
                            value: 5,
                            title: Container(
                              width: 40,
                              margin: EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                "Редко",
                                style: TextStyle(
                                  color: fourWeeksB == 5
                                      ? myColorGrin
                                      : myColorText,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                fourWeeksB = val;
                              });
                            },
                          ),
                        ),
                      ),

                      //в
                      Container(
                        margin: EdgeInsets.only(
                          left: 25.0,
                          top: 10.0,
                        ),
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          'в) вы чувствовали себя таким (ой) подавленным (ой), что ничто не могло Вас взбодрить?',
                          style: TextStyle(
                            color: myColorText,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),

                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorGrin,
                            groupValue: fourWeeksC,
                            value: 1,
                            title: Text(
                              "Все время",
                              style: TextStyle(
                                color:
                                    fourWeeksC == 1 ? myColorGrin : myColorText,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                fourWeeksC = val;
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
                            activeColor: myColorGrin,
                            groupValue: fourWeeksC,
                            value: 2,
                            title: Text(
                              "Большую часть времени",
                              style: TextStyle(
                                color:
                                    fourWeeksC == 2 ? myColorGrin : myColorText,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                fourWeeksC = val;
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
                            activeColor: myColorGrin,
                            groupValue: fourWeeksC,
                            value: 3,
                            title: Container(
                              width: 40,
                              margin: EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                "Часто",
                                style: TextStyle(
                                  color: fourWeeksC == 3
                                      ? myColorGrin
                                      : myColorText,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                fourWeeksC = val;
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
                            activeColor: myColorGrin,
                            groupValue: fourWeeksC,
                            value: 4,
                            title: Container(
                              width: 40,
                              margin: EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                "Иногда",
                                style: TextStyle(
                                  color: fourWeeksC == 4
                                      ? myColorGrin
                                      : myColorText,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                fourWeeksC = val;
                              });
                            },
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorGrin,
                            groupValue: fourWeeksC,
                            value: 5,
                            title: Container(
                              width: 40,
                              margin: EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                "Редко",
                                style: TextStyle(
                                  color: fourWeeksC == 5
                                      ? myColorGrin
                                      : myColorText,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                fourWeeksC = val;
                              });
                            },
                          ),
                        ),
                      ),

                      //г
                      Container(
                        margin: EdgeInsets.only(
                          left: 25.0,
                          top: 10.0,
                        ),
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          'г) вы чувствовали себя спокойным (ой) и умиротворенным (ой)?',
                          style: TextStyle(
                            color: myColorText,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),

                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorGrin,
                            groupValue: fourWeeksD,
                            value: 5,
                            title: Text(
                              "Все время",
                              style: TextStyle(
                                color:
                                    fourWeeksD == 5 ? myColorGrin : myColorText,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                fourWeeksD = val;
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
                            activeColor: myColorGrin,
                            groupValue: fourWeeksD,
                            value: 4,
                            title: Text(
                              "Большую часть времени",
                              style: TextStyle(
                                color:
                                    fourWeeksD == 4 ? myColorGrin : myColorText,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                fourWeeksD = val;
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
                            activeColor: myColorGrin,
                            groupValue: fourWeeksD,
                            value: 3,
                            title: Container(
                              width: 40,
                              margin: EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                "Часто",
                                style: TextStyle(
                                  color: fourWeeksD == 3
                                      ? myColorGrin
                                      : myColorText,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                fourWeeksD = val;
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
                            activeColor: myColorGrin,
                            groupValue: fourWeeksD,
                            value: 2,
                            title: Container(
                              width: 40,
                              margin: EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                "Иногда",
                                style: TextStyle(
                                  color: fourWeeksD == 2
                                      ? myColorGrin
                                      : myColorText,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                fourWeeksD = val;
                              });
                            },
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorGrin,
                            groupValue: fourWeeksD,
                            value: 1,
                            title: Container(
                              width: 40,
                              margin: EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                "Редко",
                                style: TextStyle(
                                  color: fourWeeksD == 1
                                      ? myColorGrin
                                      : myColorText,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                fourWeeksD = val;
                              });
                            },
                          ),
                        ),
                      ),

                      //д
                      Container(
                        margin: EdgeInsets.only(
                          left: 25.0,
                          top: 10.0,
                        ),
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          'д) вы чувствовали себя полным(ой) сил и энергии?',
                          style: TextStyle(
                            color: myColorText,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),

                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorGrin,
                            groupValue: fourWeeksE,
                            value: 5,
                            title: Text(
                              "Все время",
                              style: TextStyle(
                                color:
                                    fourWeeksE == 5 ? myColorGrin : myColorText,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                fourWeeksE = val;
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
                            activeColor: myColorGrin,
                            groupValue: fourWeeksE,
                            value: 4,
                            title: Text(
                              "Большую часть времени",
                              style: TextStyle(
                                color:
                                    fourWeeksE == 4 ? myColorGrin : myColorText,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                fourWeeksE = val;
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
                            activeColor: myColorGrin,
                            groupValue: fourWeeksE,
                            value: 3,
                            title: Container(
                              width: 40,
                              margin: EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                "Часто",
                                style: TextStyle(
                                  color: fourWeeksE == 3
                                      ? myColorGrin
                                      : myColorText,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                fourWeeksE = val;
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
                            activeColor: myColorGrin,
                            groupValue: fourWeeksE,
                            value: 2,
                            title: Container(
                              width: 40,
                              margin: EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                "Иногда",
                                style: TextStyle(
                                  color: fourWeeksE == 2
                                      ? myColorGrin
                                      : myColorText,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                fourWeeksE = val;
                              });
                            },
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorGrin,
                            groupValue: fourWeeksE,
                            value: 1,
                            title: Container(
                              width: 40,
                              margin: EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                "Редко",
                                style: TextStyle(
                                  color: fourWeeksE == 1
                                      ? myColorGrin
                                      : myColorText,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                fourWeeksE = val;
                              });
                            },
                          ),
                        ),
                      ),

                      //е
                      Container(
                        margin: EdgeInsets.only(
                          left: 25.0,
                          top: 10.0,
                        ),
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          'е) вы чувствовали себя упавшим(ей) духом и печальным(ой)?',
                          style: TextStyle(
                            color: myColorText,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),

                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorGrin,
                            groupValue: fourWeeksF,
                            value: 1,
                            title: Text(
                              "Все время",
                              style: TextStyle(
                                color:
                                    fourWeeksF == 1 ? myColorGrin : myColorText,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                fourWeeksF = val;
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
                            activeColor: myColorGrin,
                            groupValue: fourWeeksF,
                            value: 2,
                            title: Text(
                              "Большую часть времени",
                              style: TextStyle(
                                color:
                                    fourWeeksF == 2 ? myColorGrin : myColorText,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                fourWeeksF = val;
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
                            activeColor: myColorGrin,
                            groupValue: fourWeeksF,
                            value: 3,
                            title: Container(
                              width: 40,
                              margin: EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                "Часто",
                                style: TextStyle(
                                  color: fourWeeksF == 3
                                      ? myColorGrin
                                      : myColorText,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                fourWeeksF = val;
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
                            activeColor: myColorGrin,
                            groupValue: fourWeeksF,
                            value: 4,
                            title: Container(
                              width: 40,
                              margin: EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                "Иногда",
                                style: TextStyle(
                                  color: fourWeeksF == 4
                                      ? myColorGrin
                                      : myColorText,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                fourWeeksF = val;
                              });
                            },
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorGrin,
                            groupValue: fourWeeksF,
                            value: 5,
                            title: Container(
                              width: 40,
                              margin: EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                "Редко",
                                style: TextStyle(
                                  color: fourWeeksF == 5
                                      ? myColorGrin
                                      : myColorText,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                fourWeeksF = val;
                              });
                            },
                          ),
                        ),
                      ),

                      //ж
                      Container(
                        margin: EdgeInsets.only(
                          left: 25.0,
                          top: 10.0,
                        ),
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          'ж) вы чувствовали себя измученным(ой)?',
                          style: TextStyle(
                            color: myColorText,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),

                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorGrin,
                            groupValue: fourWeeksG,
                            value: 1,
                            title: Text(
                              "Все время",
                              style: TextStyle(
                                color:
                                    fourWeeksG == 1 ? myColorGrin : myColorText,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                fourWeeksG = val;
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
                            activeColor: myColorGrin,
                            groupValue: fourWeeksG,
                            value: 2,
                            title: Text(
                              "Большую часть времени",
                              style: TextStyle(
                                color:
                                    fourWeeksG == 2 ? myColorGrin : myColorText,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                fourWeeksG = val;
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
                            activeColor: myColorGrin,
                            groupValue: fourWeeksG,
                            value: 3,
                            title: Container(
                              width: 40,
                              margin: EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                "Часто",
                                style: TextStyle(
                                  color: fourWeeksG == 3
                                      ? myColorGrin
                                      : myColorText,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                fourWeeksG = val;
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
                            activeColor: myColorGrin,
                            groupValue: fourWeeksG,
                            value: 4,
                            title: Container(
                              width: 40,
                              margin: EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                "Иногда",
                                style: TextStyle(
                                  color: fourWeeksG == 4
                                      ? myColorGrin
                                      : myColorText,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                fourWeeksG = val;
                              });
                            },
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorGrin,
                            groupValue: fourWeeksG,
                            value: 5,
                            title: Container(
                              width: 40,
                              margin: EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                "Редко",
                                style: TextStyle(
                                  color: fourWeeksG == 5
                                      ? myColorGrin
                                      : myColorText,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                fourWeeksG = val;
                              });
                            },
                          ),
                        ),
                      ),

                      //з
                      Container(
                        margin: EdgeInsets.only(
                          left: 25.0,
                          top: 10.0,
                        ),
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          'з) вы чувствовали себя счастливым(ой)?',
                          style: TextStyle(
                            color: myColorText,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),

                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorGrin,
                            groupValue: fourWeeksH,
                            value: 5,
                            title: Text(
                              "Все время",
                              style: TextStyle(
                                color:
                                    fourWeeksH == 5 ? myColorGrin : myColorText,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                fourWeeksH = val;
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
                            activeColor: myColorGrin,
                            groupValue: fourWeeksH,
                            value: 4,
                            title: Text(
                              "Большую часть времени",
                              style: TextStyle(
                                color:
                                    fourWeeksH == 4 ? myColorGrin : myColorText,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                fourWeeksH = val;
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
                            activeColor: myColorGrin,
                            groupValue: fourWeeksH,
                            value: 3,
                            title: Container(
                              width: 40,
                              margin: EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                "Часто",
                                style: TextStyle(
                                  color: fourWeeksH == 3
                                      ? myColorGrin
                                      : myColorText,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                fourWeeksH = val;
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
                            activeColor: myColorGrin,
                            groupValue: fourWeeksH,
                            value: 2,
                            title: Container(
                              width: 40,
                              margin: EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                "Иногда",
                                style: TextStyle(
                                  color: fourWeeksH == 2
                                      ? myColorGrin
                                      : myColorText,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                fourWeeksH = val;
                              });
                            },
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorGrin,
                            groupValue: fourWeeksH,
                            value: 1,
                            title: Container(
                              width: 40,
                              margin: EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                "Редко",
                                style: TextStyle(
                                  color: fourWeeksH == 1
                                      ? myColorGrin
                                      : myColorText,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                fourWeeksH = val;
                              });
                            },
                          ),
                        ),
                      ),

                      //и
                      Container(
                        margin: EdgeInsets.only(
                          left: 25.0,
                          top: 10.0,
                        ),
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          'и) вы чувствовали себя уставшим(ей)?',
                          style: TextStyle(
                            color: myColorText,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),

                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorGrin,
                            groupValue: fourWeeksI,
                            value: 1,
                            title: Text(
                              "Все время",
                              style: TextStyle(
                                color:
                                    fourWeeksI == 1 ? myColorGrin : myColorText,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                fourWeeksI = val;
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
                            activeColor: myColorGrin,
                            groupValue: fourWeeksI,
                            value: 2,
                            title: Text(
                              "Большую часть времени",
                              style: TextStyle(
                                color:
                                    fourWeeksI == 2 ? myColorGrin : myColorText,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                fourWeeksI = val;
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
                            activeColor: myColorGrin,
                            groupValue: fourWeeksI,
                            value: 3,
                            title: Container(
                              width: 40,
                              margin: EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                "Часто",
                                style: TextStyle(
                                  color: fourWeeksI == 3
                                      ? myColorGrin
                                      : myColorText,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                fourWeeksI = val;
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
                            activeColor: myColorGrin,
                            groupValue: fourWeeksI,
                            value: 4,
                            title: Container(
                              width: 40,
                              margin: EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                "Иногда",
                                style: TextStyle(
                                  color: fourWeeksI == 4
                                      ? myColorGrin
                                      : myColorText,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                fourWeeksI = val;
                              });
                            },
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorGrin,
                            groupValue: fourWeeksI,
                            value: 5,
                            title: Container(
                              width: 40,
                              margin: EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                "Редко",
                                style: TextStyle(
                                  color: fourWeeksI == 5
                                      ? myColorGrin
                                      : myColorText,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                fourWeeksI = val;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                //10
                Container(
                  height: 210.0,
                  margin: EdgeInsets.only(
                    left: 5.0,
                    right: 5.0,
                    top: 15.0,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(3.0)),
                    border: Border.all(width: 2.0, color: Colors.white),
                  ),
                  child: Column(
                    children: <Widget>[
                      // здоровье
                      Container(
                        margin: EdgeInsets.only(
                          left: 20.0,
                          top: 3.0,
                        ),
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          '10. . Как часто за последние 4 недели Ваше физическое или эмоциональное состояние мешало Вам активно общаться с людьми (навещать друзей, родственников и т.п.)?',
                          style: TextStyle(
                            fontSize: 15,
                            color: myColorText,
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
                            activeColor: myColorGrin,
                            groupValue: activeCommunicationWithPeople,
                            value: 1,
                            title: Text(
                              "Все время",
                              style: TextStyle(
                                color: activeCommunicationWithPeople == 1
                                    ? myColorGrin
                                    : myColorText,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                activeCommunicationWithPeople = val;
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
                            activeColor: myColorGrin,
                            groupValue: activeCommunicationWithPeople,
                            value: 2,
                            title: Text(
                              "Большую часть времени",
                              style: TextStyle(
                                color: activeCommunicationWithPeople == 2
                                    ? myColorGrin
                                    : myColorText,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                activeCommunicationWithPeople = val;
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
                            activeColor: myColorGrin,
                            groupValue: activeCommunicationWithPeople,
                            value: 3,
                            title: Container(
                              width: 40,
                              margin: EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                "Иногда",
                                style: TextStyle(
                                  color: activeCommunicationWithPeople == 3
                                      ? myColorGrin
                                      : myColorText,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                activeCommunicationWithPeople = val;
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
                            activeColor: myColorGrin,
                            groupValue: activeCommunicationWithPeople,
                            value: 4,
                            title: Text(
                              "Редко",
                              style: TextStyle(
                                color: activeCommunicationWithPeople == 4
                                    ? myColorGrin
                                    : myColorText,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                activeCommunicationWithPeople = val;
                              });
                            },
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorGrin,
                            groupValue: activeCommunicationWithPeople,
                            value: 5,
                            title: Text(
                              "Ни разу",
                              style: TextStyle(
                                color: activeCommunicationWithPeople == 5
                                    ? myColorGrin
                                    : myColorText,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                activeCommunicationWithPeople = val;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                //11
                Container(
                  height: 800.0,
                  margin: EdgeInsets.only(
                    left: 5.0,
                    right: 5.0,
                    top: 20.0,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(3.0)),
                    border: Border.all(width: 2.0, color: Colors.white),
                  ),
                  child: Column(
                    children: <Widget>[
                      // здоровье
                      Container(
                        margin: EdgeInsets.only(
                          left: 20.0,
                          top: 3.0,
                        ),
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          '11.Насколько верно или неверно представляется по отношению к Вам каждое из ниже перечисленных утверждений?',
                          style: TextStyle(
                            fontSize: 15,
                            color: myColorText,
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),

                      //a
                      Container(
                        margin: EdgeInsets.only(
                          left: 25.0,
                          top: 10.0,
                        ),
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          'a) мне кажется, что я более склонен к болезням, чем другие',
                          style: TextStyle(
                            color: myColorText,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),

                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorGrin,
                            groupValue: statementA,
                            value: 1,
                            title: Text(
                              "Определенно верно",
                              style: TextStyle(
                                color:
                                    statementA == 1 ? myColorGrin : myColorText,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                statementA = val;
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
                            activeColor: myColorGrin,
                            groupValue: statementA,
                            value: 2,
                            title: Text(
                              "В основном верно",
                              style: TextStyle(
                                color:
                                    statementA == 2 ? myColorGrin : myColorText,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                statementA = val;
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
                            activeColor: myColorGrin,
                            groupValue: statementA,
                            value: 3,
                            title: Container(
                              width: 40,
                              margin: EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                "Не знаю ",
                                style: TextStyle(
                                  color: statementA == 3
                                      ? myColorGrin
                                      : myColorText,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                statementA = val;
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
                            activeColor: myColorGrin,
                            groupValue: statementA,
                            value: 4,
                            title: Container(
                              width: 40,
                              margin: EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                "В основном не верно ",
                                style: TextStyle(
                                  color: statementA == 4
                                      ? myColorGrin
                                      : myColorText,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                statementA = val;
                              });
                            },
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorGrin,
                            groupValue: statementA,
                            value: 5,
                            title: Container(
                              width: 40,
                              margin: EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                "Определенно не верно",
                                style: TextStyle(
                                  color: statementA == 5
                                      ? myColorGrin
                                      : myColorText,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                statementA = val;
                              });
                            },
                          ),
                        ),
                      ),

                      //б
                      Container(
                        margin: EdgeInsets.only(
                          left: 25.0,
                          top: 15.0,
                        ),
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          'б) мое здоровье не хуже, чем у большинства моих знакомых',
                          style: TextStyle(
                            color: myColorText,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),

                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorGrin,
                            groupValue: statementB,
                            value: 5,
                            title: Text(
                              "Определенно верно",
                              style: TextStyle(
                                color:
                                    statementB == 5 ? myColorGrin : myColorText,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                statementB = val;
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
                            activeColor: myColorGrin,
                            groupValue: statementB,
                            value: 4,
                            title: Text(
                              "В основном верно",
                              style: TextStyle(
                                color:
                                    statementB == 4 ? myColorGrin : myColorText,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                statementB = val;
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
                            activeColor: myColorGrin,
                            groupValue: statementB,
                            value: 3,
                            title: Container(
                              width: 40,
                              margin: EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                "Не знаю ",
                                style: TextStyle(
                                  color: statementB == 3
                                      ? myColorGrin
                                      : myColorText,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                statementB = val;
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
                            activeColor: myColorGrin,
                            groupValue: statementB,
                            value: 2,
                            title: Container(
                              width: 40,
                              margin: EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                "В основном не верно ",
                                style: TextStyle(
                                  color: statementB == 2
                                      ? myColorGrin
                                      : myColorText,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                statementB = val;
                              });
                            },
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorGrin,
                            groupValue: statementB,
                            value: 1,
                            title: Container(
                              width: 40,
                              margin: EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                "Определенно не верно",
                                style: TextStyle(
                                  color: statementB == 1
                                      ? myColorGrin
                                      : myColorText,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                statementB = val;
                              });
                            },
                          ),
                        ),
                      ),

                      //в
                      Container(
                        margin: EdgeInsets.only(
                          left: 25.0,
                          top: 10.0,
                        ),
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          'в) я ожидаю, что мое здоровье ухудшится',
                          style: TextStyle(
                            color: myColorText,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),

                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorGrin,
                            groupValue: statementC,
                            value: 1,
                            title: Text(
                              "Определенно верно",
                              style: TextStyle(
                                color:
                                    statementC == 1 ? myColorGrin : myColorText,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                statementC = val;
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
                            activeColor: myColorGrin,
                            groupValue: statementC,
                            value: 2,
                            title: Text(
                              "В основном верно",
                              style: TextStyle(
                                color:
                                    statementC == 2 ? myColorGrin : myColorText,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                statementC = val;
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
                            activeColor: myColorGrin,
                            groupValue: statementC,
                            value: 3,
                            title: Container(
                              width: 40,
                              margin: EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                "Не знаю ",
                                style: TextStyle(
                                  color: statementC == 3
                                      ? myColorGrin
                                      : myColorText,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                statementC = val;
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
                            activeColor: myColorGrin,
                            groupValue: statementC,
                            value: 4,
                            title: Container(
                              width: 40,
                              margin: EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                "В основном не верно ",
                                style: TextStyle(
                                  color: statementC == 4
                                      ? myColorGrin
                                      : myColorText,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                statementC = val;
                              });
                            },
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorGrin,
                            groupValue: statementC,
                            value: 5,
                            title: Container(
                              width: 40,
                              margin: EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                "Определенно не верно",
                                style: TextStyle(
                                  color: statementC == 5
                                      ? myColorGrin
                                      : myColorText,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                statementC = val;
                              });
                            },
                          ),
                        ),
                      ),

                      //г
                      Container(
                        margin: EdgeInsets.only(
                          left: 25.0,
                          top: 10.0,
                        ),
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          'г) у меня отличное здоровье',
                          style: TextStyle(
                            color: myColorText,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),

                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorGrin,
                            groupValue: statementD,
                            value: 5,
                            title: Text(
                              "Определенно верно",
                              style: TextStyle(
                                color:
                                    statementD == 5 ? myColorGrin : myColorText,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                statementD = val;
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
                            activeColor: myColorGrin,
                            groupValue: statementD,
                            value: 4,
                            title: Text(
                              "В основном верно",
                              style: TextStyle(
                                color:
                                    statementD == 4 ? myColorGrin : myColorText,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                statementD = val;
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
                            activeColor: myColorGrin,
                            groupValue: statementD,
                            value: 3,
                            title: Container(
                              width: 40,
                              margin: EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                "Не знаю ",
                                style: TextStyle(
                                  color: statementD == 3
                                      ? myColorGrin
                                      : myColorText,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                statementD = val;
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
                            activeColor: myColorGrin,
                            groupValue: statementD,
                            value: 2,
                            title: Container(
                              width: 40,
                              margin: EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                "В основном не верно ",
                                style: TextStyle(
                                  color: statementD == 2
                                      ? myColorGrin
                                      : myColorText,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                statementD = val;
                              });
                            },
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        fit: FlexFit.loose,
                        child: Container(
                          child: RadioListTile(
                            activeColor: myColorGrin,
                            groupValue: statementD,
                            value: 1,
                            title: Container(
                              width: 40,
                              margin: EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                "Определенно не верно",
                                style: TextStyle(
                                  color: statementD == 1
                                      ? myColorGrin
                                      : myColorText,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                statementD = val;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                //Кнопка
                Container(
                  margin: EdgeInsets.only(
                      top: 20.0, left: 15.0, right: 15.0, bottom: 10.0),
                  height: 45.0,
                  child: RaisedButton(
                    color: myColorGrin,
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
        )
      ]),
    );
  }

  void resultButton() {
    //PFsum = 3a + 3б + 3в + 3г + 3д + 3е + 3ж + 3з + 3и + 3к
    int sumPF = healthRestrictionThreeA +
        healthRestrictionThreeB +
        healthRestrictionThreeC +
        healthRestrictionThreeD +
        healthRestrictionThreeE +
        healthRestrictionThreeF +
        healthRestrictionThreeG +
        healthRestrictionThreeH +
        healthRestrictionThreeI +
        healthRestrictionThreeJ;

    //PF = ( (PFsum – 10)/ 20)  100
    pf3 = ((sumPF.toDouble() - 10) / 20) * 100;

    //RPsum = 4а + 4б + 4в + 4г

    sumPr = physicalCondition4WeeksA +
        physicalCondition4WeeksB +
        physicalCondition4WeeksC +
        physicalCondition4WeeksD;

    //RP = ((RPsum – 4)/ 4)  100

    pr4 = ((sumPr - 4) / 4) * 100;

    //«Интенсивность боли (Bodily pain - BP)»:

    //дан ответ на 7 и 8 вопрос\
    if (physicalPain4Weeks != 0 && normalWork4Weeks != 0) {
      //перебираем балы за 7 вопрос
      switch (physicalPain4Weeks) {
        case 1:
          myBR7(6.0);
          break;
        case 2:
          myBR7(5.4);
          break;
        case 3:
          myBR7(4.2);
          break;
        case 4:
          myBR7(3.1);
          break;
        case 5:
          myBR7(2.2);
          break;
        case 6:
          myBR7(1.0);
          break;
      }

      //переберем баллы за 8 вопрос

      switch (normalWork4Weeks) {
        case 1:
          {
            if (bp7 == 1.0) {
              myBR8(6.0);
            } else if (bp7 >= 2 && bp7 <= 6) {
              myBR8(5.0);
            }

            break;
          }

        case 2:
          myBR8(4.0);
          break;
        case 3:
          myBR8(3.0);
          break;
        case 4:
          myBR8(2.0);
          break;
        case 5:
          myBR8(1.0);
          break;
        case 6:
          myBR8(1.0);
          break;
      }
    }
    //дан ответ на вопрос №7 и пропущен ответ на вопрос №8
    else if (physicalPain4Weeks != 0 && normalWork4Weeks == 0) {
      switch (physicalPain4Weeks) {
        case 1:
          myBR7(6.0);
          myBR8(6.0);
          break;
        case 2:
          myBR7(5.4);
          myBR8(5.4);
          break;
        case 3:
          myBR7(4.2);
          myBR8(4.2);
          break;
        case 4:
          myBR7(3.1);
          myBR8(3.1);
          break;
        case 5:
          myBR7(2.2);
          myBR8(2.2);
          break;
        case 6:
          myBR7(0.0);
          myBR8(0.0);
          break;
      }
    }

    //Если дан ответ на вопрос №8 и пропущен ответ на вопрос №7
    else if (physicalPain4Weeks == 0 && normalWork4Weeks != 0) {
      switch (normalWork4Weeks) {
        case 1:
          myBR8(6.0);
          myBR7(6.0);
          break;

        case 2:
          myBR8(4.75);
          myBR7(4.75);
          break;
        case 3:
          myBR8(3.5);
          myBR7(3.5);
          break;
        case 4:
          myBR8(2.25);
          myBR7(2.25);
          break;
        case 5:
          myBR8(1.0);
          myBR7(1.0);
          break;
        case 6:
          myBR8(0.0);
          myBR7(0.0);
          break;
      }
    }

    //BP = [((7” + 8”) – 2)/ 10]  100
    br78 = (((bp7 + bp8) - 2) / 10) * 100;

    //GHsum = 1 + 11а + 11б + 11в + 11г
    sumGH = 1.0 + statementA + statementB + statementC + statementD;

    //GH = ((GHsum – 5)/ 20)  100

    gh11 = ((sumGH - 5) / 20) * 100;

    //VTsum = 9а + 9д + 9ж + 9и
    int sumTV = fourWeeksA + fourWeeksE + fourWeeksG + fourWeeksI;

    //VT = ((VTsum – 4)/ 20)  100
    vt91 = ((sumTV - 4) / 20) * 100;

    //SFsum = 6 + 10
    int sumSF610 = familyTime4Weeks + activeCommunicationWithPeople;

    //SF = ((SFsum – 2)/ 8)  100

    sf610 = ((sumSF610 - 2) / 8) * 100;

    //REsum = 5а + 5б + 5в

    int sumRE = physicalCondition4WeeksA +
        physicalCondition4WeeksB +
        physicalCondition4WeeksC +
        physicalCondition4WeeksD;

    //RE = ((REsum – 3)/ 3)  100
    re5 = ((sumRE - 3) / 3) * 100;

    //MHsum = 9б + 9в + 9г + 9е + 9з
    int sumMH = fourWeeksB + fourWeeksC + fourWeeksD + fourWeeksF + fourWeeksH;

    //MH = ((MHsum – 5)/ 25)  100

    mh92 = ((sumMH - 5) / 25) * 100;

    double pf3z = (pf3 - 84.52404) / 22.89490;
    double pr4z = (pr4 - 81.19907) / 33.797290;
    double br78z = (br78 - 75.49196) / 23.558790;
    double gh11z = (gh11 - 72.21316) / 20.16964;
    double vt91z = (vt91 - 61.05453) / 20.86942;
    double sf610z = (sf610 - 83.59753) / 22.37642;
    double re5z = (re5 - 81.29467) / 33.02717;
    double mh92z = (mh92 - 74.84212) / 18.01189;

    //PHsum = (PF-Z  0,42402) + (RP-Z  0,35119) + (BP-Z  0,31754) + (SF -Z  - 0,00753) + (MH-Z  -0,22069) + (RE-Z  -0,19206) + (VT-Z  0,02877) + (GH-Z  0,24954)
    sumPH = (pf3z * 0.42402) +
        (pr4z * 0.35119) +
        (br78z * 0.31754) +
        (sf610z * -0.00753) +
        (mh92z * -0.22069) +
        (re5z * -0.19206) +
        (vt91z * 0.02877) +
        (gh11z * 0.24954);

    //PH = (PHsum  10) + 50
    ph = (sumPH * 10) + 50;

    if (pf3z <= 50) {
      message +=
          "Физическое состояние ограничивает выполнение физических нагрузок (самообслуживание, ходьба, подъем по лестнице, переноска тяжестей и т.п.).";
    } else if (pf3z > 50) {
      message +=
          "Физическое состояние не ограничивает выполнение физических нагрузок (самообслуживание, ходьба, подъем по лестнице, переноска тяжестей и т.п.)";
    }

    if (pr4 <= 50) {
      message +=
          "Повседневная деятельность (работа, выполнение будничных обязанностей) ограничена физическим состоянием личности";
    } else if (pr4 > 50) {
      message +=
          "Повседневная деятельность (работа, выполнение будничных обязанностей) не ограничена физическим состоянием личности";
    }

    if (br78 <= 50) {
      message +=
          "Интенсивность боли и ее влияние на способность заниматься повседневной деятельностью, включая работу по дому и вне дома – ограничивает активность личности";
    } else {
      message +=
          "Интенсивность боли и ее влияние на способность заниматься повседневной деятельностью, включая работу по дому и вне дома не ограничивает активность личности";
    }

    if (vt91 <= 20) {
      message +=
          "Низкая оценка своей жизненной активности -  ощущение себя утомлённым, обессиленным";
    } else if (vt91 > 20 && vt91 <= 50) {
      message +=
          "Пониженная оценка своей жизненной активности -  ощущение себя утомлённым, обессиленным";
    } else if (vt91 > 50 && vt91 <= 80) {
      message +=
          "Повышенная оценка своей жизненной активности - ощущение себя полным сил и энергии";
    } else if (vt91 > 80) {
      message +=
          "Высокая оценка своей жизненной активности - ощущение себя полным сил и энергии";
    }

    if (sf610 <= 30) {
      message +=
          "Тяжелая степень ограничения социальных контактов в связи с ухудшением физического и эмоционального состояния";
    } else if (sf610 > 30 && sf610 <= 50) {
      message +=
          "Легкая степень ограничения социальных контактов в связи с ухудшением физического и эмоционального состояния";
    } else if (sf610 > 50) {
      message += "Нет или малозначительное ограничения социальных контактов. ";
    }

    if (re5z <= 50) {
      message +=
          "Эмоциональное состояние затрудняет выполнение работы или другой повседневной деятельности (включая увеличение затрат времени, уменьшение объема выполненной работы, снижение качества ее выполнения и т.п.). ";
    } else if (re5z > 50) {
      message +=
          "Эмоциональное состояние не затрудняет выполнение работы или другой повседневной деятельности (включая увеличение затрат времени, уменьшение объема выполненной работы, снижение качества ее выполнения и т.п.). ";
    }
    if (mh92z <= 20) {
      message +=
          "Низкая оценка своего психического здоровья, наличие депрессивных, тревожных переживаний, психического неблагополучия, преобладание отрицательных эмоций. ";
    } else if (mh92z > 20 && mh92z <= 40) {
      message +=
          "Пониженная оценка своего психического здоровья, наличие депрессивных, тревожных переживаний, психического неблагополучия, преобладание отрицательных эмоций. ";
    } else if (mh92z > 40 && mh92z <= 60) {
      message += "Средняя оценка своего психического здоровья. ";
    } else if (mh92z > 60) {
      message +=
          "Высокая оценка своего психического здоровья, нет наличия депрессивных, тревожных переживаний, психического неблагополучия. ";
    }

    //выведем резельтаты
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ResultAnimation(
            massage: message,
            img: 'assets/images/my3.jpg',
          ),
        ),
      );
  }

  void myBR7(double a) {
    bp7 = a;
  }

  void myBR8(double a) {
    bp8 = a;
  }
}
