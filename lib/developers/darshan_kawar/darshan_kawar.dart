import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:groovin_material_icons/groovin_material_icons.dart';

class DarshanKPage extends StatefulWidget {
  @override
  _DarshanKPageState createState() => _DarshanKPageState();
}

class _DarshanKPageState extends State<DarshanKPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('DarshanK'),
          centerTitle: true,
          bottom: TabBar(
            tabs: <Widget>[
              Tab(text: 'About Me'),
              Tab(text: 'My Apps'),
              Tab(text: 'Contact')
            ],
          ),
        ),
        body: TabBarView(children: <Widget>[
          Center(
            child: AboutMe(),
          ),
          Center(
            child: AppDetails(),
          ),
          Center(
            child: Contact(),
          )
        ]),
      ),
    ));
  }

  Widget AboutMe() {
    return Container(
      padding: EdgeInsets.all(10.0),
      height: MediaQuery.of(context).size.height - 200,
      width: MediaQuery.of(context).size.width,
      child: Card(
        color: Colors.lightBlue,
        elevation: 6.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        child: profileDetails(),
      ),
    );
  }

  Widget Contact() {
    return ListView(children: <Widget>[
      Padding(
        padding: EdgeInsets.all(10.0),
      ),
      Card(
        color: Colors.lightBlue,
        elevation: 4.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        child: Column(children: <Widget>[
          GestureDetector(
              onTap: () {
                launch("https://twitter.com/DarshanK1583");
              },
              child: Row(
                children: <Widget>[
                  Container(
                      width: 55.0,
                      height: 55.0,
                      child: Icon(
                        GroovinMaterialIcons.twitter_circle,
                        color: Colors.black,
                      )),
                  Padding(
                    padding: EdgeInsets.only(right: 15.0),
                  ),
                  Text(
                    'darshank1583',
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              )),
        ]),
      ),
      Card(
          color: Colors.lightBlue,
          elevation: 4.0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          child: Column(children: <Widget>[
            GestureDetector(
                onTap: () {
                  launch('mailto:darshankawar@gmail.com');
                },
                child: Row(
                  children: <Widget>[
                    Container(
                        width: 55.0,
                        height: 55.0,
                        child: Icon(
                          GroovinMaterialIcons.gmail,
                          color: Colors.black,
                        )),
                    Padding(
                      padding: EdgeInsets.only(right: 15.0),
                    ),
                    Text('darshankawar@gmail.com',
                        style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white))
                  ],
                )),
          ])),
      Card(
        color: Colors.lightBlue,
        elevation: 4.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        child: Column(children: <Widget>[
          GestureDetector(
              onTap: () {
                launch('https://github.com/DK15');
              },
              child: Row(
                children: <Widget>[
                  Container(
                      width: 55.0,
                      height: 55.0,
                      child: Icon(
                        GroovinMaterialIcons.github_circle,
                        color: Colors.black,
                      )),
                  Padding(
                    padding: EdgeInsets.only(right: 15.0),
                  ),
                  Text('dk15',
                      style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white))
                ],
              )),
        ]),
      ),
      Card(
          color: Colors.lightBlue,
          elevation: 4.0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          child: Column(
            children: <Widget>[
              GestureDetector(
                  onTap: () {
                    launch('https://medium.com/@darshankawar');
                  },
                  child: Row(
                    children: <Widget>[
                      Container(
                          width: 55.0,
                          height: 55.0,
                          child: Icon(
                            GroovinMaterialIcons.medium,
                            color: Colors.black,
                          )),
                      Padding(
                        padding: EdgeInsets.only(right: 15.0),
                      ),
                      Text('@darshankawar',
                          style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white))
                    ],
                  ))
            ],
          )),
      Card(
          color: Colors.lightBlue,
          elevation: 4.0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          child: Column(
            children: <Widget>[
              GestureDetector(
                  onTap: () {
                    launch('https://www.linkedin.com/in/darshank15/');
                  },
                  child: Row(
                    children: <Widget>[
                      Container(
                          width: 55.0,
                          height: 55.0,
                          child: Icon(
                            GroovinMaterialIcons.linkedin,
                            color: Colors.black,
                          )),
                      Padding(
                        padding: EdgeInsets.only(right: 15.0),
                      ),
                      Text('darshank15',
                          style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white))
                    ],
                  ))
            ],
          ))
    ]);
  }

  Widget profileDetails() {
    return Container(
        padding: EdgeInsets.all(12.0),
        child: Row(children: <Widget>[
          Flexible(
            child: Text(
              'I started my Software career as QA Tester and worked onto play various roles in QA spectrum that includes Front-End Tester,'
                  ' Back-End Tester, ETL Tester, QA Lead, QA Analyst, Automation Tester and lastly Android Automation Test Engineer. Worked for various fortune 500 companies and'
                  ' got to test / validate various applications, services, products developed in various technologies like .NET, PeopleSoft, AngularJS and Java. I have total 10 years of QA and Testing experience before transitioning to Mobile Development through Udacity. I am currently '
                  'working remotely as a Flutter Developer for a startup.',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  color: Colors.white,
                  height: 1.2),
            ),
          )
        ]));
  }

  Widget AppDetails() {
    return ListView(children: <Widget>[
      Padding(
        padding: EdgeInsets.all(15.0),
      ),
      Card(
          color: Colors.lightBlue,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          elevation: 4.0,
          child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
            new Container(
              padding: new EdgeInsets.only(top: 16.0),
              child: new Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Text(
                    'Tour Guide',
                    style: new TextStyle(
                        fontSize: 25.0,
                        fontFamily: 'Roboto',
                        color: Colors.white),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(5.0),
                  ),
                  Flexible(
                    child: new Text(
                      'App to show top restaurants, lodging, parks and places in city.',
                      style: TextStyle(
                          fontSize: 16.0,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                  ),
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.all(5.0),
                child: GestureDetector(
                  onTap: () {
                    launch(
                        "https://play.google.com/store/apps/details?id=com.darshan.tourguide&hl=en");
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        GroovinMaterialIcons.google_play,
                        color: Colors.black,
                      )
                    ],
                  ),
                ))
          ])),
      Card(
          color: Colors.lightBlue,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          elevation: 4.0,
          child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
            new Container(
              padding: new EdgeInsets.only(top: 16.0),
              child: new Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Text(
                    'Cricket News',
                    style: new TextStyle(
                        fontSize: 25.0,
                        fontFamily: 'Roboto',
                        color: Colors.white),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(5.0),
                  ),
                  Flexible(
                    child: new Text(
                      'app to show realtime cricket top and recent news.',
                      style: TextStyle(
                          fontSize: 16.0,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 10.0),
                  )
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.all(5.0),
                child: GestureDetector(
                  onTap: () {
                    launch("https://github.com/DK15/cricket-news");
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        GroovinMaterialIcons.github_circle,
                        color: Colors.black,
                      )
                    ],
                  ),
                ))
          ])),
      Card(
          color: Colors.lightBlue,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          elevation: 4.0,
          child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
            new Container(
              padding: new EdgeInsets.only(top: 16.0),
              child: new Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Text(
                    'Kids Quiz',
                    style: new TextStyle(
                        fontSize: 25.0,
                        fontFamily: 'Roboto',
                        color: Colors.white),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(5.0),
                  ),
                  Flexible(
                    child: new Text(
                      'A quiz app for kids to select correct type of animal.',
                      style: TextStyle(
                          fontSize: 16.0,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 10.0),
                  )
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.all(5.0),
                child: GestureDetector(
                  onTap: () {
                    launch('https://github.com/DK15/quiz-app-flutter');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        GroovinMaterialIcons.github_circle,
                        color: Colors.black,
                      )
                    ],
                  ),
                ))
          ]))
    ]);
  }
}
