import 'package:flutter/material.dart';

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
                onTap: () {},
                child: Card(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Row(
                      children: <Widget>[
                        Image.asset("logo.png", height: 80, width: 80,),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(right: 30),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text("Travis CI (.com)"),
                                Text("For open source projects")
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
                  onTap: () {},
                  child: Card(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: Row(
                        children: <Widget>[
                          Image.asset("logo2.png", height: 80, width: 80,),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(right: 30),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text("Travis CI (.com)"),
                                  Text("For private projects")
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