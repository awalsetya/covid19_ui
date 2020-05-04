import 'package:covid19_ui/core/flutter_icons.dart';
import 'package:flutter/material.dart';

class CustomAppbarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        IconButton(
          icon: Icon(
            FlutterIcons.menu,
            color: Colors.white,
          ),
          onPressed: null,
        ),
        Container(
          width: 40,
          height: 40,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.all(
              Radius.circular(100),
            ),
            image: DecorationImage(
                image: NetworkImage(
                    "https://www.mantruckandbus.com/fileadmin/media/bilder/02_19/219_05_busbusiness_interviewHeader_1485x1254.jpg")),
          ),
        )
      ],
    );
  }
}