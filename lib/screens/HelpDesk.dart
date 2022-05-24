import 'package:flutter/material.dart';
import 'package:samskara_customer/screens/HowCanWeHelp.dart';
import 'package:samskara_customer/screens/RaiseTicket.dart';
import 'package:samskara_customer/screens/ReferralEarnings.dart';

import '../dashboard/DashboardScreentab.dart';

class HelpDesk extends StatefulWidget {
  const HelpDesk({Key? key}) : super(key: key);

  @override
  State<HelpDesk> createState() => _HelpDeskState();
}

class _HelpDeskState extends State<HelpDesk> {
  static var title_one="Referral Earnings";
  static var title_two="Raise Ticket";
  var deviceSize;
  static bool isSelected = false;
  String selectedValue = "Open TIckets";
  List<DropdownMenuItem<String>> menuItems = [
    DropdownMenuItem(
        child: Text(
          "Open TIckets",
          style: TextStyle(color: Color(0xFFF2F4F5)),
        ),
        value: "Open TIckets"),
  ];
  @override
  Widget build(BuildContext context) {
    deviceSize = MediaQuery.of(context).size;
    var height = deviceSize.height;
    var width = deviceSize.width;
    const style = TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.w400,
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
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (BuildContext context)=>DashboardScreentab(3,"Account")), (route) => false);
                },
                iconSize: 32),
          ),
          title: Text("Help Desk",style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 18,
              color: Color(0xFF131A22),
              height: 1.08,
              letterSpacing: 0.50),) ,
        ),
      body: Container(
          width: width,
          height: height,
          padding: const EdgeInsets.fromLTRB(20,0,20,0),
          child: SingleChildScrollView(
              child: Column(children: [
                Container(
                  width: width,
                  height: 126,
                  child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      color: Color(0xFFF3F5FF),
                      shadowColor: Color(0xFF000000),
                      elevation: 6,
                      child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "How Can We Help",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 17,
                                    color: Color(0xFF333333),
                                    letterSpacing: 0.5,
                                    height: 0.5),
                              ),
                              Text(
                                "We are always here to assist you with anything you need.",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 17,
                                    color: Color(0xFF333333),
                                    letterSpacing: 0.5,
                                    height: 0.7),
                                textAlign: TextAlign.start,
                                maxLines: 2,
                              ),
                              Row(
                                children: [
                                  InkWell(
                                    onTap: null,
                                    child: Container(
                                        width: 36,
                                        height: 36,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF1E2F59),
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child:
                                        Image.asset("assets/icons/callone.png")),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  InkWell(
                                    onTap: (){
                                      Navigator.pushAndRemoveUntil(
                                          context,
                                          MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                ReferralEarnings()
                                          ),
                                              (route) => false);
                                    },
                                    child: Container(
                                        width: 36,
                                        height: 36,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF1E2F59),
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: Image.asset("assets/icons/msg.png")),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.pushAndRemoveUntil(
                                          context,
                                          MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                RaiseTicket(),
                                          ),
                                              (route) => false);
                                    },
                                    child: Container(
                                        width: 36,
                                        height: 36,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF1E2F59),
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: Text(
                                          "+",
                                          style: TextStyle(color: Color(0xFFFFFFFF)),
                                        )),
                                  ),
                                ],
                              )
                            ],
                          ))),
                ),
                SizedBox(height: 10),
                Container(
                    width: width,
                    height: 60,
                    child: DropdownButtonFormField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                          const BorderSide(color: Color(0xFFF3F5FF), width: 0),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        fillColor: const Color(0xFF1E2F59),
                        filled: true,
                      ),
                      icon: const Icon(
                        Icons.keyboard_arrow_down_outlined,
                        color: Color(0xFFF2F4F5),
                      ),
                      items: menuItems,
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedValue = newValue!;
                          isSelected = true;
                        });
                      },
                      value: selectedValue,
                    )),
                SizedBox(
                  height: 10,
                ),
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
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Row(
                                    children:const [
                                      Text(
                                        "Ticket ID -",
                                        style: style,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 2),
                                        child: Text(
                                          "#246327364",
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
                                          "1",
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
                                        "Raised on",
                                        style: style,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 2),
                                        child: Text(
                                          "7 Nov, 2020 at 5:00PM",
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
                                        "Last Update on",
                                        style: style,
                                      ),
                                      Expanded(
                                          child:
                                          Padding(
                                            padding: EdgeInsets.only(left: 2),
                                            child: Text(
                                              "10 Nov, 2020 at 5:00PM",
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontFamily: 'Tw Cen MT',
                                                  fontWeight: FontWeight.w400,
                                                  decoration: TextDecoration.none,
                                                  color: Color(0xFF000000),
                                                  letterSpacing: 0.5,
                                                  height: 1.7,
                                                  overflow: TextOverflow.ellipsis
                                              ),
                                            ),
                                          ))
                                    ],
                                  ),
                                  Row(
                                    children: const[
                                      Text(
                                        "Title - ",
                                        style: style,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 2),
                                        child: Text(
                                          "Ganesh Puja",
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
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: const[
                                          Text(
                                            "Subject -",
                                            style: style,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 2),
                                            child: Text(
                                              "Wrong Bookin",
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontFamily: 'Tw Cen MT',
                                                  fontWeight: FontWeight.w400,
                                                  decoration: TextDecoration.none,
                                                  color: Color(0xFF000000),
                                                  letterSpacing: 0.5,
                                                  height: 1.7),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                          width: 15,
                                          height: 15,
                                          alignment: Alignment.bottomRight,
                                          child: GestureDetector(
                                            onTap: () {
                                              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (BuildContext context) => HowCanWeHelp(),),
                                                      (route) => false);
                                            },
                                            child:
                                            Image.asset("assets/icons/arrow.png"),
                                          )),

                                    ],
                                  ),
                                ],
                              ),
                            )),
                      );
                    })
              ]))),
    )
    ))
      ;
  }
}
