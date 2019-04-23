import 'package:flutter/material.dart';
import 'package:nofoodleftbehind/Theme/theme.dart' as Theme;

class FoodCard extends StatelessWidget {
  Widget image;

  FoodCard({this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.Colors.logintextbox,
      elevation: 3.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      borderOnForeground: true,
      child:
      Container(
        margin: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: image,
            ),

          ],
        ),
      ),
    );
  }
}
