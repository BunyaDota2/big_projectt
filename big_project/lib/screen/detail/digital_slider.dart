// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
// import 'package:get/get.dart';

class SliderPrice extends StatefulWidget {
  const SliderPrice({Key? key}) : super(key: key);

  @override
  State<SliderPrice> createState() => _SliderPriceState();
}

class _SliderPriceState extends State<SliderPrice> {
  double _currentSliderValue = 20;
  bool _isSelected = false;
  bool _isSelected1 = false;
  bool _isSelected2 = false;
  bool _isSelected3 = false;
  bool _isSelected4 = false;
  bool _isSelected5 = false;
  bool _isSelected6 = false;
  bool _isSelected7 = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(18),
          topLeft: Radius.circular(18),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
              left: 25,
              top: 25,
            ),
            child: Row(
              children: [
                Text(
                  'Price',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
                Spacer(),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Close'),
                ),
                SizedBox(
                  width: 18,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Slider(
            thumbColor: Colors.white,
            value: _currentSliderValue,
            max: 800,
            // divisions: 2,
            // label: _currentSliderValue.round().toString(),
            onChanged: (double value) {
              setState(() {
                _currentSliderValue = value;
              });
            },
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 25,
              bottom: 25,
            ),
            child: Text(
              'Rating',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: 1,
              ),
              SizedBox(
                width: 60,
                child: ChoiceChip(
                  label: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('5'),
                      Icon(
                        Icons.star,
                        color: _isSelected ? Colors.white : Colors.orange,
                        size: 17,
                      ),
                    ],
                  ),
                  backgroundColor: Colors.white,
                  elevation: 1,
                  selected: _isSelected,
                  labelStyle: TextStyle(
                    color: _isSelected ? Colors.white : Colors.black,
                  ),
                  selectedColor: Colors.blue,
                  onSelected: (newBoolValue) {
                    setState(() {
                      _isSelected = newBoolValue;
                    });
                  },
                ),
              ),
              SizedBox(
                width: 60,
                child: ChoiceChip(
                  label: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('4'),
                      Icon(
                        Icons.star,
                        color: _isSelected1 ? Colors.white : Colors.orange,
                        size: 17,
                      ),
                    ],
                  ),
                  backgroundColor: Colors.white,
                  elevation: 1,
                  selected: _isSelected1,
                  labelStyle: TextStyle(
                    color: _isSelected1 ? Colors.white : Colors.black,
                  ),
                  selectedColor: Colors.blue,
                  onSelected: (newBoolValue) {
                    setState(() {
                      _isSelected1 = newBoolValue;
                    });
                  },
                ),
              ),
              SizedBox(
                width: 60,
                child: ChoiceChip(
                  label: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('3'),
                      Icon(
                        Icons.star,
                        color: _isSelected2 ? Colors.white : Colors.orange,
                        size: 17,
                      ),
                    ],
                  ),
                  backgroundColor: Colors.white,
                  elevation: 1,
                  selected: _isSelected2,
                  labelStyle: TextStyle(
                    color: _isSelected2 ? Colors.white : Colors.black,
                  ),
                  selectedColor: Colors.blue,
                  onSelected: (newBoolValue) {
                    setState(() {
                      _isSelected2 = newBoolValue;
                    });
                  },
                ),
              ),
              SizedBox(
                width: 60,
                child: ChoiceChip(
                  label: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('2'),
                      Icon(
                        Icons.star,
                        color: _isSelected3 ? Colors.white : Colors.orange,
                        size: 17,
                      ),
                    ],
                  ),
                  backgroundColor: Colors.white,
                  elevation: 1,
                  selected: _isSelected3,
                  labelStyle: TextStyle(
                    color: _isSelected3 ? Colors.white : Colors.black,
                  ),
                  selectedColor: Colors.blue,
                  onSelected: (newBoolValue) {
                    setState(() {
                      _isSelected3 = newBoolValue;
                    });
                  },
                ),
              ),
              SizedBox(
                width: 1,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 35,
              top: 20,
            ),
            child: Text(
              'Categories',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 1,
              ),
              SizedBox(
                width: 150,
                height: 80,
                child: ChoiceChip(
                  avatar: CircleAvatar(
                    radius: 15,
                    backgroundColor: _isSelected4 ? Colors.white : Colors.black,
                    child: Icon(
                      Icons.local_fire_department_rounded,
                      color: _isSelected4 ? Colors.blue : Colors.orange,
                    ),
                  ),
                  label: SizedBox(
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        // Text('5 ⭐️'),
                        Text('All Topic'),
                      ],
                    ),
                  ),
                  backgroundColor: Colors.white,
                  elevation: 1,
                  selected: _isSelected4,
                  labelStyle: TextStyle(
                    color: _isSelected4 ? Colors.white : Colors.black,
                  ),
                  selectedColor: Colors.blue,
                  onSelected: (newBoolValue) {
                    setState(() {
                      _isSelected4 = newBoolValue;
                    });
                  },
                ),
              ),
              SizedBox(
                height: 80,
                width: 150,
                child: ChoiceChip(
                  avatar: CircleAvatar(
                    radius: 15,
                    backgroundColor: _isSelected5 ? Colors.black : Colors.orange,
                    child: Icon(
                      Icons.electric_bolt,
                      color: _isSelected5 ? Colors.purpleAccent : Colors.white,
                    ),
                  ),
                  label: SizedBox(
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Popular'),
                      ],
                    ),
                  ),
                  backgroundColor: Colors.white,
                  elevation: 1,
                  selected: _isSelected5,
                  labelStyle: TextStyle(
                    color: _isSelected5 ? Colors.white : Colors.black,
                  ),
                  selectedColor: Colors.blue,
                  onSelected: (newBoolValue) {
                    setState(() {
                      _isSelected5 = newBoolValue;
                    });
                  },
                ),
              ),
              SizedBox(
                width: 1,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: 1,
              ),
              SizedBox(
                width: 150,
                height: 80,
                child: ChoiceChip(
                  label: SizedBox(
                    height: 45,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Reset',
                          style: TextStyle(
                              color:
                                  _isSelected6 ? Colors.white : Colors.black),
                        ),
                      ],
                    ),
                  ),
                  backgroundColor: Colors.white,
                  side: BorderSide(
                      color: _isSelected6 ? Colors.blue : Colors.black),
                  selected: _isSelected6,
                  labelStyle: TextStyle(
                    color: _isSelected6 ? Colors.black : Colors.white,
                  ),
                  selectedColor: Colors.blue,
                  onSelected: (newBoolValue) {
                    setState(() {
                      _isSelected6 = newBoolValue;
                    });
                  },
                ),
              ),
              SizedBox(
                width: 150,
                height: 80,
                child: ChoiceChip(
                  label: SizedBox(
                    height: 45,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Apply',
                          style: TextStyle(
                              color:
                                  _isSelected7 ? Colors.white : Colors.black),
                        ),
                      ],
                    ),
                  ),
                  backgroundColor: Colors.white,
                  side: BorderSide(
                      color: _isSelected7 ? Colors.blue : Colors.black),
                  selected: _isSelected7,
                  labelStyle: TextStyle(
                    color: _isSelected7 ? Colors.black : Colors.white,
                  ),
                  selectedColor: Colors.blue,
                  onSelected: (newBoolValue) {
                    setState(() {
                      _isSelected7 = newBoolValue;
                    });
                  },
                ),
              ),
              SizedBox(
                width: 1,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
