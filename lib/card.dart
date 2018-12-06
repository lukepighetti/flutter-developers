import "package:flutter/material.dart";

final assetPath = "assets/developers/luke_pighetti";

class DeveloperCard extends StatelessWidget {
  final String name;
  final String business;
  final AssetImage image;

  DeveloperCard({
    @required this.name,
    @required this.business,
    @required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) => Card(
            child: Container(
              padding: EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    radius: constraints.minWidth / 2 - 42,
                    backgroundImage: this.image,
                  ),
                  SizedBox(height: 8),
                  Text(
                    this.name,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    this.business,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
            ),
          ),
    );
  }
}
