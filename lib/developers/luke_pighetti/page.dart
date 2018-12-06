import "package:flutter/material.dart";

class LukePighettiPage extends StatefulWidget {
  @override
  _LukePighettiPageState createState() => _LukePighettiPageState();
}

class _LukePighettiPageState extends State<LukePighettiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Luke Pighetti"),
      ),
      body: Center(
        child: Hero(
          tag: "Luke Pighetti",
          child: CircleAvatar(
            radius: 90,
            backgroundImage:
                AssetImage("assets/developers/luke_pighetti/avatar.jpg"),
          ),
        ),
      ),
    );
  }
}
