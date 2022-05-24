import 'package:flutter/material.dart';
import 'package:samskara_customer/dashboard/DashboardScreentab.dart';

import '../common/ButtonClass.dart';

class TimeAvail extends StatefulWidget {
  const TimeAvail({Key? key}) : super(key: key);

  @override
  State<TimeAvail> createState() => _TimeAvailState();
}

class _TimeAvailState extends State<TimeAvail> {
  bool isChecked=false;
  var deviceSize;
  static const int numItems = 7;
    List<bool> selected = List<bool>.generate(numItems, (int index) => false);
    var arr = ["Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday"];


  @override
  Widget build(BuildContext context) {
    deviceSize = MediaQuery.of(context).size;
    var height = deviceSize.height;
    var width = deviceSize.width;
    return WillPopScope(
      onWillPop: ()async=>false,
        child: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Theme.of(context).accentColor,
              leading: Container(
                padding: EdgeInsets.only(left: 10.0),
                child: IconButton(
                    icon: Container(
                        width: 25,
                        height: 15,
                        child:
                        Image.asset("assets/icons/backicon.png")),
                    color: Theme.of(context).primaryColor,
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (BuildContext context)=>DashboardScreentab(3,"Account")), (route) => false);
                    },
                    iconSize: 32),
              ),
              title: Text("Time Availability",style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Color(0xFF131A22),
                  height: 1.08,
                  letterSpacing: 0.50),) ,
            ),
            body: Container(
                width: width,
                height: height,
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                child:SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child:Column(
                      children: [
                        DataTable(
                            columnSpacing: 15,
                            columns: const <DataColumn>[
                              DataColumn(
                                label: Text(
                                  'Days',
                                  style: TextStyle(
                                      color: Color(0xFF000000),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600
                                  ),
                                ),
                              ),
                              DataColumn(
                                label: Text(
                                  'Action',
                                  style: TextStyle(
                                      color: Color(0xFF000000),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600
                                  ),
                                ),
                              ),
                              DataColumn(
                                label: Text(
                                  'Starting Time',
                                  style: TextStyle(
                                      color: Color(0xFF000000),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600
                                  ),
                                ),
                              ),
                              DataColumn(
                                label: Text(
                                  'End Time',
                                  style: TextStyle(
                                      color: Color(0xFF000000),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600
                                  ),
                                ),
                              ),
                            ],
                            rows:List<DataRow>.generate(numItems, (int index) =>
                                DataRow(
                                  cells: <DataCell>[

                                    DataCell(Text(arr[index],
                                        style: TextStyle(
                                            color: Color(0xFF000000),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400
                                        )),),
                                    DataCell(
                                      Checkbox(
                                          checkColor: Color(0xFFffffff),
                                          value: selected[index],
                                          activeColor:Color(0xFF1E2F59),
                                          onChanged: (bool? value) {
                                            setState(() {
                                              selected[index] = value!;
                                            });
                                          }),
                                    ),
                                    DataCell(Container(
                                        width: 71,height: 25,
                                        color: Color(0xFFF3F5FF),
                                        alignment: Alignment.center,
                                        child: Text(selected[index]==true?"09:00AM":"00:00",
                                          style: TextStyle(
                                              color: selected[index]==true?Color(0xFF000000):Color(0xFFA3A3A3),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400
                                          ),
                                        ))),
                                    DataCell(
                                        Container(
                                            width: 71,height: 25,
                                            color: Color(0xFFF3F5FF),
                                            alignment: Alignment.center,
                                            child: Text(selected[index]==true?"09:00PM":"00:00",
                                              style: TextStyle(
                                                  color: selected[index]==true?Color(0xFF000000):Color(0xFFA3A3A3),
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400
                                              ),
                                            ))),

                                  ],
                                  // selected: selected[index],
                                  // onSelectChanged: (bool? value) {
                                  //   setState(() {
                                  //     selected[index] = value!;
                                  //   });
                                  // },
                                )
                              // rows:  <DataRow>[
                              //   DataRow(
                              //     cells: <DataCell>[
                              //
                              //       const DataCell(Text('Monday',
                              //         style: TextStyle(
                              //             color: Color(0xFF000000),
                              //             fontSize: 16,
                              //             fontWeight: FontWeight.w400
                              //         ),
                              //       )),
                              //       DataCell(
                              //         Checkbox(
                              //             checkColor: Color(0xFFffffff),
                              //             value: isChecked,
                              //             onChanged: (bool? value) {
                              //               setState(() {
                              //                 isChecked = value!;
                              //               });
                              //             }),
                              //       ),
                              //       DataCell(Container(
                              //           width: 71,height: 25,
                              //           color: Color(0xFFF3F5FF),
                              //           alignment: Alignment.center,
                              //           child: Text('09:00AM',
                              //             style: TextStyle(
                              //                 color: Color(0xFF000000),
                              //                 fontSize: 16,
                              //                 fontWeight: FontWeight.w400
                              //             ),
                              //           ))),
                              //       DataCell(
                              //           Container(
                              //               width: 71,height: 25,
                              //               color: Color(0xFFF3F5FF),
                              //               alignment: Alignment.center,
                              //               child: Text('09:00PM',
                              //                 style: TextStyle(
                              //                     color: Color(0xFF000000),
                              //                     fontSize: 16,
                              //                     fontWeight: FontWeight.w400
                              //                 ),
                              //               ))),
                              //     ],
                              //   ),
                              //   DataRow(
                              //     cells: <DataCell>[
                              //       DataCell(Text('Tuesday',
                              //         style: TextStyle(
                              //             color: Color(0xFF000000),
                              //             fontSize: 16,
                              //             fontWeight: FontWeight.w400
                              //         ),
                              //       )),
                              //       DataCell(
                              //         Checkbox(
                              //             checkColor: Color(0xFFffffff),
                              //             value: isChecked,
                              //             onChanged: (bool? value) {
                              //               setState(() {
                              //                 isChecked = value!;
                              //               });
                              //             }),
                              //       ),
                              //       DataCell(
                              //           Container(
                              //               width: 71,height: 25,
                              //               color: Color(0xFFF3F5FF),
                              //               alignment: Alignment.center,
                              //               child:
                              //               Text('09:00AM',
                              //                 style: TextStyle(
                              //                     color: Color(0xFF000000),
                              //                     fontSize: 16,
                              //                     fontWeight: FontWeight.w400
                              //                 ),
                              //               ))),
                              //       DataCell(
                              //           Container(
                              //               width: 71,height: 25,
                              //               color: Color(0xFFF3F5FF),
                              //               alignment: Alignment.center,
                              //               child:
                              //               Text('09:00PM',
                              //                 style: TextStyle(
                              //                     color: Color(0xFF000000),
                              //                     fontSize: 16,
                              //                     fontWeight: FontWeight.w400
                              //                 ),
                              //               ))),
                              //     ],
                              //   ),
                              //   DataRow(
                              //     cells: <DataCell>[
                              //       DataCell(Text('Wednesday',
                              //         style: TextStyle(
                              //             color: Color(0xFF000000),
                              //             fontSize: 16,
                              //             fontWeight: FontWeight.w400
                              //         ),
                              //       )),
                              //       DataCell(
                              //         Checkbox(
                              //             checkColor: Color(0xFFffffff),
                              //             value: isChecked,
                              //             onChanged: (bool? value) {
                              //               setState(() {
                              //                 isChecked = value!;
                              //               });
                              //             }),
                              //       ),
                              //       DataCell(
                              //           Container(
                              //               width: 71,height: 25,
                              //               color: Color(0xFFF3F5FF),
                              //               alignment: Alignment.center,
                              //               child:
                              //               Text('09:00AM',
                              //                 style: TextStyle(
                              //                     color: Color(0xFF000000),
                              //                     fontSize: 16,
                              //                     fontWeight: FontWeight.w400
                              //                 ),
                              //               ))),
                              //       DataCell(
                              //           Container(
                              //               width: 71,height: 25,
                              //               color: Color(0xFFF3F5FF),
                              //               alignment: Alignment.center,
                              //               child:
                              //               Text('09:00PM',
                              //                 style: TextStyle(
                              //                     color: Color(0xFF000000),
                              //                     fontSize: 16,
                              //                     fontWeight: FontWeight.w400
                              //                 ),
                              //               ))),
                              //     ],
                              //   ),
                              //   DataRow(
                              //     cells: <DataCell>[
                              //       DataCell(Text('Thursday',
                              //         style: TextStyle(
                              //             color: Color(0xFF000000),
                              //             fontSize: 16,
                              //             fontWeight: FontWeight.w400
                              //         ),
                              //       )),
                              //       DataCell(
                              //         Checkbox(
                              //             checkColor: Color(0xFFffffff),
                              //             value: isChecked,
                              //             onChanged: (bool? value) {
                              //               setState(() {
                              //                 isChecked = value!;
                              //               });
                              //             }),
                              //       ),
                              //       DataCell(
                              //           Container(
                              //               width: 71,height: 25,
                              //               color: Color(0xFFF3F5FF),
                              //               alignment: Alignment.center,
                              //               child: Text('09:00AM',
                              //                 style: TextStyle(
                              //                     color: Color(0xFF000000),
                              //                     fontSize: 16,
                              //                     fontWeight: FontWeight.w400
                              //                 ),
                              //               ))),
                              //       DataCell(
                              //           Container(
                              //               width: 71,height: 25,
                              //               color: Color(0xFFF3F5FF),
                              //               alignment: Alignment.center,
                              //               child:
                              //               Text('09:00PM',
                              //                 style: TextStyle(
                              //                     color: Color(0xFF000000),
                              //                     fontSize: 16,
                              //                     fontWeight: FontWeight.w400
                              //                 ),
                              //               ))),
                              //     ],
                              //   ),
                              //   DataRow(
                              //     cells: <DataCell>[
                              //       DataCell(Text('Friday',
                              //         style: TextStyle(
                              //             color: Color(0xFF000000),
                              //             fontSize: 16,
                              //             fontWeight: FontWeight.w400
                              //         ),
                              //       )),
                              //       DataCell(
                              //         Checkbox(
                              //             checkColor: Color(0xFFffffff),
                              //             value: isChecked,
                              //             onChanged: (bool? value) {
                              //               setState(() {
                              //                 isChecked = value!;
                              //               });
                              //             }),
                              //       ),
                              //       DataCell(
                              //           Container(
                              //               width: 71,height: 25,
                              //               color: Color(0xFFF3F5FF),
                              //               alignment: Alignment.center,
                              //               child:
                              //               Text('09:00AM',
                              //                 style: TextStyle(
                              //                     color: Color(0xFF000000),
                              //                     fontSize: 16,
                              //                     fontWeight: FontWeight.w400
                              //                 ),
                              //               ))),
                              //       DataCell(
                              //           Container(
                              //               width: 71,height: 25,
                              //               color: Color(0xFFF3F5FF),
                              //               alignment: Alignment.center,
                              //               child:
                              //               Text('09:00PM',
                              //                 style: TextStyle(
                              //                     color: Color(0xFF000000),
                              //                     fontSize: 16,
                              //                     fontWeight: FontWeight.w400
                              //                 ),
                              //               ))),
                              //     ],
                              //   ),
                              //   DataRow(
                              //     cells: <DataCell>[
                              //       DataCell(Text('Saturday',
                              //         style: TextStyle(
                              //             color: Color(0xFF000000),
                              //             fontSize: 16,
                              //             fontWeight: FontWeight.w400
                              //         ),
                              //       )),
                              //       DataCell(
                              //         Checkbox(
                              //             checkColor: Color(0xFFffffff),
                              //             value: isChecked,
                              //             onChanged: (bool? value) {
                              //               setState(() {
                              //                 isChecked = value!;
                              //               });
                              //             }),
                              //       ),
                              //       DataCell(
                              //           Container(
                              //               width: 71,height: 25,
                              //               color: Color(0xFFF3F5FF),
                              //               alignment: Alignment.center,
                              //               child:
                              //               Text('09:00AM',
                              //                 style: TextStyle(
                              //                     color: Color(0xFF000000),
                              //                     fontSize: 16,
                              //                     fontWeight: FontWeight.w400
                              //                 ),
                              //               ))),
                              //       DataCell(
                              //           Container(
                              //               width: 71,height: 25,
                              //               color: Color(0xFFF3F5FF),
                              //               alignment: Alignment.center,
                              //               child:
                              //               Text('09:00PM',
                              //                 style: TextStyle(
                              //                     color: Color(0xFF000000),
                              //                     fontSize: 16,
                              //                     fontWeight: FontWeight.w400
                              //                 ),
                              //               ))),
                              //     ],
                              //   ),
                              //   DataRow(
                              //     cells: <DataCell>[
                              //       DataCell(Text('Sunday',
                              //         style: TextStyle(
                              //             color: Color(0xFF000000),
                              //             fontSize: 16,
                              //             fontWeight: FontWeight.w400
                              //         ),
                              //       )),
                              //       DataCell(
                              //         Checkbox(
                              //             checkColor: Color(0xFFffffff),
                              //             value: isChecked,
                              //             onChanged: (bool? value) {
                              //               setState(() {
                              //                 isChecked = value!;
                              //               });
                              //             }),
                              //       ),
                              //       DataCell(
                              //           Container(
                              //               width: 71,height: 25,
                              //               color: Color(0xFFF3F5FF),
                              //               alignment: Alignment.center,
                              //               child:
                              //               Text('09:00AM',
                              //                 style: TextStyle(
                              //                     color: Color(0xFF000000),
                              //                     fontSize: 16,
                              //                     fontWeight: FontWeight.w400
                              //                 ),
                              //               ))),
                              //       DataCell(
                              //           Container(
                              //               width: 71,height: 25,
                              //               color: Color(0xFFF3F5FF),
                              //               alignment: Alignment.center,
                              //               child:
                              //               Text('09:00PM',
                              //                 style: TextStyle(
                              //                     color: Color(0xFF000000),
                              //                     fontSize: 16,
                              //                     fontWeight: FontWeight.w400
                              //                 ),
                              //               ))),
                              //     ],
                              //   ),
                              // ],
                            )),
                        InkWell(
                          onTap: () {},
                          child: ButtonClass("Edit", 50, 40),
                        )
                      ],
                    ))),
          ),
        ), );
  }
}
