import 'package:covid19_ui/core/consts.dart';
import 'package:covid19_ui/core/flutter_icons.dart';
import 'package:covid19_ui/widgets/chart_widget.dart';
import 'package:covid19_ui/widgets/custom_appbar_widget.dart';
import 'package:flutter/material.dart';

class StatisticPage extends StatefulWidget {
  @override
  _StatisticPageState createState() => _StatisticPageState();
}

class _StatisticPageState extends State<StatisticPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Stack(
        children: <Widget>[
          Container(
            height: 245,
            decoration: BoxDecoration(
              color: AppColors.mainColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
            ),
           // padding: EdgeInsets.only(top: 25),
            //child: Image.asset("assets/images/virus.png"),
          ),
          Container(
            padding: EdgeInsets.only(top: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CustomAppbarWidget(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    "STATISTICS",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                _buildStatistic(),
                Padding(
                  padding:  EdgeInsets.all(10),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: _buildGender(FlutterIcons.male,
                            Colors.orangeAccent, "MALE", "59.53 %"),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: _buildGender(FlutterIcons.female,
                            Colors.pinkAccent, "FEMALE", "59.53 %"),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: RichText(
                    text: TextSpan(
                      text: "Global Cases of",
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
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Container(
                      height: 100,
                      child:
                          Center(child: Image.asset("assets/images/maps.png",width: 400,))),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildGender(IconData icon, Color color, String title, String value) {
    return Container(
      margin: EdgeInsets.fromLTRB(5,5, 5, 0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
        border: Border.all(color: Colors.white),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(1, 1),
            spreadRadius: 1,
            blurRadius: 1,
          ),
        ],
      ),
      padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(
                icon,
                size: 60,
                color: color,
              ),
              SizedBox(width: 5,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    "Confirmed\nCase",
                    style: TextStyle(
                      color: Colors.black38,
                      height: 1.5,
                    ),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            value,
            style: TextStyle(
              color: Colors.orangeAccent,
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatistic() {
    return Container(
      height: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
        border: Border.all(color: Colors.white),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(1, 1),
            spreadRadius: 1,
            blurRadius: 1,
          ),
        ],
      ),
      margin: EdgeInsets.symmetric(horizontal: 15),
      padding: EdgeInsets.all(8),
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              width: 150,
              height: 150,
              child: DonutPieChart.withSampleData(),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _buildStatisticItem(
                  Colors.blueAccent,
                  "Confirmed",
                  "23.293.539",
                ),
                _buildStatisticItem(
                  Colors.yellowAccent,
                  "Recovered",
                  "5.95.229",
                ),
                _buildStatisticItem(
                  Colors.redAccent,
                  "Death",
                  "1.60.717",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatisticItem(Color color, String title, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Icon(
          FlutterIcons.label,
          size: 40,
          color: color,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(color: Colors.black38),
            ),
            Text(value),
          ],
        )
      ],
    );
  }
}
