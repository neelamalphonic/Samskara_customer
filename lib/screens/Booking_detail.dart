import 'package:flutter/material.dart';
import 'package:samskara_customer/common/ButtonClass.dart';
import 'package:samskara_customer/common/Otp_dialog.dart';

import '../dashboard/DashboardScreentab.dart';

class Booking_Detail extends StatefulWidget {


  @override
  State<Booking_Detail> createState() => _Booking_DetailState();
}

class _Booking_DetailState extends State<Booking_Detail> {
  var deviceSize;
  @override
  Widget build(BuildContext context) {
    deviceSize = MediaQuery.of(context).size;
    var height = deviceSize.height;
    var width = deviceSize.width;
    const style=TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w700,
      fontFamily: 'Tw Cen MT',
      decoration: TextDecoration.none,
      color: Color(0xFF000000),
        letterSpacing: 0.5,
    );
    return WillPopScope(
      onWillPop: () async => false,
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
                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (BuildContext context)=>DashboardScreentab(1,"Booking")), (route) => false);
                    },
                    iconSize: 32),
              ),
              title: Text("Booking Detail",style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Color(0xFF131A22),
                  height: 1.08,
                  letterSpacing: 0.50),) ,
              actions: [
                // isLogin == false ? Container() :
                Container(
                  padding: EdgeInsets.only(right: 12),
                  child: IconButton(
                      icon: Image.asset(
                        'assets/icons/help.png',
                        width: 20.4,
                        height: 24,
                      ),
                      color: Theme.of(context).primaryColor,
                      onPressed: () {
                      },
                      iconSize: 12),
                )
              ],
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: width,
                      child:
                      Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          color: Color(0xFFF3F5FF),
                          shadowColor: Color(0xFF000000),
                          elevation:6,
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child:
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(bottom: 8),
                                      child:  const Text(
                                        "Ganesh Puja",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontFamily: 'Tw Cen MT',
                                            fontWeight: FontWeight.w500,
                                            decoration: TextDecoration.none,
                                            color: Color(0xFF1E2F59)),
                                      ),
                                    ),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                            width: 17,
                                            height:17 ,
                                            alignment: Alignment.topLeft,
                                            child: Image.asset("assets/icons/rupees.png")),
                                        const SizedBox(width:2),
                                        const  Text(
                                          "1000.00",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontFamily: 'Tw Cen MT Bold',
                                              fontWeight: FontWeight.bold,
                                              decoration: TextDecoration.none,
                                              color: Color(0xFF000000)),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(width: width,height: 8,),
                                Row(
                                  children: [
                                    Container(
                                      width: 17,
                                      height:17 ,

                                      child: Image.asset("assets/icons/pandit.png"),


                                    )
                                    ,

                                    const  Padding(
                                        padding:  EdgeInsets.only(left: 5),
                                        child:  Text(
                                          "Pandit:",
                                          style: style,
                                        )
                                    ),
                                    const  Padding(
                                      padding: EdgeInsets.only(left: 2),
                                      child: Text(
                                        "1",
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: 'Tw Cen MT',
                                            decoration: TextDecoration.none,
                                            color: Color(0xFF000000),
                                            letterSpacing: 0.5,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(width: width,height: 8,),
                                Row(
                                  children: [
                                    Container(
                                        width: 17,
                                        height:17 ,
                                        child: Image.asset("assets/icons/product.png")),
                                    const Padding(
                                      padding:  EdgeInsets.only(left: 5),
                                      child:
                                      Text(
                                        "Product:",
                                        style: style,
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 2),
                                      child: Text(
                                        "Puja Services",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontFamily: 'Tw Cen MT',
                                            fontWeight: FontWeight.w500,
                                            decoration: TextDecoration.none,
                                            color: Color(0xFF000000),
                                            letterSpacing: 0.5,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(width: width,height: 8,),
                                Row(
                                  children: [
                                    Container(
                                        width: 17,
                                        height:17 ,
                                        child: Image.asset("assets/icons/package.png")),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 5),
                                      child: Text(
                                        "Package:",
                                        style:style,
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 2),
                                      child: Text(
                                        "Standard",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontFamily: 'Tw Cen MT',
                                            fontWeight: FontWeight.w400,
                                            decoration: TextDecoration.none,
                                            color: Color(0xFF000000),
                                            letterSpacing: 0.5,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(width: width,height: 8,),
                                Row(
                                  children: [
                                    Container(
                                        width: 17,
                                        height:17 ,
                                        child:Image.asset("assets/icons/date.png")),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 5),
                                      child: Text(
                                        "Date:",
                                        style: style,
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 2),
                                      child: Text(
                                        "12-May-2022",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontFamily: 'Tw Cen MT',
                                            fontWeight: FontWeight.w400,
                                            decoration: TextDecoration.none,
                                            color: Color(0xFF000000),
                                            letterSpacing: 0.5,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(width: width,height: 8,),
                                Row(
                                  children: [
                                    Container(
                                        width: 17,
                                        height:17 ,
                                        child: Image.asset("assets/icons/duration.png")),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 5),
                                      child: Text(
                                        "Duration:",
                                        style: style,
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 2),
                                      child: Text(
                                        "3-Hours",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontFamily: 'Tw Cen MT',
                                            fontWeight: FontWeight.w400,
                                            decoration: TextDecoration.none,
                                            color: Color(0xFF000000),
                                            letterSpacing: 0.5,
                                        ),
                                      ),
                                    )
                                  ],
                                ),

                              ],),)
                      ),
                    ),
                    SizedBox(height: 14,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const[
                        Text(
                          "Customer Name:",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.none,
                              color: Color(0xFF1E2F59)),
                        ),
                        SizedBox(width: 2),
                        Expanded(
                          child: const Text(
                            "John Doe",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                decoration: TextDecoration.none,
                                color: Color(0xFF000000)),
                          ),
                        )

                      ],
                    ),
                    SizedBox(height: 11,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const[
                        Text(
                          "Inclusions:",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.none,
                              color: Color(0xFF1E2F59)),
                        ),
                        SizedBox(width: 2),
                        Expanded(
                          child:  Text(
                            "1 Qty ",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                decoration: TextDecoration.none,
                                color: Color(0xFF000000)),
                          ),
                        )

                      ],
                    ),
                    SizedBox(height:11,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const[
                        Text(
                          "Status:",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.none,
                              color: Color(0xFF1E2F59)),
                        ),
                        SizedBox(width: 2),
                        Expanded(
                          child:  Text(
                            "Event Accepted",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                decoration: TextDecoration.none,
                                color: Color(0xFF000000)),
                          ),
                        )

                      ],
                    ),
                    SizedBox(height: 11,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const[
                        Text(
                          "Payment:",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.none,
                              color: Color(0xFF1E2F59)),
                        ),
                        SizedBox(width: 2),
                        Expanded(
                          child:  Text(
                            "Paid After Event : Collection Pending",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                decoration: TextDecoration.none,
                                color: Color(0xFF000000)),
                          ),
                        )

                      ],
                    ),
                    SizedBox(height: 11,),
                    const Text(
                      "Reporting Time:",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.none,
                          color: Color(0xFF1E2F59)),
                    ),
                    SizedBox(height: 4,),
                    Container(
                      width:width-40,
                      height: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xFFF3F5FF)
                      ),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "12-May 2022",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  decoration: TextDecoration.none,
                                  color: Color(0xFF000000)),
                            ),
                            Text(
                              "|",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  decoration: TextDecoration.none,
                                  color: Color(0xFF000000)),
                            ),
                            Text(
                              "09:00AM",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  decoration: TextDecoration.none,
                                  color: Color(0xFF000000)),
                            ),
                          ]),),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const[
                        Text(
                          "Booking Note:",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.none,
                              color: Color(0xFF1E2F59)),
                        ),
                        SizedBox(width: 2,),
                        Expanded(
                          child:Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Hac at.",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                decoration: TextDecoration.none,
                                color: Color(0xFF000000)),
                          ),
                        )

                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const[
                        Text(
                          "Location:",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.none,
                              color: Color(0xFF1E2F59)),
                        ),
                        SizedBox(width: 2,),
                        Expanded(
                          child:Text(
                            "826, Kishanpole Bazar, Jaipur,Rajasthan, 302001, India",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                decoration: TextDecoration.none,
                                color: Color(0xFF000000)),
                          ),
                        )

                      ],
                    ),
                    SizedBox(height: 10,),
                    Container(
                        width: width-40,
                        height: 148,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),),
                        child: FittedBox(fit: BoxFit.fill,child: Image.asset("assets/images/map.png"),)

                    ),
                    SizedBox(height: 10,),
                    Container(
                        width:width-40,
                        height:36,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius:  BorderRadius.circular(20),
                            border: Border.all(color:Color(0xFF1E2F59),width: 1,),
                            color: Color(0xFFFFFFFF)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width:15,
                              height:18,
                              child:Image.asset("assets/icons/call.png"),
                            ),

                            SizedBox(width: 2,),
                            TextButton(
                                onPressed:(){},
                                child: Text(
                                  "Call Customer",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      decoration: TextDecoration.none,
                                      color: Color(0xFF1E2F59)),
                                )
                            )
                          ],
                        )

                    ),
                    SizedBox(height: 10,),
                    InkWell(
                        onTap:(){
                          showDialog(context: context, builder: (BuildContext context)=>
                          // Amount_dialog()
                          Otp_dialog()
                          );
                        },
                        child:ButtonClass("Complete Service",40,36)
                    ),
                    // Container(
                    //     width:width-40,
                    //     height:36,
                    //     decoration: BoxDecoration(
                    //         borderRadius:  BorderRadius.circular(20),
                    //         color: Color(0xFF1E2F59)
                    //     ),
                    //     child: TextButton(
                    //         onPressed:(){
                    //           showDialog(context: context, builder: (BuildContext context)=>
                    //             // Amount_dialog()
                    //             Otp_dialog()
                    //           );
                    //         },
                    //         child: Text(
                    //           "Complete Service",
                    //           style: TextStyle(
                    //               fontSize: 16,
                    //               fontWeight: FontWeight.w400,
                    //               decoration: TextDecoration.none,
                    //               color: Color(0xFFFFFFFF)),
                    //         )
                    //     )
                    // ),


                  ],
                ),
              ),
            )),
    ), );

  }
}
