import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';

import 'screens.dart';
import '../api/api.dart';

class LoginFormScreen extends StatelessWidget {

  final tokenController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView( 
        child: Container(
          child: Padding(
            padding: EdgeInsets.only(top: 100),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Container(
                    width: 170,
                    height: 170,
                    child: Image.asset("logo.png"),
                  )   
                ),
                  Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: TextField(
                            controller: tokenController,
                            decoration: InputDecoration(
                              hintText: "your token",
                              hintStyle: TextStyle(
                                color: Color(int.parse("0xFF666666"))
                              )
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: RaisedButton(
                            color: Theme.of(context).accentColor,
                            onPressed: () {
                              api.logIn(tokenController.text);
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return HomeScreen();
                                }
                              ));
                            },
                            child: Text("Log in", style: TextStyle(
                              color: Colors.white
                            ),),
                          ),
                        )
                      ],
                    ),
                  )
              ],
            ),
          ),  
        )  
      ),
    );
  }
}