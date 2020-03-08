library homepage_layout;

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

bool isLandscape(BoxConstraints constraints) {
  if (constraints.maxWidth > constraints.maxHeight) {
    return true;
  }
  return false;
}

bool shouldBuildTwoCol(BoxConstraints constraints) {
  if (constraints.maxWidth / constraints.maxHeight > 4.0 / 3.0) {
    return true;
  }
  return false;
}

class HomepageContent extends StatelessWidget {
  final List<Widget> primaryList;
  final List<Widget> secondaryList;
  const HomepageContent(
      {@required this.primaryList, @required this.secondaryList});
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (shouldBuildTwoCol(constraints)) {
          return Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Expanded(
                    flex: 1,
                    child: Container(
                        padding: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 5.0),
                        child: ListView(children: this.primaryList))),
                Expanded(
                    flex: 2,
                    child: Container(
                        padding: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 5.0),
                        child: ListView(children: this.secondaryList))),
              ],
            ),
          );
        } else {
          return Container(
            child: ListView(
              children: primaryList + secondaryList,
            ),
          );
        }
      },
    );
  }
}

class HomepageLayout extends StatelessWidget {
  final List<Widget> primaryList;
  final List<Widget> secondaryList;
  const HomepageLayout(
      {@required this.primaryList, @required this.secondaryList});
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Scaffold(
          body: HomepageContent(
              primaryList: this.primaryList, secondaryList: this.secondaryList),
        );
      },
    );
  }
}
