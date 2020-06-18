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
        /*appBar: AppBar(
          title: Text("Анкета №1"),
          backgroundColor: myColor,
        ),
        */
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              title: Text("Sample Slivers"),
              leading: Icon(Icons.menu),
              backgroundColor: myColor,
              brightness: Brightness.light,
              expandedHeight: 90.0,
              floating: true,
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                ListTile(
                  leading: Icon(Icons.volume_off),
                  title: Text("Volume Off"),
                ),
                ListTile(
                    leading: Icon(Icons.volume_down),
                    title: Text("Volume Down")),
                ListTile(
                    leading: Icon(Icons.volume_mute),
                    title: Text("Volume Mute")),
                ListTile(
                    leading: Icon(Icons.volume_mute),
                    title: Text("Volume Mute")),
                ListTile(
                    leading: Icon(Icons.volume_mute),
                    title: Text("Volume Mute")),
                ListTile(
                    leading: Icon(Icons.volume_mute),
                    title: Text("Volume Mute")),
                ListTile(
                    leading: Icon(Icons.volume_mute),
                    title: Text("Volume Mute")),
                ListTile(
                    leading: Icon(Icons.volume_mute),
                    title: Text("Volume Mute")),
                ListTile(
                    leading: Icon(Icons.volume_mute),
                    title: Text("Volume Mute")),
                ListTile(
                    leading: Icon(Icons.volume_mute),
                    title: Text("Volume Mute")),
                ListTile(
                    leading: Icon(Icons.volume_mute),
                    title: Text("Volume Mute")),
                ListTile(
                    leading: Icon(Icons.volume_down),
                    title: Text("Volume Down")),
                ListTile(
                    leading: Icon(Icons.volume_down),
                    title: Text("Volume Down")),
                ListTile(
                    leading: Icon(Icons.volume_down),
                    title: Text("Volume Down")),
                ListTile(
                    leading: Icon(Icons.volume_down),
                    title: Text("Volume Down")),
                ListTile(
                    leading: Icon(Icons.volume_down),
                    title: Text("Volume Down")),
                ListTile(
                    leading: Icon(Icons.volume_down),
                    title: Text("Volume Down")),
                ListTile(
                    leading: Icon(Icons.volume_down),
                    title: Text("Volume Down")),
                ListTile(
                    leading: Icon(Icons.volume_down),
                    title: Text("Volume Down")),
                ListTile(
                    leading: Icon(Icons.volume_down),
                    title: Text("Volume Down")),
                ListTile(
                    leading: Icon(Icons.volume_down),
                    title: Text("Volume Down")),
                ListTile(
                    leading: Icon(Icons.volume_down),
                    title: Text("Volume Down")),
                ListTile(
                    leading: Icon(Icons.volume_down),
                    title: Text("Volume Down")),
                ListTile(
                    leading: Icon(Icons.volume_down),
                    title: Text("Volume Down")),
                ListTile(
                    leading: Icon(Icons.volume_down),
                    title: Text("Volume Down")),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
