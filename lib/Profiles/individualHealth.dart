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
                    Image.asset('assets/images/my17.jpg',fit: BoxFit.cover),
                    Text("data")
                  ],
                ),
              ),
              /*title: Column(
                children: <Widget>[
                  Text("Анкета №1"),
                  Text(
                    "Уровень индивидуального здоровья и факторов риска развития хронических неинфекционных болезней",
                    style: TextStyle(fontSize: 15.0),
                  ),
                ],
              ),
              */

              backgroundColor: myColor,
              brightness: Brightness.light,
              expandedHeight: 200.0,
              floating: true,
            ),
            //контент
            MyProfileOneSliverList(),

            // SliverFillRemaining(child: Text("data"),),
          ],
        ),
      ),
    );
  }
}

class MyProfileOneSliverList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate([
        ListTile(
          leading: Icon(Icons.volume_off),
          title: Text("Volume Off"),
        ),
        ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
        ListTile(leading: Icon(Icons.volume_mute), title: Text("Volume Mute")),
        ListTile(leading: Icon(Icons.volume_mute), title: Text("Volume Mute")),
        ListTile(leading: Icon(Icons.volume_mute), title: Text("Volume Mute")),
        ListTile(leading: Icon(Icons.volume_mute), title: Text("Volume Mute")),
        ListTile(leading: Icon(Icons.volume_mute), title: Text("Volume Mute")),
        ListTile(leading: Icon(Icons.volume_mute), title: Text("Volume Mute")),
        ListTile(leading: Icon(Icons.volume_mute), title: Text("Volume Mute")),
        ListTile(leading: Icon(Icons.volume_mute), title: Text("Volume Mute")),
        ListTile(leading: Icon(Icons.volume_mute), title: Text("Volume Mute")),
        ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
        ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
        ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
        ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
        ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
        ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
        ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
        ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
        ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
        ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
        ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
        ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
        ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
        ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
      ]),
    );
  }
}
