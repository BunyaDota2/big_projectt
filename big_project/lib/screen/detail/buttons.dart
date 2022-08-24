// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last
import 'package:flutter/material.dart';

class ButtonWidget extends StatefulWidget {
  const ButtonWidget({Key? key}) : super(key: key);

  @override
  _ButtonWidgetState createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  bool _isSelectedLeft = false;
  bool _isSelectedRight = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 45,
          width: 350,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(22),
          ),
          child: Row(
            children: [
              SizedBox(
                height: 45,
                width: 175,
                child: ChoiceChip(
                  label: SizedBox(
                    height: 45,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Playlist'),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 20,
                          width: 35,
                          decoration: BoxDecoration(
                            color: _isSelectedLeft ? Colors. orangeAccent : Colors.grey,
                            borderRadius: BorderRadius.circular(18),
                          ),
                          child: Text(
                            '17',
                            style: TextStyle(
                              fontSize: 10,
                              color: _isSelectedLeft ? Colors.white : Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  backgroundColor: Colors.white,
                  selected: _isSelectedLeft,
                  labelStyle: TextStyle(
                    color: _isSelectedLeft ? Colors.white : Colors.grey,
                  ),
                  selectedColor: Colors.orange,
                  onSelected: (value) {
                    setState(() {
                      _isSelectedLeft = value;
                    });
                  },
                ),
              ),
              SizedBox(
                height: 45,
                width: 175,
                child: ChoiceChip(
                  label: SizedBox(
                    height: 45,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Descriptions'),
                      ],
                    ),
                  ),
                  backgroundColor: Colors.white,
                  selected: _isSelectedRight,
                  labelStyle: TextStyle(
                    color: _isSelectedRight ? Colors.white : Colors.grey,
                  ),
                  selectedColor: Colors.orange,
                  onSelected: (value) {
                    setState(() {
                      _isSelectedRight = value;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
