import 'dart:ui';
import 'package:covid19_ui/core/consts.dart';
import 'package:covid19_ui/pages/statistic_page.dart';
import 'package:covid19_ui/widgets/custom_appbar_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: AppColors.mainColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
            ),
            padding: EdgeInsets.only(top: 20, bottom: 15),
            child: Stack(
              children: <Widget>[
                //Image.asset("assets/images/virus.png"),
                _buildHeader(),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: RichText(
              text: TextSpan(
                text: "Symptoms of",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.black87,
                ),
                children: [
                  TextSpan(
                    text: "COVID 19",
                    style: TextStyle(
                      color: AppColors.mainColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 130,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 16),
              physics: BouncingScrollPhysics(),
              children: <Widget>[
                _buildSymtomItem("assets/images/b.png", "Fever"),
                _buildSymtomItem("assets/images/d.png", "Dry Cought"),
                _buildSymtomItem("assets/images/c.png", "Headache"),
                _buildSymtomItem("assets/images/a.png", "Breathless"),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "Prevention",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black87,
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 16),
              physics: BouncingScrollPhysics(),
              children: <Widget>[
                _buildPrevention(
                    "assets/images/wash1.png", "Wash", "Hanlde Often"),
                _buildPrevention(
                    "assets/images/mask1.png", "Cover", "Your Cough"),
              ],
            ),
          ),
          Column(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => StatisticPage(),
                    ),
                  );
                },
                child: Container(
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                    gradient: LinearGradient(
                      colors: [
                        Colors.purple[50],
                        Colors.white,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    border: Border.all(color: Colors.white),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(1, 1),
                        spreadRadius: 1,
                        blurRadius: 3,
                      )
                    ],
                  ),
                  padding: EdgeInsets.all(12),
                  child: Row(
                    children: <Widget>[
                      Image.asset("assets/images/maps.png"),
                      SizedBox(
                        width: 10,
                      ),
                      RichText(
                        text: TextSpan(
                          text: "Casses\n",
                          style: TextStyle(
                            color: AppColors.mainColor,
                            fontWeight: FontWeight.bold,
                            height: 1.3,
                          ),
                          children: [
                            TextSpan(
                              text: "Overview Worldweb\n",
                              style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            TextSpan(
                              text: "21.118.393 confirmed",
                              style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.normal,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(child: SizedBox()),
                      IconButton(
                        icon: Icon(Icons.arrow_forward_ios),
                        onPressed: null,
                      )
                    ],
                  ),
                  margin: EdgeInsets.symmetric(horizontal: 12),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSymtomItem(String path, String text) {
    return Column(
      children: <Widget>[
        Container(
          width: 90,
          height: 90,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
            gradient: LinearGradient(
              colors: [
                Colors.purple.withOpacity(.0001),
                Colors.white,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            border: Border.all(color: Colors.white),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                offset: Offset(1, 1),
                spreadRadius: 1,
                blurRadius: 3,
              )
            ],
          ),
          padding: EdgeInsets.only(top: 15),
          child: Image.asset(path),
          margin: EdgeInsets.only(right: 20),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          text,
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget _buildPrevention(String path, String text1, String text2) {
    return Column(
      children: <Widget>[
        Container(
          width: 180,
          height: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
            gradient: LinearGradient(
              colors: [
                Colors.purple[50],
                Colors.white,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            border: Border.all(color: Colors.white),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                offset: Offset(1, 1),
                spreadRadius: 1,
                blurRadius: 3,
              )
            ],
          ),
          padding: EdgeInsets.all(12),
          child: Row(
            children: <Widget>[
              Image.asset(path),
              SizedBox(
                width: 10,
              ),
              RichText(
                text: TextSpan(
                  text: "$text1\n",
                  style: TextStyle(
                    color: AppColors.mainColor,
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    TextSpan(
                      text: text2,
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          margin: EdgeInsets.only(left: 20),
        ),
      ],
    );
  }

  Widget _buildHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        CustomAppbarWidget(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            "COVID 19",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            "Coronavirus Relief Fund",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            "to this fund will help to stop the virus's spread and give communitieson the font lines.",
            style: TextStyle(
              color: Colors.white,
              height: 1,
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(8, 8, 8, 2),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: RaisedButton(
                    color: Colors.blue,
                    onPressed: () {},
                    child: Text(
                      "DONATE NOW",
                      style: TextStyle(color: Colors.white),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 10),
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: RaisedButton(
                    color: Colors.red,
                    onPressed: () {},
                    child: Text(
                      "EMERGENCY",
                      style: TextStyle(color: Colors.white),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 10),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
