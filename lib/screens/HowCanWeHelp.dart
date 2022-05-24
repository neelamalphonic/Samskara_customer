import 'dart:ui';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../common/ButtonClass.dart';
import '../dashboard/DashboardScreentab.dart';
import 'HelpDesk.dart';

class HowCanWeHelp extends StatefulWidget {
  const HowCanWeHelp({Key? key}) : super(key: key);

  @override
  State<HowCanWeHelp> createState() => _HowCanWeHelpState();
}

class _HowCanWeHelpState extends State<HowCanWeHelp> {
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
        title: Text("How Can We Help",style: TextStyle(
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
          child: Column(
            children: [
              Container(
                width: width,
                height: 305,
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
                                Expanded(child:
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
                            const  Text(
                              "Refund Issue",
                              style: style,
                            ),
                            Container(
                              padding: const EdgeInsets.only(left: 2),
                              child:const  Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vulputate amet, vulputate vulputate risus et",
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
                                maxLines: 3,
                              ),
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
                                  onTap: null,
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
                              ],
                            )
                          ],
                        ))),
              ),
              SizedBox(height: 8,),
              Container(
                width: width,
                child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
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
                            Row(
                              children: [
                                Container(
                                  width: 32,height: 32,
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(color:Color(0xFF000000))
                                  ),
                                  child: Image.asset("assets/images/swastik.png"),
                                ),
                                Container(
                                    width: 190,
                                    height: 61,
                                    alignment: Alignment.centerLeft,
                                    padding: const EdgeInsets.only(left: 5),
                                    child: const Text(
                                      "John Doe, Supprt Team 7 Nov, 2020 at 5:00PM",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontFamily: 'Tw Cen MT',
                                        fontWeight: FontWeight.w400,
                                        decoration: TextDecoration.none,
                                        color: Color(0xFF000000),
                                        letterSpacing: 0.5,
                                      ),
                                      maxLines: 2,
                                    )
                                )
                              ],
                            ),
                            Divider(color: Color(0xffA3A3A3),thickness: 1,),
                            Container(
                                width: width,
                                alignment: Alignment.centerLeft,
                                padding: const EdgeInsets.only(left: 5),
                                child: const Text(
                                  "Can you please share the screenshot with us, so that we can help you with this issue.",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'Tw Cen MT',
                                    fontWeight: FontWeight.w400,
                                    decoration: TextDecoration.none,
                                    color: Color(0xFF000000),
                                    letterSpacing: 0.5,
                                  ),
                                  maxLines: 2,
                                )
                            )


                          ],
                        )
                    )
                ),
              ),
              SizedBox(height: 8,),
              Container(
                width: width,
                child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
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
                            Row(
                              children: [
                                Container(
                                  width: 32,height: 32,
                                  padding: const EdgeInsets.all(0),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    // border: Border.all(color:Color(0xFF000000))
                                  ),
                                  child: Image.asset("assets/images/ellipse1.png"),
                                ),
                                Container(
                                    width: 190,
                                    height: 51,
                                    alignment: Alignment.centerLeft,
                                    padding: const EdgeInsets.only(left: 5),
                                    child: const Text(
                                      "John Doe, \n7 Nov, 2020 at 5:00PM",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontFamily: 'Tw Cen MT',
                                          fontWeight: FontWeight.w400,
                                          decoration: TextDecoration.none,
                                          color: Color(0xFF000000),
                                          letterSpacing: 0.5,
                                          height: 1.3
                                      ),
                                      maxLines: 2,
                                    )
                                )
                              ],
                            ),
                            Divider(color: Color(0xffA3A3A3),thickness: 1,),
                            Container(
                                width: width,
                                margin: const EdgeInsets.only(bottom: 10),
                                alignment: Alignment.centerLeft,
                                padding: const EdgeInsets.only(left: 5),
                                child: const Text(
                                  "Sure",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'Tw Cen MT',
                                    fontWeight: FontWeight.w400,
                                    decoration: TextDecoration.none,
                                    color: Color(0xFF000000),
                                    letterSpacing: 0.5,
                                  ),
                                  maxLines: 2,
                                )
                            ),
                            InkWell(
                                onTap: () async{
                                  final  result = FilePicker.platform.pickFiles();
                                },
                                child: Container(
                                    width: 168,
                                    height: 37,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        color: const Color(0xFF1E2F59),
                                        boxShadow: [BoxShadow(
                                          color: Colors.grey,
                                          blurRadius: 2.0,
                                        )]
                                    ),
                                    child: Row(
                                      children: [
                                        Padding(padding: const EdgeInsets.only(left: 5) ,
                                          child: Text(
                                              "View Attachments",
                                              style: const TextStyle(
                                                  fontSize: 16,
                                                  fontWeight:  FontWeight.w400,
                                                  color: Color(0xFFFFFFFF),
                                                  letterSpacing: 1,
                                                  height: 1.08
                                              )
                                          ),
                                        ),

                                        Padding(padding: const EdgeInsets.only(left: 5),child:
                                        Image.asset("assets/icons/attach.png"))
                                      ],
                                    )

                                )
                            )



                          ],
                        )
                    )
                ),
              ),
              SizedBox(height: 8,),
              Container(
                width: width,
                child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
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
                                alignment: Alignment.centerLeft,
                                padding: const EdgeInsets.only(left: 0),
                                child: const Text(
                                  "Additional Comments",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: 'Tw Cen MT',
                                      fontWeight: FontWeight.w400,
                                      decoration: TextDecoration.none,
                                      color: Color(0xFF000000),
                                      letterSpacing: 0.5,
                                      height: 1.3
                                  ),
                                )
                            ),
                            Divider(color: Color(0xffA3A3A3),thickness: 1,),
                            TextFormField(
                              textAlign: TextAlign.start,
                              maxLines: 6,
                              onChanged: null,
                              validator:
                                  (value) {
                              },
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide(color: Color(0xFFF3F5FF)),
                                ),
                                fillColor: Color(0xFFF3F5FF),
                                filled: true,
                                hintText: 'Add Additional Comments',
                                hintStyle: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFFA3A3A3),
                                    decoration: TextDecoration.none),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide(color: Color(0xFFF3F5FF)),
                                ),
                              ),
                            ),
                          ],
                        )
                    )
                ),
              ),
              SizedBox(height: 8,),
              Container(
                width: width,
                child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
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
                                alignment: Alignment.centerLeft,
                                padding: const EdgeInsets.only(left: 0),
                                child: const Text(
                                  "Upload Attactments",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: 'Tw Cen MT',
                                      fontWeight: FontWeight.w400,
                                      decoration: TextDecoration.none,
                                      color: Color(0xFF000000),
                                      letterSpacing: 0.5,
                                      height: 1.3
                                  ),
                                )
                            ),
                            Divider(color: Color(0xffA3A3A3),thickness: 1,),
                            Container(
                                width: width,
                                margin: const EdgeInsets.only(bottom: 10),
                                alignment: Alignment.centerLeft,
                                padding: const EdgeInsets.only(left: 5),
                                child: const Text(
                                  "Upload Attachments ( *jpeg, *jpg, *png, *pdf )",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'Tw Cen MT',
                                    fontWeight: FontWeight.w400,
                                    decoration: TextDecoration.none,
                                    color: Color(0xFFABABAB),
                                    letterSpacing: 0.5,
                                  ),
                                )
                            ),
                            InkWell(
                                onTap: () async{
                                  final  result = FilePicker.platform.pickFiles();
                                },
                                child: Container(
                                    width: 158,
                                    height: 37,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color:Color(0xFF1E2F59),width: 1 ),
                                      //color: const Color(0xFF1E2F59),
                                      // boxShadow: [BoxShadow(
                                      //   color: Colors.grey,
                                      //   blurRadius: 2.0,
                                      // )]
                                    ),
                                    child:
                                    Text(
                                        "Add Attachments",
                                        style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight:  FontWeight.w400,
                                            color: Color(0xFF1E2F59),
                                            letterSpacing: 1,
                                            height: 1.08
                                        )
                                    )
                                )
                            )



                          ],
                        )
                    )
                ),
              ),
              SizedBox(height: 8,),
              InkWell(
                onTap: () {},
                child: ButtonClass("Submit",40,45),
              ),
              SizedBox(height: 8,),


            ],
          ),
        ),
      ),
    )
    ))
      ;
  }
}
