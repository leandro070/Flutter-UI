import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:layout_journey/theme/colors.dart';

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    debugPaintSizeEnabled = true;
    final double width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: <Widget>[
            Container(
                width: width,
                margin: EdgeInsets.fromLTRB(32.0, 16.0, 32.0, 16.0),
                decoration: new BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    gradient: new LinearGradient(colors: [
                      HomeTabsColors.darkGreen[700],
                      HomeTabsColors.darkGreen[400]
                    ])),
                child: Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        new Image.asset('assets/ballons.png', width: 70, height: 75, fit: BoxFit.cover,)
                      ],
                    )
                  ],
                )),
            Container(
              width: width,
              margin: EdgeInsets.fromLTRB(32.0, 16.0, 32.0, 16.0),
              decoration: new BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  gradient: new LinearGradient(colors: [
                    HomeTabsColors.orange[400],
                    HomeTabsColors.orange[700]
                  ])),
              child: SizedBox(
                height: 100.0,
              ),
            ),
            Container(
              width: width,
              margin: EdgeInsets.fromLTRB(32.0, 16.0, 32.0, 16.0),
              decoration: new BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  gradient: new LinearGradient(colors: [
                    HomeTabsColors.lightBlue[400],
                    HomeTabsColors.lightBlue[700]
                  ])),
              child: SizedBox(
                height: 100.0,
              ),
            ),
            Container(
              width: width,
              margin: EdgeInsets.fromLTRB(32.0, 16.0, 32.0, 16.0),
              decoration: new BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  gradient: new LinearGradient(colors: [
                    HomeTabsColors.violet[700],
                    HomeTabsColors.violet[400]
                  ])),
              child: SizedBox(
                height: 100.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
