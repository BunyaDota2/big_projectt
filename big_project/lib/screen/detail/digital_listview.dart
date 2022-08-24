// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last
import 'package:flutter/material.dart';

class DigList extends StatefulWidget {
  const DigList({Key? key}) : super(key: key);

  @override
  State<DigList> createState() => _DigListState();
}

class _DigListState extends State<DigList> {
  @override
  Widget build(BuildContext context) {
    final List<String> items = List<String>.generate(5, (i) => 'Item $i');
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            title: Text(items[index]),
            leading: Icon(Icons.play_circle_fill),
            trailing: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Icon(Icons.lock_open_rounded, color: Colors.white),
            ),
          ),
        );
      },
    );
  }
}
