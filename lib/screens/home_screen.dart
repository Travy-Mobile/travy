/*
 * Author: Bjornskjald, SerekKiri *nie ma nista*
 * O nist przyszedł
 */

import 'package:flutter/material.dart';
import '../models/build.dart';
import '../widgets/build.dart';

class HomeScreen extends StatefulWidget {
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  BuildModel model = BuildModel((b) => b
    ..id = 1231
    ..duration = 123123
    ..state = "passed"
    ..repository = "Travy-Mobile/Travy"
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      
            child: BuildWidget(buildToShow: model,),
    );
  }
}