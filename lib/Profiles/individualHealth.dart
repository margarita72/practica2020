import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobilepr2020/customization.dart';

class IndividualHealth extends StatelessWidget {
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
                      text: "Анкета №1 \n",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text:
                              'Уровень индивидуального здоровья и факторов риска развития хронических неинфекционных болезней',
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
                    /* Image.network(
                      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                      fit: BoxFit.cover,
                    ),
                    */
                    Image.asset('assets/images/my17.jpg', fit: BoxFit.cover),
                    Text("data")
                  ],
                ),
              ),
              backgroundColor: myColor,
              brightness: Brightness.light,
              expandedHeight: 200.0,
              floating: true,
            ),
            //контент
            MyProfileOneSliverList(),
          ],
        ),
      ),
    );
  }
}

class MyProfileOneSliverList extends StatefulWidget {
  @override
  MyProfileOneSliverLists createState() => MyProfileOneSliverLists();
}

class MyProfileOneSliverLists extends State<MyProfileOneSliverList> {
  final _sizeTextBlack = TextStyle(
    fontSize: 17.0,
    color: myColor,
    fontWeight: FontWeight.w600,
    decoration: TextDecoration.none,
  );

  //переменные для формы
  String placeOfWork;
  String radioItemFloor;
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
                //Место работы
                Container(
                  height: 50.0,
                  margin: EdgeInsets.only(
                    left: 15.0,
                    right: 15.0,
                    top: 20.0,
                  ),
                  child: TextFormField(
                    cursorColor: myColor,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: myColor,
                          width: 2.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: myColor,
                          width: 2.0,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: myColor,
                          width: 1.0,
                        ),
                      ),
                      //filled: true,

