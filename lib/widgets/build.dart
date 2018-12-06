import 'package:flutter/material.dart';

import 'package:travy/models/models.dart';

class BuildWidget extends StatelessWidget {

  final BuildModel buildToShow;

  BuildWidget({this.buildToShow});

@override
Widget build(BuildContext context) {
  return Card(
    margin: EdgeInsets.symmetric(vertical: 26, horizontal: 5),
    color: _showBuildColor(buildToShow.state),
    child: Container(
      margin: EdgeInsets.only(left: 8),
      padding: EdgeInsets.all(12),
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text(
                buildToShow.repository.toString(),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                 ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 40),
                  child: Text(
                    "#",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 0.5),
                  child: Text(
                    buildToShow.id.toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Row(
              children: [
                Text(
                  'State:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5.0),
                  child: Text(
                    buildToShow.state.toString(),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Row(
              children: [
                Text(
                  "Duration:",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    ),
                  ),
                Padding(
                  padding: EdgeInsets.only(left: 5.0),
                  child: Text(buildToShow.duration.toString()),
                )
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

  _showBuildColor(String state) {
    if (state == "passed") {
      return Color(int.parse("0xFF39AA56"));
    } else if (state == "failed") {
      return Color(int.parse("0xFFDB4545"));
    } else {
      return Color(int.parse("0xFFEDDE3F"));
    }
  }
}
