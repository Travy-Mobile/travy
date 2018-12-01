import 'package:flutter/material.dart';

import 'package:travy/travyGlyphs.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(top: 100.0),
        child: Column(
          children: <Widget>[
            Center(
              child: Padding(
                padding: EdgeInsets.only(right: 20),
                child: Container(
                  width: 270,
                  height: 270,
                  child: Image.asset("logo.png", ),
                )   
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5.0, bottom: 50.0),
              child: Text("Travy",
              style: TextStyle(
                fontSize: 45,
                fontFamily: "ReemKufi",
                color: Color.fromRGBO(102, 102, 102, 10)
              ),),
            ),
            Container(
              height: 55,
              width: 300,
              child: RaisedButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40)
                ),
                color: Color.fromRGBO(51, 51, 51, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(travyGlyphs.github_circled, color: Colors.white, size: 35,),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text("Login with Github", style: TextStyle(
                        color: Colors.white,
                        fontSize: 16
                    ),)
                    )
                  ],
                ),
              ) 
            ),
          ],
        ),
      )
    );
  }
}