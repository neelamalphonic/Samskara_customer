import 'package:flutter/material.dart';
import 'package:samskara_customer/screens/AddBankDetails.dart';

import '../common/ButtonClass.dart';
import '../dashboard/DashboardScreentab.dart';

class BankDetails extends StatefulWidget {
  const BankDetails({Key? key}) : super(key: key);

  @override
  State<BankDetails> createState() => _BankDetailsState();
}

class _BankDetailsState extends State<BankDetails> {
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
        height: 1.5
    );
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
              title: Text("Bank Details",style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Color(0xFF131A22),
                  height: 1.08,
                  letterSpacing: 0.50),) ,
            ),
            body: Container(
                width: width,
                height: height,
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child:SingleChildScrollView(
                    child:Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (BuildContext context) => AddBankDetails(),),
                                    (route) => false);
                          },
                          child: ButtonClass("Add Bank Details + ", 50, 40),
                        ),
                        SizedBox(height: 10,),
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
                                            "Bank Details",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontFamily: 'Tw Cen MT',
                                                fontWeight: FontWeight.w500,
                                                decoration: TextDecoration.none,
                                                color: Color(0xFF1E2F59)),
                                          ),
                                        ),
                                        Container(
                                            margin: const EdgeInsets.only(bottom: 8),
                                            child:  GestureDetector(
                                              onTap: (){},
                                              child:  const Text(
                                                "Default",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontFamily: 'Tw Cen MT',
                                                    fontWeight: FontWeight.w500,
                                                    decoration: TextDecoration.underline,
                                                    color: Color(0xFF1E2F59)),
                                              ),
                                            )

                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Country:",
                                          style: style,
                                        ),

                                        const  Padding(
                                          padding: EdgeInsets.only(left: 2),
                                          child: Text(
                                            "IND",
                                            style: TextStyle(
                                                fontSize: 17,
                                                fontWeight: FontWeight.w400,
                                                fontFamily: 'Tw Cen MT',
                                                decoration: TextDecoration.none,
                                                color: Color(0xFF000000),
                                                letterSpacing: 0.5,
                                                height: 1.7
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Bank Name:",
                                          style: style,
                                        ),

                                        const Padding(
                                          padding: EdgeInsets.only(left: 2),
                                          child: Text(
                                            "ICICI Bank ",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontFamily: 'Tw Cen MT',
                                                fontWeight: FontWeight.w500,
                                                decoration: TextDecoration.none,
                                                color: Color(0xFF000000),
                                                letterSpacing: 0.5,
                                                height: 1.7
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Branch:",
                                          style:style,
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(left: 2),
                                          child: Text(
                                            " Indra Bazar",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontFamily: 'Tw Cen MT',
                                                fontWeight: FontWeight.w400,
                                                decoration: TextDecoration.none,
                                                color: Color(0xFF000000),
                                                letterSpacing: 0.5,
                                                height: 1.7
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Account Number:",
                                          style: style,
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(left: 2),
                                          child: Text(
                                            "3782372837283",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontFamily: 'Tw Cen MT',
                                                fontWeight: FontWeight.w400,
                                                decoration: TextDecoration.none,
                                                color: Color(0xFF000000),
                                                letterSpacing: 0.5,
                                                height: 1.7
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Account Type:",
                                          style: style,
                                        ),

                                        const Padding(
                                          padding: EdgeInsets.only(left: 2),
                                          child: Text(
                                            "Savings",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontFamily: 'Tw Cen MT',
                                                fontWeight: FontWeight.w400,
                                                decoration: TextDecoration.none,
                                                color: Color(0xFF000000),
                                                letterSpacing: 0.5,
                                                height: 1.7
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              "IFSC Code:",
                                              style: style,
                                            ),

                                            const Padding(
                                              padding: EdgeInsets.only(left: 2),
                                              child: Text(
                                                "ICICI040343",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontFamily: 'Tw Cen MT',
                                                    fontWeight: FontWeight.w400,
                                                    decoration: TextDecoration.none,
                                                    color: Color(0xFF000000),
                                                    letterSpacing: 0.5,
                                                    height: 1.7
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        InkWell(
                                          onTap: (){
                                            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (BuildContext context) => AddBankDetails(),),
                                                    (route) => false);
                                          },
                                          child:  Container(
                                            width: 30,
                                            height: 30,
                                            decoration: BoxDecoration(
                                              color: Color(0xFF1E2F59),
                                              borderRadius: BorderRadius.circular(5),
                                            ),
                                            child: Container(
                                              width: 2, height: 2,
                                              child:  Image.asset("assets/icons/editone.png"),

                                            ),
                                          ),
                                        )

                                      ],
                                    )],),)
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
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
                                            "Bank Details",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontFamily: 'Tw Cen MT',
                                                fontWeight: FontWeight.w500,
                                                decoration: TextDecoration.none,
                                                color: Color(0xFF1E2F59)),
                                          ),
                                        ),
                                        Container(
                                            margin: const EdgeInsets.only(bottom: 8),
                                            child:  GestureDetector(
                                              onTap: (){},
                                              child:  const Text(
                                                "Default",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontFamily: 'Tw Cen MT',
                                                    fontWeight: FontWeight.w500,
                                                    decoration: TextDecoration.underline,
                                                    color: Color(0xFF1E2F59)),
                                              ),
                                            )

                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Country:",
                                          style: style,
                                        ),

                                        const  Padding(
                                          padding: EdgeInsets.only(left: 2),
                                          child: Text(
                                            "IND",
                                            style: TextStyle(
                                                fontSize: 17,
                                                fontWeight: FontWeight.w400,
                                                fontFamily: 'Tw Cen MT',
                                                decoration: TextDecoration.none,
                                                color: Color(0xFF000000),
                                                letterSpacing: 0.5,
                                                height: 1.7
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Bank Name:",
                                          style: style,
                                        ),

                                        const Padding(
                                          padding: EdgeInsets.only(left: 2),
                                          child: Text(
                                            "ICICI Bank ",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontFamily: 'Tw Cen MT',
                                                fontWeight: FontWeight.w500,
                                                decoration: TextDecoration.none,
                                                color: Color(0xFF000000),
                                                letterSpacing: 0.5,
                                                height: 1.7
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Branch:",
                                          style:style,
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(left: 2),
                                          child: Text(
                                            " Indra Bazar",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontFamily: 'Tw Cen MT',
                                                fontWeight: FontWeight.w400,
                                                decoration: TextDecoration.none,
                                                color: Color(0xFF000000),
                                                letterSpacing: 0.5,
                                                height: 1.7
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Account Number:",
                                          style: style,
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(left: 2),
                                          child: Text(
                                            "3782372837283",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontFamily: 'Tw Cen MT',
                                                fontWeight: FontWeight.w400,
                                                decoration: TextDecoration.none,
                                                color: Color(0xFF000000),
                                                letterSpacing: 0.5,
                                                height: 1.7
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Account Type:",
                                          style: style,
                                        ),

                                        const Padding(
                                          padding: EdgeInsets.only(left: 2),
                                          child: Text(
                                            "Savings",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontFamily: 'Tw Cen MT',
                                                fontWeight: FontWeight.w400,
                                                decoration: TextDecoration.none,
                                                color: Color(0xFF000000),
                                                letterSpacing: 0.5,
                                                height: 1.7
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              "IFSC Code:",
                                              style: style,
                                            ),

                                            const Padding(
                                              padding: EdgeInsets.only(left: 2),
                                              child: Text(
                                                "ICICI040343",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontFamily: 'Tw Cen MT',
                                                    fontWeight: FontWeight.w400,
                                                    decoration: TextDecoration.none,
                                                    color: Color(0xFF000000),
                                                    letterSpacing: 0.5,
                                                    height: 1.7
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [

                                            Container(
                                              width: 30,
                                              height: 30,
                                              decoration: BoxDecoration(
                                                color: Color(0xFF1E2F59),
                                                borderRadius: BorderRadius.circular(5),
                                              ),
                                              child: Container(
                                                width: 2, height: 2,
                                                child:  Image.asset("assets/icons/editone.png"),

                                              ),
                                            ),
                                            SizedBox(width: 5,),
                                            Container(
                                              width: 30,
                                              height: 30,
                                              decoration: BoxDecoration(
                                                color: Color(0xFFD00009),
                                                borderRadius: BorderRadius.circular(5),
                                              ),
                                              child: Container(
                                                width: 2, height: 2,
                                                child:  Image.asset("assets/icons/delete.png"),

                                              ),
                                            ),

                                          ],
                                        ),

                                      ],
                                    )

                                  ],),)
                          ),
                        ),
                      ],
                    )
                ))
          ),
        ),
       )
      ;
  }
}
