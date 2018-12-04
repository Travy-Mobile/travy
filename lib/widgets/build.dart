import 'package:flutter/material.dart';

import 'package:travy/models/models.dart';

class BuildWidget extends StatelessWidget {

  final BuildModel buildToShow;

  BuildWidget({this.buildToShow});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        margin: EdgeInsets.all(10),
        child: Padding(
          padding: EdgeInsets.all(5),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Text("id:"),
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Text(buildToShow.id.toString()),
                  )
                ],
              ),
              Row(
                children: [
                  Text("duration:"),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(buildToShow.duration.toString()),
                  )
                ],
              ),
              Row(
                children: [
                  Text("state:"),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(buildToShow.state),
                  )
                ],
              ),
              Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Container(
                    height: 10,
                    color: _showBuildColor(buildToShow.state),
              ))
            ],
          ),
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
