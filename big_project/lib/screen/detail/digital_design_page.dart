// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last
import 'package:big_project/screen/detail/buttons.dart';
import 'package:big_project/screen/detail/digital_listview.dart';
import 'package:flutter/material.dart';
import 'package:big_project/screen/home/home.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:intl/intl.dart';
import 'digdesbotbar.dart';

class CourseDetailPage extends StatefulWidget {
  const CourseDetailPage({Key? key}) : super(key: key);

  @override
  State<CourseDetailPage> createState() => _CourseDetailPageState();
}

class _CourseDetailPageState extends State<CourseDetailPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.lightBlue.shade100,
          appBar: AppBar(
            title: Text(
              'Design Thinking',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            centerTitle: true,
            elevation: 0,
            backgroundColor: Colors.white,
            leading: IconButton(
              icon: Icon(
                Icons.keyboard_arrow_left_rounded,
                size: 40,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
              actions: <Widget>[
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/121-1216772_cheating-on-love2d-works-or-so-it-seems-non-communicable-diseases-icon.png',
                    height: 30,
                  ),
                ),
              ],
            ),
            body: Column(
              children: [
                Expanded(
                  child: ListView(
                    children: [
                      Column(
                        children: [
                          SizedBox(height: 25),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/PRO 28.png'),
                                ),
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15),
                                ),
                              ),
                              width: 350,
                              height: 200,
                            ),
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 31,
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(15),
                                      bottomRight: Radius.circular(15),
                                    ),
                                  ),
                                  width: 350,
                                  height: 50,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Icon(
                                        Icons.play_circle,
                                        color: Colors.blue.shade700,
                                        size: 40,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        '06:25 / 17:45',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w800),
                                      ),
                                      Spacer(),
                                      Icon(
                                        Icons.volume_up_rounded,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(
                                        Icons.crop_free,
                                        color: Colors.blue.shade700,
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              // Padding(
                              //   padding: EdgeInsets.only(),
                              //   child: Container(
                              //     width: 20,
                              //     height: 30,
                              //     decoration: BoxDecoration(
                              //       color: Colors.blue,
                              //     ),
                              //   ),
                              // ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          // Container(
                          //   decoration: BoxDecoration(
                          //     borderRadius: BorderRadius.circular(25),
                          //     color: Colors.white,
                          //   ),
                          //   width: 350,
                          //   height: 45,
                          //   child: Row(
                          //     children: [
                          //       Container(
                          //         height: 50,
                          //         width: 175,
                          //         child: TextButton(
                          //           onPressed: () {},
                          //           style: ButtonStyle(
                          //             foregroundColor:
                          //                 MaterialStateProperty.resolveWith<
                          //                     Color>((Set<MaterialState> states) {
                          //               if (states
                          //                   .contains(MaterialState.hovered)) {
                          //                 return Colors.green;
                          //               }
                          //               return Colors.purpleAccent;
                          //             }),
                          //           ),
                          //           child: const Text(
                          //             'Text Button ',
                          //             style: TextStyle(fontSize: 24),
                          //           ),
                          //         ),
                          //       ),
                          //       Container(
                          //         decoration: BoxDecoration(
                          //           color: Colors.white,
                          //           borderRadius: BorderRadius.circular(25),
                          //         ),
                          //         height: 50,
                          //         width: 175,
                          //         child: InkWell(
                          //           onTap: () {},
                          //           child: Center(
                          //             child: Text(
                          //               'Description',
                          //               style: TextStyle(
                          //                 fontWeight: FontWeight.w700,
                          //                 color: Colors.grey,
                          //               ),
                          //             ),
                          //           ),
                          //         ),
                          //       ),
                          //     ],
                          //   ),
                          // ),
                          // Padding(
                          //   padding: EdgeInsets.symmetric(
                          //     vertical: 20,
                          //     horizontal: 25,
                          //   ),
                          //   child: ListView(
                          //     scrollDirection: Axis.vertical,
                          //     shrinkWrap: true,
                          //     children: [
                          //       ListTile(
                          //         tileColor: Colors.white,
                          //         shape: StadiumBorder(
                          //           side: BorderSide(
                          //             color: Colors.blueAccent,
                          //             width: 2,
                          //           ),
                          //         ),
                          //         iconColor: Colors.blue,
                          //         leading: Icon(
                          //           Icons.play_circle_fill,
                          //           size: 40,
                          //         ),
                          //         title: Text(
                          //           'Introduction',
                          //         ),
                          //         subtitle: Text(
                          //           '06:25 / 17:45',
                          //         ),
                          //         trailing: Icon(
                          //           Icons.lock_open_outlined,
                          //           size: 30,
                          //         ),
                          //       ),
                          //       SizedBox(
                          //         height: 10,
                          //       ),
                          //       ListTile(
                          //         tileColor: Colors.white,
                          //         shape: StadiumBorder(
                          //           side: BorderSide(
                          //             color: Colors.blueAccent,
                          //             width: 2,
                          //           ),
                          //         ),
                          //         iconColor: Colors.grey,
                          //         leading: Icon(
                          //           Icons.looks_two_rounded,
                          //           size: 40,
                          //         ),
                          //         // child: Text('2',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),),
                          //
                          //         title: Text(
                          //           'What is Design Thinking?',
                          //         ),
                          //         subtitle: Text(
                          //           '00:00/12:50',
                          //         ),
                          //         trailing: Icon(
                          //           Icons.lock_outline_rounded,
                          //           size: 30,
                          //         ),
                          //       ),
                          //       SizedBox(
                          //         height: 10,
                          //       ),
                          //       ListTile(
                          //         tileColor: Colors.white,
                          //         shape: StadiumBorder(
                          //           side: BorderSide(
                          //             color: Colors.blueAccent,
                          //             width: 2,
                          //           ),
                          //         ),
                          //         iconColor: Colors.grey,
                          //         leading: Icon(
                          //           Icons.three_g_mobiledata,
                          //           size: 40,
                          //         ),
                          //         // child: Text('2',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),),
                          //
                          //         title: Text(
                          //           'What is Design Thinking?',
                          //         ),
                          //         subtitle: Text(
                          //           '00:00/12:50',
                          //         ),
                          //         trailing: Icon(
                          //           Icons.lock_outline_rounded,
                          //           size: 30,
                          //         ),
                          //       ),
                          //     ],
                          //   ),
                          // ),
                          ButtonWidget(),
                          DigList(),
                        ],
                      ),
                    ],
                  ),
                ),
                PriceBuy(),
              ],
            ),

          ),
          //         width: 30,
          //       ),
          //     ),
          //   ],
          //   title: Text(
          //     'Design Thinking',
          //     style: TextStyle(
          //       fontWeight: FontWeight.w500,
          //       fontSize: 20,
          //       color: Colors.black,
          //     ),
          //   ),
          //   centerTitle: true,
          //   backgroundColor: Colors.white,
          //   leading: IconButton(
          //     icon: Icon(
          //       Icons.keyboard_arrow_left_rounded,
          //       size: 40,
          //       color: Colors.black,
          //     ),
          //     onPressed: () {
          //       Navigator.of(context).pop();
          //     },
          //   ),
          // ),
          // body: Expanded(
          //   child: Column(
          //     children: <Widget>[
          //       Column(
          //
          //       ),

          //     body: Center(
          //       child: ConstrainedBox(
          //         constraints: BoxConstraints(
          //           minWidth: 70,
          //           minHeight: 70,
          //           maxWidth: 400,
          //           maxHeight: 650,
          //         ),
          //         child: Container(
          //           decoration: BoxDecoration(
          //               image: DecorationImage(
          //                 fit: BoxFit.cover,
          //                 image: AssetImage('assets/PRO 28.png'),),
          //               color: Colors.white,
          //               borderRadius: BorderRadius.only(
          //               topLeft: Radius.circular(15),
          //           topRight: Radius.circular(15),
          //         ),
          //       ),
          //       width: 350,
          //       height: 250,
          //     ),
          //   ),
          // ),

          //   body: Column(
          //     children: [
          //       Padding(
          //         padding: EdgeInsets.only(),
          //         child: Container(
          //           width: double.infinity,
          //           height: 200.0,
          //           decoration: BoxDecoration(
          //             color: Colors.white,
          //             image:
          //                 DecorationImage(image: AssetImage('assets/PRO 28.png')),
          //             borderRadius: BorderRadius.only(
          //               topLeft: Radius.circular(17),
          //               topRight: Radius.circular(17),
          //             ),
          //           ),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
        );
  }
}

