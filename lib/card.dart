import "package:flutter/material.dart";

final assetPath = "assets/developers/luke_pighetti";

class DeveloperCard extends StatelessWidget {
  final String name;
  final String business;
  final AssetImage image;
  final Widget page;

  DeveloperCard({
    @required this.name,
    @required this.business,
    @required this.image,
    @required this.page,
  });

  @override
  Widget build(BuildContext context) {
    navigate() {
      final route = MaterialPageRoute(builder: (_) => this.page);
      Navigator.of(context).push(route);
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        final diameter = constraints.minWidth - 84;

        return Card(
          child: GestureDetector(
            onTap: () => navigate(),
            child: Container(
              padding: EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Hero(
                    tag: this.name,
                    child: ClipOval(
                      child: Image(
                        height: diameter,
                        width: diameter,
                        image: this.image,
                      ),
                    ),
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
      },
    );
  }
}
