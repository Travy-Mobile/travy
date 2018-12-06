import 'package:flutter/material.dart';

import 'screens.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: EdgeInsets.only(top: 100.0),
          child: Center(
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
                padding: EdgeInsets.only(top: 5.0, bottom: 30.0),
                child: Text("Travy",
                style: TextStyle(
                  fontSize: 45,
                  fontFamily: "ReemKufi",
                  color: Color.fromRGBO(102, 102, 102, 10)
                ),),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return LoginFormScreen();
                    }
                  ));
                },
                child: Card(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(6),
                          child: Image.asset("logo.png", height: 70, width: 70,),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left: 30),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                               Text("Travis CI (.org)", style: TextStyle(
                                    fontSize: 21
                                ),),
                                  Text("For open source projects", style: TextStyle(
                                    color: Color(int.parse("0xFF666666")),
                                    fontSize: 15
                                ),)
                              ],
                            ),
                          )
                        )
                      ],
                    ),
                  )  
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return LoginFormScreen();
                    }
                  ));
                  },
                  child: Card(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.all(6),
                            child: Image.asset("logo2.png", height: 70, width: 70,),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(left: 30),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("Travis CI (.com)", style: TextStyle(
                                    fontSize: 21
                                  ),),
                                  Text("For private projects", style: TextStyle(
                                    color: Color(int.parse("0xFF666666")),
                                    fontSize: 15
                                  ),)
                                ],
                              ),
                            )
                          )
                        ],
                      ),
                    )  
                  ),
                )
              )
              ],
            ),
          )
        )
      )
    );
  }           
}