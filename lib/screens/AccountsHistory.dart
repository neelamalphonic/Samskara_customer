import 'package:flutter/material.dart';

class AccountsHistory extends StatefulWidget {
  const AccountsHistory({Key? key}) : super(key: key);

  @override
  State<AccountsHistory> createState() => _AccountsHistoryState();
}

class _AccountsHistoryState extends State<AccountsHistory> {
  var deviceSize;
  @override
  Widget build(BuildContext context) {
    deviceSize = MediaQuery.of(context).size;
    var height = deviceSize.height;
    var width = deviceSize.width;
    const style = TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.w600,
        fontFamily: 'Tw Cen MT',
        decoration: TextDecoration.none,
        color: Color(0xFF000000),
        letterSpacing: 0.5,
        height: 1.5);
    return  Container(
          width: width,
          height: height,
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child:SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: width,
                  child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      color: Color(0xFF1E2F59),
                      shadowColor: Color(0xFF000000),
                      elevation: 6,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(15,10,15,10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              width:width,
                              alignment: Alignment.center,
                              padding: const EdgeInsets.only(left:0),
                              child:const  Text(
                                "Total Earning",
                                style: TextStyle(
                                    fontSize: 17,
                                    fontFamily: 'Tw Cen MT',
                                    fontWeight: FontWeight.w400,
                                    decoration: TextDecoration.none,
                                    color: Color(0xFFFFFFFF),
                                    letterSpacing: 0.5,
                                    height: 1.7,
                                    overflow: TextOverflow.ellipsis
                                ),
                                maxLines: 3,
                              ),
                            ),
                            Container(
                              width:width,
                              alignment: Alignment.center,
                              padding: const EdgeInsets.only(left:0),
                              child:const  Text(
                                "₹5000.00",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'Tw Cen MT',
                                    fontWeight: FontWeight.w600,
                                    decoration: TextDecoration.none,
                                    color: Color(0xFFFFFFFF),
                                    letterSpacing: 0.5,
                                    height: 1.7,
                                    overflow: TextOverflow.ellipsis
                                ),
                                maxLines: 3,
                              ),
                            ),
                            Divider(thickness: 1,color: Color(0xFFFFFFFF),),
                            Container(
                                width: width-40,
                                height: 50,
                                child: Row(
                                  children: [
                                    Container(
                                      width: ( width-40)/3-15,
                                      decoration: BoxDecoration(
                                          border: Border(
                                              right: BorderSide(color: Color(0xffFFFFFF),width: 1)
                                          )
                                      ),
                                      child: Column(
                                        children: [
                                          Text(
                                            "From Events",
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontFamily: 'Tw Cen MT',
                                                fontWeight: FontWeight.w600,
                                                decoration: TextDecoration.none,
                                                color: Color(0xFFFFFFFF),
                                                letterSpacing: 0.5,
                                                height: 1.7,
                                                overflow: TextOverflow.ellipsis
                                            ),
                                            maxLines: 3,
                                          ),
                                          Text(
                                            "₹3000.00",
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontFamily: 'Tw Cen MT',
                                                fontWeight: FontWeight.w600,
                                                decoration: TextDecoration.none,
                                                color: Color(0xFFFFFFFF),
                                                letterSpacing: 0.5,
                                                height: 1.7,
                                                overflow: TextOverflow.ellipsis
                                            ),
                                            maxLines: 3,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: ( width-40)/3-15,
                                      decoration: BoxDecoration(
                                          border: Border(
                                              right: BorderSide(color: Color(0xffFFFFFF),width: 1)
                                          )
                                      ),
                                      child: Column(
                                        children: [
                                          Text(
                                            "From Referrals",
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontFamily: 'Tw Cen MT',
                                                fontWeight: FontWeight.w600,
                                                decoration: TextDecoration.none,
                                                color: Color(0xFFFFFFFF),
                                                letterSpacing: 0.5,
                                                height: 1.7,
                                                overflow: TextOverflow.ellipsis
                                            ),
                                            maxLines: 3,
                                          ),
                                          Text(
                                            "₹1000.00",
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontFamily: 'Tw Cen MT',
                                                fontWeight: FontWeight.w600,
                                                decoration: TextDecoration.none,
                                                color: Color(0xFFFFFFFF),
                                                letterSpacing: 0.5,
                                                height: 1.7,
                                                overflow: TextOverflow.ellipsis
                                            ),
                                            maxLines: 3,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: ( width-40)/3-15,
                                      child: Column(
                                        children: [
                                          Text(
                                            "From Incentives",
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontFamily: 'Tw Cen MT',
                                                fontWeight: FontWeight.w600,
                                                decoration: TextDecoration.none,
                                                color: Color(0xFFFFFFFF),
                                                letterSpacing: 0.5,
                                                height: 1.7,
                                                overflow: TextOverflow.ellipsis
                                            ),
                                            maxLines: 3,
                                          ),
                                          Text(
                                            "₹1000.00",
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontFamily: 'Tw Cen MT',
                                                fontWeight: FontWeight.w600,
                                                decoration: TextDecoration.none,
                                                color: Color(0xFFFFFFFF),
                                                letterSpacing: 0.5,
                                                height: 1.7,
                                                overflow: TextOverflow.ellipsis
                                            ),
                                            maxLines: 3,
                                          ),
                                        ],
                                      ),
                                    )

                                  ],
                                )
                            )
                          ],
                        ),
                      )
                  ),
                ),
                Container(
                  width: width,
                  child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      color: Color(0xFF1E2F59),
                      shadowColor: Color(0xFF000000),
                      elevation: 6,
                      child: Container(
                          width: width-40,
                          height: 62,
                          padding: const EdgeInsets.fromLTRB(15,10,15,10),
                          child: Row(
                            children: [
                              Container(
                                width: ( width-40)/2-26,
                                decoration: BoxDecoration(
                                    border: Border(
                                        right: BorderSide(color: Color(0xffFFFFFF),width: 1)
                                    )
                                ),
                                child: Column(
                                  children: [
                                    Text(
                                      "Settlement Pending",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontFamily: 'Tw Cen MT',
                                          fontWeight: FontWeight.w600,
                                          decoration: TextDecoration.none,
                                          color: Color(0xFFFFFFFF),
                                          letterSpacing: 0.5,
                                          height: 1.7,
                                          overflow: TextOverflow.ellipsis
                                      ),
                                      maxLines: 3,
                                    ),
                                    Text(
                                      "₹3000.00",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontFamily: 'Tw Cen MT',
                                          fontWeight: FontWeight.w600,
                                          decoration: TextDecoration.none,
                                          color: Color(0xFFFFFFFF),
                                          letterSpacing: 0.5,
                                          height: 1.7,
                                          overflow: TextOverflow.ellipsis
                                      ),
                                      maxLines: 3,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: ( width-40)/2-26,
                                child: Column(
                                  children: [
                                    Text(
                                      "Deposit Pending",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontFamily: 'Tw Cen MT',
                                          fontWeight: FontWeight.w600,
                                          decoration: TextDecoration.none,
                                          color: Color(0xFFFFFFFF),
                                          letterSpacing: 0.5,
                                          height: 1.7,
                                          overflow: TextOverflow.ellipsis
                                      ),
                                      maxLines: 3,
                                    ),
                                    Text(
                                      "₹1000.00",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontFamily: 'Tw Cen MT',
                                          fontWeight: FontWeight.w600,
                                          decoration: TextDecoration.none,
                                          color: Color(0xFFFFFFFF),
                                          letterSpacing: 0.5,
                                          height: 1.7,
                                          overflow: TextOverflow.ellipsis
                                      ),
                                      maxLines: 3,
                                    ),
                                  ],
                                ),
                              ),


                            ],
                          )


                      )
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.only(left: 23),
                  child:const  Text(
                    "Transactions",
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Tw Cen MT',
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.none,
                        color: Color(0xFF000000),
                        letterSpacing: 1,
                        height: 1.3,
                        overflow: TextOverflow.ellipsis
                    ),
                    maxLines: 2,
                  ),
                ),
                SizedBox(height: 10,),
                ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 20,
                    itemBuilder: (context, index) {
                      return Container(
                        width: width,
                        child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            color: Color(0xFFF3F5FF),
                            shadowColor: Color(0xFF000000),
                            elevation: 6,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Row(
                                        children:const [
                                          Text(
                                            "Date :",
                                            style: style,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 2),
                                            child: Text(
                                              "12-May-2022",
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w400,
                                                  fontFamily: 'Tw Cen MT',
                                                  decoration: TextDecoration.none,
                                                  color: Color(0xFF000000),
                                                  letterSpacing: 0.5,
                                                  height: 1.7),
                                            ),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: const[
                                          Text(
                                            "Booking ID -",
                                            style: style,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 2),
                                            child: Text(
                                              "34346",
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontFamily: 'Tw Cen MT',
                                                  fontWeight: FontWeight.w500,
                                                  decoration: TextDecoration.none,
                                                  color: Color(0xFF000000),
                                                  letterSpacing: 0.5,
                                                  height: 1.7),
                                            ),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: const[
                                          Text(
                                            "Type :",
                                            style: style,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 2),
                                            child: Text(
                                              "Event Booking",
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontFamily: 'Tw Cen MT',
                                                  fontWeight: FontWeight.w400,
                                                  decoration: TextDecoration.none,
                                                  color: Color(0xFF000000),
                                                  letterSpacing: 0.5,
                                                  height: 1.7),
                                            ),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: const[
                                          Text(
                                            "Mode :",
                                            style: style,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 2),
                                            child: Text(
                                              "COD",
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontFamily: 'Tw Cen MT',
                                                  fontWeight: FontWeight.w400,
                                                  decoration: TextDecoration.none,
                                                  color: Color(0xFF000000),
                                                  letterSpacing: 0.5,
                                                  height: 1.7),
                                            ),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: const[
                                          Text(
                                            "Amount Collected :",
                                            style: style,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 2),
                                            child: Text(
                                              "₹2000.00",
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontFamily: 'Tw Cen MT',
                                                  fontWeight: FontWeight.w400,
                                                  decoration: TextDecoration.none,
                                                  color: Color(0xFF000000),
                                                  letterSpacing: 0.5,
                                                  height: 1.7),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Divider(thickness: 1, color: Color(0xffC4C4C4),),
                                Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Column(
                                    children: [
                                      Container(
                                          width: width,
                                          height: 60,
                                          alignment: Alignment.topLeft,
                                          child:
                                          Row(
                                            children: [
                                              Container(
                                                  alignment: Alignment.topLeft,
                                                  padding: EdgeInsets.only(top: 2),
                                                  child:
                                                  Text(
                                                    "Status:",
                                                    style: style,
                                                  )),
                                              Expanded(child:
                                              Container(
                                                alignment: Alignment.topLeft,
                                                padding: EdgeInsets.only(left: 2),
                                                child: Text(
                                                  "Settlement Pending, DEPOSIT CASH IN ADMIN’S ACCOUNT",
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      fontWeight: FontWeight.w400,
                                                      fontFamily: 'Tw Cen MT',
                                                      decoration: TextDecoration.none,
                                                      color: Color(0xFF000000),
                                                      letterSpacing: 0.5,
                                                      height: 1.7),
                                                ),
                                              ))
                                            ],
                                          ))
                                      ,
                                      Container(
                                        width: width,
                                        height: 60,
                                        alignment: Alignment.topLeft,
                                        child:   Row(
                                          children: [
                                            Container(
                                              alignment: Alignment.topLeft,
                                              child: Text(
                                                "Note:",
                                                style: style,
                                              ),
                                            ),

                                            Expanded(
                                              child:  Container(
                                                  alignment: Alignment.topLeft,
                                                  padding: EdgeInsets.only(left: 2,top:3),
                                                  child: Text(
                                                    "Please deposit the amount collected within 24 hours.",
                                                    style: TextStyle(
                                                        fontSize: 17,
                                                        fontWeight: FontWeight.w400,
                                                        fontFamily: 'Tw Cen MT',
                                                        decoration: TextDecoration.none,
                                                        color: Color(0xFF000000),
                                                        letterSpacing: 0.5,
                                                        height: 1.3,
                                                        overflow: TextOverflow.ellipsis
                                                    ),
                                                    maxLines: 2,
                                                  )),
                                            )
                                          ],
                                        ),
                                      )

                                    ],
                                  ),
                                )
                              ],
                            )
                        ),
                      );
                    })
              ],
            ),
          ));

  }
}
