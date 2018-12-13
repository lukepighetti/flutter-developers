import 'package:flutter/material.dart';
import 'package:groovin_material_icons/groovin_material_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class GroovinChipPage extends StatefulWidget {
  @override
  _GroovinChipPageState createState() => _GroovinChipPageState();
}

class _GroovinChipPageState extends State<GroovinChipPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Theme.of(context).canvasColor,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "GroovinChip",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: <Widget>[
          Hero(
            tag: "GroovinChip",
            child: CircleAvatar(
              child: Image.asset(
                "assets/developers/groovin_chip/groovin_chip_avatar.png",
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          ExpansionTile(
            leading: Icon(GroovinMaterialIcons.apps, color: Colors.indigoAccent,),
            title: Text(
              "Apps",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 12.0, top: 16.0),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: Row(
                            children: <Widget>[
                              Image.asset(
                                "assets/developers/groovin_chip/call_manager_app_icon.png",
                                height: 25.0,
                                width: 25.0,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 12.0),
                                child: Text(
                                  "Call Manager",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16.0, left: 12.0, right: 12.0),
                          child: Wrap(
                            children: <Widget>[
                              Text(
                                "Call Manager is an organizer for phone calls you need to make in the future.",
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Theme.of(context).platform == TargetPlatform.android ?
                                IconButton(
                                  icon: Icon(
                                    GroovinMaterialIcons.google_play,
                                    color: Colors.green,
                                  ),
                                  tooltip: "Install from Google Play",
                                  onPressed: () {
                                    launch("https://play.google.com/store/apps/details?id=com.groovinchip.flutter.callmanager");
                                  },
                                )
                              : Builder(
                                builder: (BuildContext context) {
                                  return IconButton(
                                    icon: Icon(GroovinMaterialIcons.apple),
                                    onPressed: () {
                                      Scaffold.of(context).showSnackBar(SnackBar(
                                        content: Row(
                                          children: <Widget>[
                                            Icon(Icons.info_outline),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 10.0),
                                              child: Text("Not avaialble on iOS yet"),
                                            ),
                                          ],
                                        ),
                                        duration: Duration(seconds: 2),
                                      )
                                      );
                                    },
                                  );
                                },
                              ),
                              IconButton(
                                icon: Icon(
                                  GroovinMaterialIcons.xda,
                                  color: Colors.orange,
                                ),
                                tooltip: "Install from XDA Labs",
                                onPressed: () {
                                  launch("https://labs.xda-developers.com/store/app/com.groovinchip.flutter.callmanager");
                                },
                              ),
                              IconButton(
                                icon: Icon(
                                  GroovinMaterialIcons.github_circle,
                                  color: Colors.black,
                                ),
                                tooltip: "Source Code",
                                onPressed: () {
                                  launch("https://github.com/GroovinChip/CallManager");
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: Row(
                            children: <Widget>[
                              Image.asset(
                                "assets/developers/groovin_chip/mysoftballteam_app_icon.png",
                                height: 25.0,
                                width: 25.0,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 12.0),
                                child: Text("MySoftballTeam"),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16.0, left: 12.0, right: 12.0),
                          child: Wrap(
                            children: <Widget>[
                              Text(
                                "MySoftballTeam is a tool for softball teams to schedule their games, scores, and player stats.",
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              FlatButton.icon(
                                icon: Icon(GroovinMaterialIcons.github_circle),
                                label: Text("View Source Code"),
                                onPressed: () {
                                  launch("https://github.com/GroovinChip/MySoftballTeam");
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: Row(
                            children: <Widget>[
                              Image.asset(
                                "assets/developers/groovin_chip/flutter_community_challenges_app_icon.png",
                                height: 25.0,
                                width: 25.0,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 12.0),
                                child: Text("Flutter Community Challenges"),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16.0, left: 12.0, right: 12.0),
                          child: Wrap(
                            children: <Widget>[
                              Text(
                                "Flutter Community Challenges a contest app where Flutter developers can suggest app ideas and compete to build the best app.",
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              FlatButton.icon(
                                icon: Icon(GroovinMaterialIcons.github_circle),
                                label: Text("View Source Code"),
                                onPressed: () {
                                  launch("https://github.com/GroovinChip/Flutter-Community-Challenges");
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          ExpansionTile(
            leading: Icon(GroovinMaterialIcons.dart_logo, color: Colors.indigoAccent,),
            title: Text(
              "Pub Packages",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black
              ),
            ),
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: Row(
                            children: <Widget>[
                              Text(
                                "groovin_material_icons",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16.0, left: 12.0, right: 12.0),
                          child: Wrap(
                            children: <Widget>[
                              Text(
                                "This package is an icon pack that includes icons from various sources.",
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              FlatButton.icon(
                                icon: Icon(GroovinMaterialIcons.dart_logo),
                                label: Text("View on Pub"),
                                onPressed: () {
                                  launch("https://pub.dartlang.org/packages/groovin_material_icons");
                                },
                              ),
                              FlatButton.icon(
                                icon: Icon(GroovinMaterialIcons.github_circle),
                                label: Text("Contribute"),
                                onPressed: () {
                                  launch("https://github.com/GroovinChip/groovin_material_icons");
                                },
                              ),

                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: Row(
                            children: <Widget>[
                              Text(
                                "groovin_widgets",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16.0, left: 12.0, right: 12.0),
                          child: Row(
                            children: <Widget>[
                              Text(
                                "This package includes custom widgets built by me.",
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              FlatButton.icon(
                                icon: Icon(GroovinMaterialIcons.dart_logo),
                                label: Text("View on Pub"),
                                onPressed: () {
                                  launch("https://pub.dartlang.org/packages/groovin_widgets");
                                },
                              ),
                              FlatButton.icon(
                                icon: Icon(GroovinMaterialIcons.github_circle),
                                label: Text("Contribute"),
                                onPressed: () {
                                  launch("https://github.com/GroovinChip/GroovinWidgets");
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          ExpansionTile(
            leading: Icon(Icons.alternate_email, color: Colors.indigoAccent,),
            title: Text(
              "Contact and Pages",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            children: <Widget>[
              ListTile(
                leading: Icon(GroovinMaterialIcons.twitter, color: Colors.lightBlueAccent,),
                title: Text("@GroovinChipDev"),
                onTap: () {
                  launch("https://twitter.com/GroovinChipDev");
                },
              ),
              ListTile(
                leading: Icon(GroovinMaterialIcons.gmail, color: Colors.redAccent,),
                title: Text("groovinchip@gmail.com"),
                onTap: () {
                  launch("mailto:groovinchip@gmail.com");
                },
              ),
              ListTile(
                leading: Icon(GroovinMaterialIcons.discord, color: Colors.indigo,),
                title: Text("Join my Discord Server"),
                onTap: () {
                  launch("https://discord.gg/3wEfggg");
                },
              ),
              ListTile(
                leading: Icon(GroovinMaterialIcons.github_circle, color: Colors.black,),
                title: Text("GroovinChip"),
                onTap: () {
                  launch("https://github.com/GroovinChip");
                },
              ),
              ListTile(
                leading: Icon(GroovinMaterialIcons.youtube, color: Colors.red,),
                title: Text("GroovinChip Dev"),
                onTap: () {
                  launch("https://www.youtube.com/channel/UCqRA9X1SF1AyCNYkFp7gLTw?view_as=subscriber");
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
