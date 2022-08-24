// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last
import 'package:big_project/screen/detail/digital_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PriceBuy extends StatefulWidget {
  const PriceBuy({Key? key}) : super(key: key);

  @override
  State<PriceBuy> createState() => _PriceBuyState();
}

class _PriceBuyState extends State<PriceBuy> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 90,
      color: Colors.white,
      child: Row(
        children: [
          SizedBox(
            width: 25,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            height: 43,
            width: 90,
            child: Row(
              children: [
                SizedBox(
                  width: 6,
                ),
                Icon(
                  Icons.price_check,
                  size: 25,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  '27.00',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      fontSize: 15),
                ),
              ],
            ),
          ),
          Spacer(),
          ElevatedButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
            child: Container(
              height: 60,
              width: 220,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Center(
                child: Text(
                  'Buy Now',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            onPressed: () {
              Scaffold.of(context)
                  .showBottomSheet<void>((BuildContext context) {
                return SliderPrice();
              });
            },
          ),
          SizedBox(
            width: 25,
          ),
        ],
      ),
    );
  }
}
