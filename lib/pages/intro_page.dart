import 'package:flutter/material.dart';
import '../core/consts.dart';

class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            AppColors.mainColor,
            AppColors.mainColor.withOpacity(.5),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        )),
        child: Stack(
          children: <Widget>[
            buildHeader(),
            Image.asset(
                "assets/images/covid19.png",
              ),
            _buildFooter(context)
          ],
        ),
      ),
    );
  }

  Padding buildHeader() {
    return Padding(
            padding: const EdgeInsets.fromLTRB(15, 50, 15, 0),
            child: Align(
              alignment: Alignment.topCenter,
              child: Image.asset(
                "assets/images/covid19.png",
              ),
            ),
          );
  }

  Widget _buildFooter(BuildContext context) {
    return Positioned(
            bottom: 50,
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Corona virus disease (Covid19)",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "is an infectianus disease caused by a new virus",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      height: 1.5,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 25,),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color:Colors.black26,
                          offset: Offset(1, 1),
                          spreadRadius: 1,
                          blurRadius: 1,
                        )
                      ]
                    ),
                    width: MediaQuery.of(context).size.width *.85,
                    height: 60,
                    child: Center(
                      child: Text("GET STARTED",
                      style: TextStyle(
                        color:AppColors.mainColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),),
                    ),
                  )
                ],
              ),
            ),
          );
  }
}
