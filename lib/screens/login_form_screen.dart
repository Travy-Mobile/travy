import 'package:flutter/material.dart';

class LoginFormScreen extends StatelessWidget {

  final tokenController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Container(
       decoration: BoxDecoration(
          gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment(1, 0),
          colors: [const Color(0xFF7ADAF5), const Color(0xFF758CFF)],
          tileMode: TileMode.repeated
          )
        ),
        constraints: BoxConstraints.expand(),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 80),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  boxShadow: [BoxShadow(
                    color: Color(0xFF5398DC),
                    blurRadius: 10
                  )],
                ),
                padding: EdgeInsets.all(7),
                child:Padding( 
                  padding: EdgeInsets.only(right: 5),
                  child: Image.asset("logo.png", width: 100, height: 100,),
                )
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 100),
              child: Stack(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 10, top: 10),
                    child: Opacity(
                      opacity: 0.65,
                      child: Container(
                        width: 290,
                        height: 100,
                        child: Opacity(
                          opacity: 0.4,
                          child: Card(),
                        ),
                      )
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Container(
                      width: 310,
                      height: 290,
                      child: Card(
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(top: 15),
                              child: Text("Login", style: TextStyle(
                                fontSize: 30,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Roboto'
                              )),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 40, left: 25, right: 25),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "your token",
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 50),
                              child: InkWell(
                                onTap: () {},
                                child: Container(
                                  child: Center(
                                    child: Text("SIGN IN", style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontFamily: 'Roboto'
                                    )),
                                  ),
                                  width: 250,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [const Color(0xFF758CFF) ,const Color(0xFF7AC5F5)]
                                    )
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  )
                ],
              ),
            ) 
          ],
        ),
     ),
    );
  }
}