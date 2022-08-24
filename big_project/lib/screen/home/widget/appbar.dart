// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last
import 'package:flutter/material.dart';


class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: EdgeInsets.only(),
                child: Text(
                  'Hello,',
                  style: TextStyle(color: Colors.grey, fontSize: 18.0),
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(),
                    child: Text(
                      'Dear Friends',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 22.0,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.waving_hand,
                    size: 24,
                    color: Colors.yellow.shade800,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            width: 40,
          ),
          Container(
            height: 90,
            width: 90,
            padding: EdgeInsets.only(top: 40.5, left: 50,),
            child: Image.asset('assets/icons/maleicon.jpeg'),
          ),
        ],
      ),
    );
  }
}