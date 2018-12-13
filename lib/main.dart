import 'package:developers/developers/groovin_chip/groovin_chip.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:url_launcher/url_launcher.dart';

import './card.dart' show DeveloperCard;

import './developers/luke_pighetti/page.dart';
import './developers/groovin_chip/groovin_chip.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top]);

    return MaterialApp(
      title: 'Flutter Developers',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    launchGithub() {
      launch("https://github.com/lukepighetti/flutter-developers");
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Developers"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () => launchGithub(),
          )
        ],
      ),
      body: Center(
        child: GridView.count(
          crossAxisCount: isLandscape ? 3 : 2,
          children: developerCards,
        ),
      ),
    );
  }
}

/// TODO: add your card to the end of this list
final developerCards = <Widget>[
  DeveloperCard(
    name: "Luke Pighetti",
    business: "Pighetti Design",
    image: AssetImage("assets/developers/luke_pighetti/avatar.jpg"),
    page: LukePighettiPage(),
  ),
  DeveloperCard(
    name: "GroovinChip",
    business: "Groovin Apps",
    image: AssetImage("assets/developers/groovin_chip/groovin_chip_avatar.png"),
    page: GroovinChipPage(),
  ),
];