                      labelText: "Место работы",
                      labelStyle: TextStyle(fontSize: 15.0, color: Colors.grey),
                    ),
                    minLines: 1,
                    style: _sizeTextBlack,
                    onSaved: (val) => placeOfWork = val,
                    validator: (val) => val.length < 3
                        ? "Слишком короткое наименование Работы"
                        : null,
                  ),
                ),
                //Профессия
                Container(
                  height: 50.0,
                  margin: EdgeInsets.only(
                    left: 15.0,
                    right: 15.0,
                    top: 10.0,
                  ),
                  child: TextFormField(
                    cursorColor: myColor,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: myColor,
                          width: 2.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: myColor, width: 2.0),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: myColor,
                          width: 1.0,
                        ),
                      ),
                      //filled: true,

                      labelText: "Профессия",
                      labelStyle: TextStyle(fontSize: 15.0, color: Colors.grey),
                    ),
                    minLines: 1,
                    style: _sizeTextBlack,
                    onSaved: (val) => placeOfWork = val,
                    validator: (val) => val.length < 3
                        ? "Слишком короткое наименование провессии"
                        : null,
                  ),
                ),
                //населенный пункт
                Container(
                  height: 50.0,
                  margin: EdgeInsets.only(
                    left: 15.0,
                    right: 15.0,
                    top: 10.0,
                  ),
                  child: TextFormField(
                    cursorColor: myColor,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: myColor,
                          width: 2.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: myColor,
                          width: 2.0,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: myColor,
                          width: 1.0,
                        ),
                      ),
                      //filled: true,

                      labelText: "Населенный пункт",
                      labelStyle: TextStyle(fontSize: 15.0, color: Colors.grey),
                    ),
                    minLines: 1,
                    style: _sizeTextBlack,
                    onSaved: (val) => placeOfWork = val,
                    validator: (val) => val.length < 5
                        ? "Слишком короткое наименование населенного пункта"
                        : null,
                  ),
                ),
                //Пол
                Container(
                  height: 110.0,
                  margin: EdgeInsets.only(
                    left: 15.0,
                    right: 15.0,
                    top: 10.0,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(3.0)),
                    border: Border.all(width: 2.0, color: myColor),
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
                          'Выберите пол',
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
                            activeColor: myColor,
                            groupValue: radioItemFloor,
                            value: "M",
                            title: Text(
                              "Мужской",
                              style: TextStyle(
                                color: radioItemFloor == 'M' ? myColor : Colors.grey[500],
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                radioItemFloor = val;
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
                            activeColor: myColor,
                            groupValue: radioItemFloor,
                            value: "Ж",
                            title: Text(
                              "Женский",
                              style: TextStyle(
                                color: radioItemFloor == 'Ж' ? myColor : Colors.grey[500],
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                radioItemFloor = val;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                //Возраст
                Container(
                  height: 50.0,
                  margin: EdgeInsets.only(
                    left: 15.0,
                    right: 15.0,
                    top: 10.0,
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    cursorColor: myColor,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: myColor,
                          width: 2.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: myColor, width: 2.0),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: myColor,
                          width: 1.0,
                        ),
                      ),
                      //filled: true,

                      labelText: "Возраст",
                      labelStyle: TextStyle(fontSize: 15.0, color: Colors.grey),
                    ),
                    minLines: 1,
                    style: _sizeTextBlack,
                    onSaved: (val) => placeOfWork = val,
                    validator: (val) =>
                        val.length < 1 ? "Слишком короткий возраст" : null,
                  ),
                ),

                //уровень артериального давления
                Container(
                  height: 50.0,
                  margin: EdgeInsets.only(
                    left: 15.0,
                    right: 15.0,
                    top: 10.0,
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    cursorColor: myColor,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: myColor,
                          width: 2.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: myColor, width: 2.0),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: myColor,
                          width: 1.0,
                        ),
                      ),
                      //filled: true,

                      labelText: "Уровень артериального давления",
                      labelStyle: TextStyle(fontSize: 15.0, color: Colors.grey),
                    ),
                    minLines: 1,
                    style: _sizeTextBlack,
                    onSaved: (val) => placeOfWork = val,
                    validator: (val) => val.length < 2
                        ? "Слишком короткий уровень артериального давления"
                        : null,
                  ),
                ),
                //уровень холестерина
                Container(
                  height: 50.0,
                  margin: EdgeInsets.only(
                    left: 15.0,
                    right: 15.0,
                    top: 10.0,
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    cursorColor: myColor,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: myColor,
                          width: 2.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: myColor, width: 2.0),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: myColor,
                          width: 1.0,
                        ),
                      ),
                      //filled: true,

                      labelText: "Уровень холестерина (ммоль/л)",
                      labelStyle: TextStyle(fontSize: 15.0, color: Colors.grey),
                    ),
                    minLines: 1,
                    style: _sizeTextBlack,
                    onSaved: (val) => placeOfWork = val,
                    validator: (val) => val.length < 2
                        ? "Слишком короткий уровень холлестерина"
                        : null,
                  ),
                ),

                //рост
                Container(
                  height: 50.0,
                  margin: EdgeInsets.only(
                    left: 15.0,
                    right: 15.0,
                    top: 10.0,
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    cursorColor: myColor,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: myColor,
                          width: 2.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: myColor, width: 2.0),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: myColor,
                          width: 1.0,
                        ),
                      ),
                      //filled: true,

                      labelText: "Рост (м.)",
                      labelStyle: TextStyle(fontSize: 15.0, color: Colors.grey),
                    ),
                    minLines: 1,
                    style: _sizeTextBlack,
                    onSaved: (val) => placeOfWork = val,
                    validator: (val) =>
                        val.length < 2 ? "Слишком короткий рост" : null,
                  ),
                ),

                //вес
                Container(
                  height: 50.0,
                  margin: EdgeInsets.only(
                    left: 15.0,
                    right: 15.0,
                    top: 10.0,
                  ),
                  child: TextFormField(
                    
                    keyboardType: TextInputType.number,
                    cursorColor: myColor,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: myColor,
                          width: 2.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: myColor, width: 2.0),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: myColor,
                          width: 1.0,
                        ),
                      ),
                      //filled: true,

                      labelText: "Вес (кг.)",
                      labelStyle: TextStyle(fontSize: 15.0, color: Colors.grey),
                    ),
                    minLines: 1,
                    style: _sizeTextBlack,
                    onSaved: (val) => placeOfWork = val,
                    validator: (val) =>
                        val.length < 1 ? "Слишком короткий вес" : null,
                  ),
                ),

                //кнопка
                Container(
                  margin: EdgeInsets.only(
                      top: 20.0, left: 15.0, right: 15.0, bottom: 10.0),
                  height: 45.0,
                  child: RaisedButton(
                    color: myColor,
                    onPressed: () {},
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
}
