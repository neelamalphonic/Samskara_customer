import 'package:flutter/material.dart';

import '../common/ButtonClass.dart';

class Booking_Card extends StatefulWidget {


  Function viewDetail;
  int is_select = 0;

  Booking_Card(this.is_select, this.viewDetail,);


  @override
  State<Booking_Card> createState() => _Booking_CardState();
}
class _Booking_CardState extends State<Booking_Card> {
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
     // height: 1.47
    );
    const styleOne= TextStyle(
        fontSize: 18,
        fontFamily: 'Tw Cen MT',
        fontWeight: FontWeight.w500,
        decoration: TextDecoration.none,
        color: Color(0xFF000000),
        letterSpacing: 0.5,
       // height: 1.6
    );
    return Stack(
      children: [
        Container(
              width: width,
              padding: const EdgeInsets.only(top: 10,bottom: 8),
              child:   Card(
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),),
                color: Color(0xFFF3F5FF),
                shadowColor: Color(0xFF000000),
                elevation:6,
                child:Padding(
                  padding: const EdgeInsets.all(10),
                  child:
              Column(
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
                        width: 17,
                        height:17 ,
                        child: Image.asset("assets/icons/pandit.png",),),
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
                    ],),
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
                          style: styleOne
                        ),
                      )
                    ],),
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
                         style: styleOne,
                        ),
                      )
                    ],),
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
                          style: styleOne
                        ),
                      )
                    ],),
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
                          style: styleOne
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
                          "Start Time:",
                          style: style,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 2),
                        child: Text(
                          "09:00AM (IST)",
                          style: styleOne
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
                    child:Image.asset("assets/icons/location.png",color: Color(0xFF000000),)),
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
                              fontWeight: FontWeight.w500,
                              decoration: TextDecoration.none,
                              color: Color(0xFF000000),
                              letterSpacing: 0.5,
                              overflow: TextOverflow.ellipsis,
                             // height: 1.32
                          )

                        ),
                      )
                    ],
                  ),
                  SizedBox(width: width,height: 8,),
                  SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                      widget.viewDetail();
                    },
                    child: ButtonClass("View Details",50,45),
                  )
                ],
              ),)
            ),
          ),


        widget.is_select== 0?
        Container(
          alignment: Alignment.bottomRight,
          padding: const EdgeInsets.only(right: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children:  [
            Container(
                width: 128,
                height: 40,
                margin: const EdgeInsets.only(bottom: 12),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color(0xFFFCC800),
                  borderRadius: BorderRadius.circular(5)
                ),
                child:  Text(
                   "Event Started",
                  style: const TextStyle(
                      fontSize: 17,
                      fontFamily: 'Tw Cen MT',
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.none,
                      color: Color(0xFF000000)
                  )
                ),
              ),
              Container(
                alignment: Alignment.center,
                child:
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                Container(
                width: 15,
                height:15 ,
                alignment: Alignment.topLeft,
                child: Image.asset("assets/icons/rupees.png")),
                  const SizedBox(width:2),
                  const  Text(
                    "1000.00",
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Tw Cen MT Bold',
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.none,
                        color: Color(0xFF000000)),
                  ),
                ],
              )

              )],
          ),
        ):
        (widget.is_select==1?
        Container(
          alignment: Alignment.bottomRight,
          padding: const EdgeInsets.only(right: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children:  [
              Container(
                width: 128,
                height: 40,
                margin: const EdgeInsets.only(bottom: 12),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Color(0xFF0B7D2B),
                    borderRadius: BorderRadius.circular(5)
                ),
                child:  Text(
                    "Event Completed",
                    style: const TextStyle(
                        fontSize: 17,
                        fontFamily: 'Tw Cen MT',
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.none,
                        color: Color(0xFFFFFFFF)
                    )
                ),
              ),
              Container(
                  alignment: Alignment.center,
                  child:
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                          width: 15,
                          height:15 ,
                          alignment: Alignment.topLeft,
                          child: Image.asset("assets/icons/rupees.png")),
                      const SizedBox(width:2),
                      const  Text(
                        "1000.00",
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Tw Cen MT Bold',
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none,
                            color: Color(0xFF000000)),
                      ),
                    ],
                  )

              )
            ],
          ),
        ):
        Container(
          alignment: Alignment.bottomRight,
          padding: const EdgeInsets.only(right: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children:  [
              Container(
                width: 128,
                height: 40,
                margin: const EdgeInsets.only(bottom: 12),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Color(0xFFD00009),
                    borderRadius: BorderRadius.circular(5)
                ),
                child:  Text(
                    "Event Cancelled",
                    style: const TextStyle(
                        fontSize: 17,
                        fontFamily: 'Tw Cen MT',
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.none,
                        color: Color(0xFFFFFFFF)
                    )
                ),
              ),
              Container(
                  alignment: Alignment.center,
                  child:
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                          width: 15,
                          height:15 ,
                          alignment: Alignment.topLeft,
                          child: Image.asset("assets/icons/rupees.png")),
                      const SizedBox(width:2),
                      const  Text(
                        "1000.00",
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Tw Cen MT Bold',
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none,
                            color: Color(0xFF000000)),
                      ),
                    ],
                  )

              )
            ],
          ),
        )
        )

      ],
    );
  }
}

  