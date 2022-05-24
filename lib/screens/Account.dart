// import 'package:cetrometrics/Api_Module/api_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:http/http.dart' as http;
import 'package:samskara_customer/screens/BankDetails.dart';
import 'package:samskara_customer/screens/EventSelect.dart';
import 'package:samskara_customer/screens/HelpDesk.dart';
import 'package:samskara_customer/screens/PrivacyPolicy.dart';
import 'package:samskara_customer/screens/Profile.dart';
import 'package:samskara_customer/screens/TermsConditions.dart';
import 'package:samskara_customer/screens/TimeAvail.dart';
import 'dart:convert';

import '../dashboard/DashboardScreentab.dart';

class Account extends StatefulWidget {

  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {

  @override
  Widget build(BuildContext context) {
    var packsize, height, width;
    packsize = MediaQuery.of(context).size;
    height = packsize.height;
    width = packsize.width;
    return Scaffold(
        body: Container(
            padding: const EdgeInsets.fromLTRB(27,0,27,15),
            width: width,
            height: height,
            child: SingleChildScrollView(child:
            Column(
             crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 5),
                  child:  Center(
                    child: Container(
                      // color:  Colors.blue,
                        padding: const EdgeInsets.all(4),
                        width:width/3-20,
                        height:width/3-20,
                        child:
                        Image.asset("assets/images/profile.png")
                    ),

                  ),),

                Text("Rakesh Sharma",
                  style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Hind',
                      fontWeight:  FontWeight.w600,
                      color: Color(0xFF0E1133)

                  ),
                ),
                InkWell(
                    onTap: (){
                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (BuildContext context) => Profile(),),
                              (route) => false);
                    },
                    child: Container(
                      padding: const EdgeInsets.only(left: 10),
                        width: width,
                        height: 55,
                        alignment: Alignment.centerLeft,
                        decoration: const BoxDecoration(
                          border: Border(bottom: BorderSide(width: 1.0, color: Colors.grey)),
                        ),
                        child: const Text(
                            "Profile",
                            style:  TextStyle(
                                fontSize: 16,
                                fontWeight:  FontWeight.w400,
                                color: Color(0xFF000000),
                                letterSpacing: 1,
                                height: 1.08
                            )
                        )
                    ),
                  ),
                 InkWell(
                    onTap: (){
                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (BuildContext context) => BankDetails(),),
                              (route) => false);
                    },
                    child: Container(
                        padding: const EdgeInsets.only(left: 10),
                        width: width,
                        height: 55,
                        alignment: Alignment.centerLeft,
                        decoration: const BoxDecoration(
                          border: Border(bottom: BorderSide(width: 1.0, color: Colors.grey)),
                        ),
                        child: const Text(
                            "Bank Details",
                            style:  TextStyle(
                                fontSize: 16,
                                fontWeight:  FontWeight.w400,
                                color: Color(0xFF000000),
                                letterSpacing: 1,
                                height: 1.08
                            )
                        )
                    ),
                  ),
                InkWell(
                    onTap: (){
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (BuildContext context) => TimeAvail(),),
                (route) => false);
                },
                    child: Container(
                        padding: const EdgeInsets.only(left: 10),
                        width: width,
                        height: 55,
                        alignment: Alignment.centerLeft,
                        decoration: const BoxDecoration(
                          border: Border(bottom: BorderSide(width: 1.0, color: Colors.grey)),
                        ),
                        child: const Text(
                            "Time Management",
                            style:  TextStyle(
                                fontSize: 16,
                                fontWeight:  FontWeight.w400,
                                color: Color(0xFF000000),
                                letterSpacing: 1,
                                height: 1.08
                            )
                        )
                    ),
                    ),
                 InkWell(
                    onTap: (){
                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (BuildContext context) => EventSelect(),),
                              (route) => false);
                    },
                    child: Container(
                        padding: const EdgeInsets.only(left: 10),
                        width: width,
                        height: 55,
                        alignment: Alignment.centerLeft,
                        decoration: const BoxDecoration(
                          border: Border(bottom: BorderSide(width: 1.0, color: Colors.grey)),
                        ),
                        child: const Text(
                            "Events Select",
                            style:  TextStyle(
                                fontSize: 16,
                                fontWeight:  FontWeight.w400,
                                color: Color(0xFF000000),
                                letterSpacing: 1,
                                height: 1.08
                            )
                        )
                    ),
                  ),
                InkWell(
                    onTap: (){
                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (BuildContext context) => HelpDesk(),),
                              (route) => false);
                    },
                    child: Container(
                        padding: const EdgeInsets.only(left: 10),
                        width: width,
                        height:55,
                        alignment: Alignment.centerLeft,
                        decoration: const BoxDecoration(
                          border: Border(bottom: BorderSide(width: 1.0, color: Colors.grey)),
                        ),
                        child: const Text(
                            "Help Desk",
                            style:  TextStyle(
                                fontSize: 16,
                                fontWeight:  FontWeight.w400,
                                color: Color(0xFF000000),
                                letterSpacing: 1,
                                height: 1.08
                            )
                        )
                    ),
                  ),
                 InkWell(
                   onTap: (){
                     Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (BuildContext context) => PrivacyPolicy(),),
                             (route) => false);
                   },
                    child: Container(
                        padding: const EdgeInsets.only(left: 10),
                        width: width,
                        height: 55,
                        alignment: Alignment.centerLeft,
                        decoration: const BoxDecoration(
                          border: Border(bottom: BorderSide(width: 1.0, color: Colors.grey)),
                        ),
                        child: const Text(
                            "Privacy Policy",
                            style:  TextStyle(
                                fontSize: 16,
                                fontWeight:  FontWeight.w400,
                                color: Color(0xFF000000),
                                letterSpacing: 1,
                                height: 1.08
                            )
                        )
                    ),
                  ),
                InkWell(
                    onTap: (){
                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (BuildContext context) => TermsConditions(),),
                              (route) => false);
                    },
                    child: Container(
                        padding: const EdgeInsets.only(left: 10),
                        width: width,
                        height: 55,
                        alignment: Alignment.centerLeft,
                        decoration: const BoxDecoration(
                          border: Border(bottom: BorderSide(width: 1.0, color: Colors.grey)),
                        ),
                        child: const Text(
                            "Terms and Conditions",
                            style:  TextStyle(
                                fontSize: 16,
                                fontWeight:  FontWeight.w400,
                                color: Color(0xFF000000),
                                letterSpacing: 1,
                                height: 1.08
                            )
                        )
                    ),
                  ),
                // Padding(padding: const EdgeInsets.only(top: 5),
                   InkWell(
                    onTap: null,
                    child: Container(
                        padding: const EdgeInsets.only(left: 10),
                        width: width,
                        height: 34,
                        alignment: Alignment.centerLeft,
                        child: const Text(
                            "Sign Out",
                            style:  TextStyle(
                                fontSize: 16,
                                fontFamily: "Tw Cen MT",
                                fontWeight:  FontWeight.w400,
                                color: Color(0xFF000000),
                                letterSpacing: 1,
                                height: 1.08
                            )
                        )
                    ),
                  ),
                SizedBox(height: 10,),

              ],
            )
            )
        ),



    );

  }

}

