import 'package:flutter/material.dart';

import '../common/ButtonClass.dart';
import '../dashboard/DashboardScreentab.dart';

class EventSelect extends StatefulWidget {
   EventSelect({Key? key}) : super(key: key);

  @override
  State<EventSelect> createState() => _EventSelectState();
}

class _EventSelectState extends State<EventSelect> {
  static const int numItems=10;
  List<bool>selected=List<bool>.generate(numItems, (index) => false);
  var arr=["Ganesh Puja","Mundan","Ganesh Puja","Mundan","Mundan","Ganesh Puja","Mundan","Mundan",'Ganesh Puja',"Ganesh Puja"];
  bool isChecked=false;
  var deviceSize;

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
              title: Text("Event Select",style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Color(0xFF131A22),
                  height: 1.08,
                  letterSpacing: 0.50),) ,
            ),
            body: Container(
                width: width,
                height: height,
                padding: EdgeInsets.zero,
                child:SingleChildScrollView(
                    child:Column(
                      children: [
                        DataTable(
                            horizontalMargin: 0,
                            columnSpacing: 100,
                            columns: const <DataColumn>[
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
                                  'Event Name',
                                  style: TextStyle(
                                      color: Color(0xFF000000),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600
                                  ),
                                ),
                              ),
                            ],
                            rows: List<DataRow>.generate(numItems, (index) =>
                                DataRow(
                                    cells: <DataCell>[
                                      DataCell(
                                        Checkbox(
                                            checkColor: Color(0xFFffffff),
                                            activeColor: Color(0xFF1E2F59),
                                            value: selected[index],
                                            onChanged: (bool? value) {
                                              setState(() {
                                                selected[index] = value!;
                                              });
                                            }),
                                      ),
                                      DataCell(Text(arr[index],
                                        style: TextStyle(
                                            color: Color(0xFF000000),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400
                                        ),
                                      )),
                                    ]
                                )
                            )
                          // rows:  <DataRow>[
                          //         DataRow(
                          //           cells: <DataCell>[
                          //             DataCell(
                          //               Checkbox(
                          //                   checkColor: Color(0xFFffffff),
                          //                   value: isChecked,
                          //                   onChanged: (bool? value) {
                          //                     setState(() {
                          //                       isChecked = value!;
                          //                     });
                          //                   }),
                          //             ),
                          //             const DataCell(Text('Monday',
                          //               style: TextStyle(
                          //                   color: Color(0xFF000000),
                          //                   fontSize: 16,
                          //                   fontWeight: FontWeight.w400
                          //               ),
                          //             )),
                          //
                          //
                          //           ],
                          //         ),
                          //         DataRow(
                          //           cells: <DataCell>[
                          //             DataCell(
                          //               Checkbox(
                          //                   checkColor: Color(0xFFffffff),
                          //                   value: isChecked,
                          //                   onChanged: (bool? value) {
                          //                     setState(() {
                          //                       isChecked = value!;
                          //                     });
                          //                   }),
                          //             ),
                          //             DataCell(Text('Tuesday',
                          //               style: TextStyle(
                          //                   color: Color(0xFF000000),
                          //                   fontSize: 16,
                          //                   fontWeight: FontWeight.w400
                          //               ),
                          //             )),
                          //
                          //
                          //           ],
                          //         ),
                          //         DataRow(
                          //           cells: <DataCell>[
                          //             DataCell(
                          //               Checkbox(
                          //                   checkColor: Color(0xFFffffff),
                          //                   value: isChecked,
                          //                   onChanged: (bool? value) {
                          //                     setState(() {
                          //                       isChecked = value!;
                          //                     });
                          //                   }),
                          //             ),
                          //             DataCell(Text('Wednesday',
                          //               style: TextStyle(
                          //                   color: Color(0xFF000000),
                          //                   fontSize: 16,
                          //                   fontWeight: FontWeight.w400
                          //               ),
                          //             )),
                          //
                          //           ],
                          //         ),
                          //         DataRow(
                          //           cells: <DataCell>[
                          //             DataCell(
                          //               Checkbox(
                          //                   checkColor: Color(0xFFffffff),
                          //                   value: isChecked,
                          //                   onChanged: (bool? value) {
                          //                     setState(() {
                          //                       isChecked = value!;
                          //                     });
                          //                   }),
                          //             ),
                          //             DataCell(Text('Thursday',
                          //               style: TextStyle(
                          //                   color: Color(0xFF000000),
                          //                   fontSize: 16,
                          //                   fontWeight: FontWeight.w400
                          //               ),
                          //             )),
                          //
                          //           ],
                          //         ),
                          //         DataRow(
                          //           cells: <DataCell>[
                          //             DataCell(
                          //               Checkbox(
                          //                   checkColor: Color(0xFFffffff),
                          //                   value: isChecked,
                          //                   onChanged: (bool? value) {
                          //                     setState(() {
                          //                       isChecked = value!;
                          //                     });
                          //                   }),
                          //             ),
                          //             DataCell(Text('Friday',
                          //               style: TextStyle(
                          //                   color: Color(0xFF000000),
                          //                   fontSize: 16,
                          //                   fontWeight: FontWeight.w400
                          //               ),
                          //             )),
                          //
                          //           ],
                          //         ),
                          //         DataRow(
                          //           cells: <DataCell>[
                          //             DataCell(
                          //               Checkbox(
                          //                   checkColor: Color(0xFFffffff),
                          //                   value: isChecked,
                          //                   onChanged: (bool? value) {
                          //                     setState(() {
                          //                       isChecked = value!;
                          //                     });
                          //                   }),
                          //             ),
                          //             DataCell(Text('Saturday',
                          //               style: TextStyle(
                          //                   color: Color(0xFF000000),
                          //                   fontSize: 16,
                          //                   fontWeight: FontWeight.w400
                          //               ),
                          //             )),
                          //
                          //           ],
                          //         ),
                          //         DataRow(
                          //           cells: <DataCell>[
                          //             DataCell(
                          //               Checkbox(
                          //                   checkColor: Color(0xFFffffff),
                          //                   value: isChecked,
                          //                   onChanged: (bool? value) {
                          //                     setState(() {
                          //                       isChecked = value!;
                          //                     });
                          //                   }),
                          //             ),
                          //             DataCell(Text('Sunday',
                          //               style: TextStyle(
                          //                   color: Color(0xFF000000),
                          //                   fontSize: 16,
                          //                   fontWeight: FontWeight.w400
                          //               ),
                          //             )),
                          //
                          //
                          //           ],
                          //         ),
                          //         DataRow(
                          //           cells: <DataCell>[
                          //             DataCell(
                          //               Checkbox(
                          //                   checkColor: Color(0xFFffffff),
                          //                   value: isChecked,
                          //                   onChanged: (bool? value) {
                          //                     setState(() {
                          //                       isChecked = value!;
                          //                     });
                          //                   }),
                          //             ),
                          //             DataCell(Text('Sunday',
                          //               style: TextStyle(
                          //                   color: Color(0xFF000000),
                          //                   fontSize: 16,
                          //                   fontWeight: FontWeight.w400
                          //               ),
                          //             )),
                          //
                          //           ],
                          //         ),
                          //         DataRow(
                          //           cells: <DataCell>[
                          //             DataCell(
                          //               Checkbox(
                          //                   checkColor: Color(0xFFffffff),
                          //                   value: isChecked,
                          //                   onChanged: (bool? value) {
                          //                     setState(() {
                          //                       isChecked = value!;
                          //                     });
                          //                   }),
                          //             ),
                          //             DataCell(Text('Sunday',
                          //               style: TextStyle(
                          //                   color: Color(0xFF000000),
                          //                   fontSize: 16,
                          //                   fontWeight: FontWeight.w400
                          //               ),
                          //             )),
                          //
                          //           ],
                          //         ),
                          //         DataRow(
                          //           cells: <DataCell>[
                          //             DataCell(
                          //               Checkbox(
                          //                   checkColor: Color(0xFFffffff),
                          //                   value: isChecked,
                          //                   onChanged: (bool? value) {
                          //                     setState(() {
                          //                       isChecked = value!;
                          //                     });
                          //                   }),
                          //             ),
                          //             DataCell(Text('Sunday',
                          //               style: TextStyle(
                          //                   color: Color(0xFF000000),
                          //                   fontSize: 16,
                          //                   fontWeight: FontWeight.w400
                          //               ),
                          //             )),
                          //
                          //           ],
                          //         ),
                          // ],
                        ),
                        InkWell(
                          onTap: () {},
                          child: ButtonClass("Edit", 50, 40),
                        ),
                        SizedBox(height: 20,)
                      ],
                    ))),
          ),
        ), )
      ;
  }
}
