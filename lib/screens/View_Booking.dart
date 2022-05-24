import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:samskara_customer/common/Confirm_dialog.dart';

import '../dashboard/DashboardScreentab.dart';

class View_Booking extends StatefulWidget {
  var title;


 View_Booking(this.title);
  @override
  State<View_Booking> createState() => _View_BookingState();
}

class _View_BookingState extends State<View_Booking> {
  
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
    const styleone = TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w400,
      fontFamily: 'Tw Cen MT',
      decoration: TextDecoration.none,
      color: Color(0xFF000000),
      // height: 2.08,
      letterSpacing: 0.5,
    );
    const styletwo = TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w400,
      fontFamily: 'Tw Cen MT',
      decoration: TextDecoration.none,
      color: Color(0xFF1E2F59),
      // height: 2.08,
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
                     Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (BuildContext context)=>DashboardScreentab(1,"Request Booking")), (route) => false);
                    },
                    iconSize: 32),
              ),
              title: Text(widget.title,style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Color(0xFF131A22),
                  height: 1.08,
                  letterSpacing: 0.50),) ,
            ),
            body: Container(
              padding: const EdgeInsets.fromLTRB(20,10, 20, 10),
              width: width,
              height: height,
              child: Column(children: [
                Container(
                  width: width,
                  child: Card(
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
                                        width: 12,
                                        height:12 ,
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
                                        color: Color(0xFF000000)),
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
                                        color: Color(0xFF000000)),
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
                                        color: Color(0xFF000000)),
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
                                        color: Color(0xFF000000)),
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
                                        color: Color(0xFF000000)),
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
                                    child:Image.asset("assets/icons/starttime.png")),
                                const Padding(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Text(
                                    "Slot:",
                                    style: style,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 2),
                                  width: 178,
                                  height: 20,
                                  child: Text(
                                    "Morning 09:00AM to 12:00PM (IST)",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontFamily: 'Tw Cen MT',
                                        fontWeight: FontWeight.w400,
                                        decoration: TextDecoration.none,
                                        color: Color(0xFF000000),
                                        overflow: TextOverflow.ellipsis
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(width: width,height: 8,),
                            Row(
                              children: [
                                Container(
                                    width: 15,
                                    height:15 ,
                                    child:Image.asset("assets/icons/location.png")),
                                const Padding(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Text(
                                    "Location:",
                                    style: style,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 2),
                                  width: 178,
                                  height: 20,
                                  alignment: Alignment.center,
                                  child: Text(
                                    "826, Kishanpole Bazar, Jaipur",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontFamily: 'Tw Cen MT',
                                        fontWeight: FontWeight.w400,
                                        decoration: TextDecoration.none,
                                        overflow: TextOverflow.ellipsis
                                    ),

                                  ),
                                )
                              ],
                            ),
                          ],),)
                  ),),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: Text("Please enter the following details to confirm the booking",style: styleone,),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10,bottom: 10),
                  // width: width/2-150,
                  // height: 30,
                  child: Row(
                    children: [
                      Text("Stating Time",style: styletwo,),
                      SizedBox(width: 20,),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xFFF3F5FF),
                    ),
                    
                    alignment: Alignment.center,
                    child: Text("09:00AM (IST)",style: styleone,)),

                    ],
                  ),
                ),
                Row(
                  children: [
                    Text("Duration:",style: styletwo,),
                    SizedBox(width: 3,),
                    Text("3 Hours",style: styleone,),
                  ],
                ),
                Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("By accepting the service you agree to accept our terms and conditions",style: styleone,
                          textAlign: TextAlign.center,

                        ),
                        SizedBox(height: 10,),
                        Container(
                          padding: const EdgeInsets.only(top: 5),
                          width: width-65,
                          height: 55,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: (){
                                  showDialog(context: context, builder: (BuildContext context)=>
                                      Confirm_dialog()
                                  );},
                                child: Container(
                                  width: (width-65)/2-10,
                                  height: 40,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: Color(0xFF0B7D2B),
                                      borderRadius: BorderRadius.circular(20)
                                  ),
                                  child:  Text(
                                    "Accept",
                                    style: TextStyle(
                                        color: Color(0xFFFFFFFF),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 0.8
                                    ),),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              InkWell(
                                onTap: (){},
                                child: Container(
                                  width: (width-65)/2-10,
                                  height: 40,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: Color(0xFFD00009),
                                      borderRadius: BorderRadius.circular(20)
                                  ),
                                  child: Text(
                                    "Reject",
                                    style: TextStyle(
                                        color: Color(0xFFFFFFFF),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 0.8
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        )
                      ],
                    )
                ),
              ],
              ),

            ),
          ),
        ), );

  }
}
