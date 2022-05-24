import 'package:flutter/material.dart';
import 'package:samskara_customer/common/ButtonClass.dart';
import 'package:samskara_customer/screens/View_Booking.dart';

import '../dashboard/DashboardScreentab.dart';

class Request_Booking extends StatefulWidget {
  Request_Booking(String s);



  // Request_Booking(String title);




  @override
  State<Request_Booking> createState() => _Request_BookingState();

}

class _Request_BookingState extends State<Request_Booking> {
  static var title ="View Booking";
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
        letterSpacing: 0.5,);
    const styleOne= TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w400,
        fontFamily: 'Tw Cen MT',
        decoration: TextDecoration.none,
        color: Color(0xFF000000),
        letterSpacing: 0.5,

    );
    return
     Container(
        padding: const EdgeInsets.fromLTRB(20, 0, 20,0),
        width: width,
        height: height,
        child:
        ListView.builder(
            itemCount: 5,
            shrinkWrap: true,
            itemBuilder: (context ,index){
              return
                Stack(
                  children: [
                    Container(
                      width: width,
                      child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          shadowColor: Color(0xFF000000),
                          elevation:6,
                          color: Color(0xFFF3F5FF),
                          child:Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                                  children: [
                                    Container(
                                      width: 15,
                                      height:15 ,
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
                                        style: styleOne
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
                                        style: styleOne
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
                                        style: styleOne
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
                                        style: styleOne
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
                                        style: styleOne
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
                                      alignment: Alignment.center,
                                      child: const Text(
                                        "Morning 09:00AM to 12:00PM (IST)",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: 'Tw Cen MT',
                                            decoration: TextDecoration.none,
                                            color: Color(0xFF000000),
                                            letterSpacing: 0.5,
                                            overflow: TextOverflow.ellipsis
                                        )
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
                                        child:const  Expanded(
                                          // flex: 5,
                                          // fit: FlexFit.tight,
                                          child:
                                          Text(
                                            "826, Kishanpole Bazar, Jaipur",
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: 'Tw Cen MT',
                                              decoration: TextDecoration.none,
                                              color: Color(0xFF000000),
                                              letterSpacing: 0.5,
                                               overflow: TextOverflow.ellipsis
                                            )

                                          ),
                                        ))
                                  ],
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (BuildContext context) => View_Booking("View Booking")),
                                            (route) => false);},
                                  child: ButtonClass("View Details",50,45),
                                )
                                // Container(
                                //
                                //   width: width-50,
                                //   height: 45,
                                //   alignment: Alignment.center,
                                //   decoration: BoxDecoration(
                                //       borderRadius: BorderRadius.circular(25),
                                //       color: Color(0xFF1E2F59)),
                                //   child: TextButton(
                                //       onPressed: () {
                                //         Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (BuildContext context) => DashboardScreentab(4),),
                                //                 (route) => false);},
                                //       child: const Text(
                                //         "View Details",
                                //         style: TextStyle(
                                //             fontSize: 18,
                                //             fontFamily: 'Tw Cen MT',
                                //             fontWeight: FontWeight.w400,
                                //             decoration: TextDecoration.none,
                                //             color: Color(0xFFFFFFFF)),
                                //       )
                                //   ),
                                // ),

                              ],
                            ),)
                      ),
                    ),
                    Container(
                        padding: const EdgeInsets.fromLTRB(0,40,18,0),
                        child: Row(
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



                    )

                  ],
                );
            }),
      );
  }
}
