import 'package:flutter/material.dart';

import 'HelpDesk.dart';

class ReferralEarnings extends StatefulWidget {
  const ReferralEarnings({Key? key}) : super(key: key);

  @override
  State<ReferralEarnings> createState() => _ReferralEarningsState();
}

class _ReferralEarningsState extends State<ReferralEarnings> {
  var deviceSize;
  @override
  Widget build(BuildContext context) {
    deviceSize = MediaQuery.of(context).size;
    var height = deviceSize.height;
    var width = deviceSize.width;
    const style = TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.w500,
        fontFamily: 'Tw Cen MT',
        decoration: TextDecoration.none,
        color: Color(0xFF000000),
        letterSpacing: 0.5,
        height: 1.5);
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
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (BuildContext context)=>HelpDesk()), (route) => false);
              },
              iconSize: 32),
        ),
        title: Text("Referral Earnings",style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18,
            color: Color(0xFF131A22),
            height: 1.08,
            letterSpacing: 0.50),) ,
      ),
      body: Container(
        width: width,
        height: height,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  width: width,height: 300,
                  decoration: BoxDecoration(
                    color: Color(0xFFF3F5FF),

                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(30,19,17,18),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Total Referrals Earned SO Far".toUpperCase(),
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Tw Cen MT',
                              decoration: TextDecoration.none,
                              color: Color(0xFF000000),
                              letterSpacing: 0.5,
                              height: 1.7),
                        ),
                        Text(
                          "₹5000.00",
                          style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Tw Cen MT',
                              decoration: TextDecoration.none,
                              color: Color(0xFF000000),
                              letterSpacing: 0.5,
                              height: 1.3),
                          textAlign: TextAlign.center,
                        ),
                        Container(
                          child:const  Text(
                            "Earn 5% on every pooja your friends perform successfully",
                            style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Tw Cen MT',
                                fontWeight: FontWeight.w400,
                                decoration: TextDecoration.none,
                                color: Color(0xFF000000),
                                letterSpacing: 0.5,
                                height: 1.7,
                                overflow: TextOverflow.ellipsis
                            ),
                            maxLines: 2,
                          ),
                        ),
                        Container(
                          child:const  Text(
                            "Refer your friends & earn credits",
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Tw Cen MT',
                                fontWeight: FontWeight.w500,
                                decoration: TextDecoration.none,
                                color: Color(0xFF000000),
                                letterSpacing: 0.5,
                                height: 1.7,
                                overflow: TextOverflow.ellipsis
                            ),
                          ),
                        ),
                        Container(
                            width: 217,
                            height: 50,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                border: Border.all(color: Color(0xffC4C4C4),width: 1)
                            ),
                            child:Row(
                              children: [
                                Padding(
                                  padding:const EdgeInsets.fromLTRB(10,3,3,7),
                                  child:const  Text(
                                    "ASDAD",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontFamily: 'Tw Cen MT',
                                        fontWeight: FontWeight.w600,
                                        decoration: TextDecoration.none,
                                        color: Color(0xFF1E2F59),
                                        letterSpacing: 0.5,
                                        height: 1.7,
                                        overflow: TextOverflow.ellipsis
                                    ),
                                  ),
                                ),
                                TextButton(
                                  onPressed: null,
                                  child: Icon(Icons.copy,color: Color(0xff1E2F59),),
                                ),
                                VerticalDivider(
                                  thickness: 1,
                                  color: Color(0xffC4C4C4),
                                ),
                                TextButton(
                                  onPressed: null,
                                  child: Image.asset("assets/icons/share.png"),
                                ),

                              ],
                            )

                        ),
                        Container(
                          child:const  Text(
                            "View Accounts to Check Referral Earnings",
                            style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Tw Cen MT',
                                fontWeight: FontWeight.w400,
                                decoration: TextDecoration.underline,
                                color: Color(0xFF000000),
                                letterSpacing: 0.5,
                                height: 1.7,
                                overflow: TextOverflow.ellipsis
                            ),
                            maxLines: 2,
                          ),
                        ),
                      ],),

                  )),
              SizedBox(height: 10,),
              Container(
                padding: const EdgeInsets.only(left: 23),
                child:const  Text(
                  "History",
                  style: TextStyle(
                      fontSize: 17,
                      fontFamily: 'Tw Cen MT',
                      fontWeight: FontWeight.w700,
                      decoration: TextDecoration.none,
                      color: Color(0xFF000000),
                      letterSpacing: 0.5,
                      height: 1.3,
                      overflow: TextOverflow.ellipsis
                  ),
                  maxLines: 2,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20,10,20,10),
                child: Container(
                  width: width,
                  child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      color: Color(0xFFF3F5FF),
                      shadowColor: Color(0xFF000000),
                      elevation: 6,
                      child: Padding(
                          padding: const EdgeInsets.all(10),
                          child:Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                  width: width,
                                  height: 25,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                          alignment: Alignment.centerLeft,
                                          padding: const EdgeInsets.only(left: 0),
                                          child: const Text(
                                            "You have invited",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontFamily: 'Tw Cen MT',
                                                fontWeight: FontWeight.w400,
                                                decoration: TextDecoration.none,
                                                color: Color(0xFFABABAB),
                                                letterSpacing: 0.5,
                                                height: 1.3
                                            ),
                                          )
                                      ),
                                      Container(
                                          alignment: Alignment.bottomRight,
                                          child: Row(
                                              children: [
                                                const Text(
                                                    "Status:",
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      fontFamily: 'Tw Cen MT',
                                                      fontWeight: FontWeight.w400,
                                                      decoration: TextDecoration.none,
                                                      color: Color(0xFF333333),
                                                      letterSpacing: 0.5,
                                                    )),
                                                Padding(
                                                    padding: const EdgeInsets.only(left: 2),
                                                    child:  Text(
                                                      "Approval Pending",
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        fontFamily: 'Tw Cen MT',
                                                        fontWeight: FontWeight.w400,
                                                        decoration: TextDecoration.none,
                                                        color: Color(0xFF333333),
                                                        letterSpacing: 0.5,
                                                      ),
                                                    )
                                                )

                                              ]
                                          )

                                      ),
                                    ],
                                  )
                              ),
                              Container(
                                  padding: const EdgeInsets.only(left: 0),
                                  child: const Text(
                                    "Ramesh",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: 'Tw Cen MT',
                                        fontWeight: FontWeight.w400,
                                        decoration: TextDecoration.none,
                                        color: Color(0xFF333333),
                                        letterSpacing: 0.5,
                                        height: 1.3
                                    ),
                                  )
                              ),
                              Container(
                                  padding: const EdgeInsets.only(left: 0),
                                  child: const Text(
                                    "10-May-2022",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: 'Tw Cen MT',
                                        fontWeight: FontWeight.w400,
                                        decoration: TextDecoration.none,
                                        color: Color(0xFF333333),
                                        letterSpacing: 0.5,
                                        height: 1.3
                                    ),
                                  )
                              ),







                            ],
                          )
                      )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20,0,20,10),
                child: Container(
                  width: width,
                  child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      color: Color(0xFFF3F5FF),
                      shadowColor: Color(0xFF000000),
                      elevation: 6,
                      child: Padding(
                          padding: const EdgeInsets.all(10),
                          child:Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                  width: width,
                                  height: 25,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                          alignment: Alignment.centerLeft,
                                          padding: const EdgeInsets.only(left: 0),
                                          child: const Text(
                                            "You have invited",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontFamily: 'Tw Cen MT',
                                                fontWeight: FontWeight.w400,
                                                decoration: TextDecoration.none,
                                                color: Color(0xFFABABAB),
                                                letterSpacing: 0.5,
                                                height: 1.3
                                            ),
                                          )
                                      ),
                                      Container(
                                          alignment: Alignment.bottomRight,
                                          child: Row(
                                              children: [
                                                const Text(
                                                    "Status:",
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      fontFamily: 'Tw Cen MT',
                                                      fontWeight: FontWeight.w400,
                                                      decoration: TextDecoration.none,
                                                      color: Color(0xFF333333),
                                                      letterSpacing: 0.5,
                                                    )),
                                                Padding(
                                                    padding: const EdgeInsets.only(left: 2),
                                                    child:  Text(
                                                      "Registered & Approved",
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        fontFamily: 'Tw Cen MT',
                                                        fontWeight: FontWeight.w400,
                                                        decoration: TextDecoration.none,
                                                        color: Color(0xFF333333),
                                                        letterSpacing: 0.5,
                                                      ),
                                                    )
                                                )

                                              ]
                                          )

                                      ),
                                    ],
                                  )
                              ),
                              Container(
                                  padding: const EdgeInsets.only(left: 0),
                                  child: const Text(
                                    "Suresh",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: 'Tw Cen MT',
                                        fontWeight: FontWeight.w400,
                                        decoration: TextDecoration.none,
                                        color: Color(0xFF333333),
                                        letterSpacing: 0.5,
                                        height: 1.3
                                    ),
                                  )
                              ),
                              Container(
                                  padding: const EdgeInsets.only(left: 0),
                                  child: const Text(
                                    "9-May-2022",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: 'Tw Cen MT',
                                        fontWeight: FontWeight.w400,
                                        decoration: TextDecoration.none,
                                        color: Color(0xFF333333),
                                        letterSpacing: 0.5,
                                        height: 1.3
                                    ),
                                  )
                              ),







                            ],
                          )
                      )
                  ),
                ),
              )


            ],
          ),
        ),
      ),
    )
    ))
      ;
  }
}
