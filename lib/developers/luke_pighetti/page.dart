import "package:flutter/material.dart";

import "package:flutter_webview_plugin/flutter_webview_plugin.dart";

class LukePighettiPage extends StatefulWidget {
  @override
  _LukePighettiPageState createState() => _LukePighettiPageState();
}

class _LukePighettiPageState extends State<LukePighettiPage> {
  final webview = FlutterWebviewPlugin();

  @override
  Widget build(BuildContext context) {
    final heroImage = Container(
      padding: EdgeInsets.all(12),
      child: Hero(
        tag: "Luke Pighetti",
        child: CircleAvatar(
          radius: 16,
          backgroundImage:
              AssetImage("assets/developers/luke_pighetti/avatar.jpg"),
        ),
      ),
    );

    navigateBack() async {
      await this.webview.close();
      Navigator.of(context).pop();
    }

    return WebviewScaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => navigateBack(),
        ),
        title: Text("Luke Pighetti"),
        actions: <Widget>[heroImage],
      ),
      url: "https://pighetti.design",
      hidden: true,
    );
  }

  @override
  void dispose() {
    super.dispose();
    this.webview.dispose();
  }
}

// Scaffold(
//       appBar: AppBar(
//         title: Text("Luke Pighetti"),
//         actions: <Widget>[heroImage],
//       ),
//       body: Column(
//         children: <Widget>[
//           Text("Luke Pighetti"),
//         ],
//       ),
//     );