// bottomNavigationBar: Container(
//   height: 7,
//   decoration: BoxDecoration(
//     color: Colors.white,
//     borderRadius: BorderRadius.only(
//       topRight: Radius.circular(20),
//       topLeft: Radius.circular(20),
//     ),
//   ),
//   child: Row(
//     children: [
//       Row(
//         children: [
//           Container(),
//         ],
//       ),
//     ],
//   ),
// ),

// class TabBar extends StatefulWidget {
//   const TabBar({Key? key}) : super(key: key);
//
//   @override
//   State<TabBar> createState() => _TabBarState();
// }
//
// class _TabBarState extends State<TabBar> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: DefaultTabController(
//         length: 2,
//         child: Scaffold(),
//       ),
//     );
//   }
// }

// body: Stack(
//   children: <Widget>[
//     // The containers in the background
//     Column(
//       children: <Widget>[
//       ],
//     ),
//     // The card widget with top padding,
//     // incase if you wanted bottom padding to work,
//     // set the `alignment` of container to Alignment.bottomCenter
//     Container(
//       alignment: Alignment.topCenter,
//       padding: EdgeInsets.only(
//           top: MediaQuery.of(context).size.height * .30,
//           right: 20.0,
//           left: 20.0),
//       child: SizedBox(
//         height: 200.0,
//         width: MediaQuery.of(context).size.width,
//         child: Card(
//           color: Colors.blue,
//           elevation: 0,
//         ),
//       ),
//     )
//   ],
// ),
