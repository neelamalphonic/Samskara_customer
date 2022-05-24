import 'package:flutter/material.dart';


class Otp_dialog extends StatefulWidget {
  const Otp_dialog({Key? key}) : super(key: key);

  @override
  State<Otp_dialog> createState() => _Otp_dialogState();
}

class _Otp_dialogState extends State<Otp_dialog> {
  var deviceSize;
  @override
  Widget build(BuildContext context) {
    deviceSize = MediaQuery.of(context).size;
    var height = deviceSize.height;
    var width = deviceSize.width;
    return
      Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          alignment: Alignment.center,
          backgroundColor: Color(0xFF1B1818CC),
          // clipBehavior:Clip.none,
          elevation: 5,
          // insetAnimationCurve: Curves.decelerate,
          // insetAnimationDuration: const Duration(milliseconds: 100),
          insetPadding:EdgeInsets.all(10),
          child: Container(
              width: width-40,
              height: 158,
              decoration: BoxDecoration(
                color: Color(0xFFF3F5FF),
                borderRadius: BorderRadius.circular(15),
              ),
              child:Padding(
                  padding: const EdgeInsets.all(10),
                  child:
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Please enter the OTP to start service",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15,color: Color(0xFF303030),fontFamily: "Tw Cen MT bold"),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("OTP",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15,color: Color(0xFF303030),fontFamily: "Tw Cen MT bold"),
                          ),
                          SizedBox(width: 8),
                          Container(
                            width: 132,
                            height: 28,
                            alignment: Alignment.topCenter,
                            child:  TextField(
                                textAlign: TextAlign.center,
                                onChanged: null,
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Color(0xFF1E2F59),width: 0),
                                    borderRadius: BorderRadius.circular(6),),
                                  hintText: "Enter OTP Here",
                                    contentPadding:EdgeInsets.all(5),
                                  hintStyle: TextStyle( fontSize: 16,fontWeight: FontWeight.w400,color: Color(0xFF8E8B8B)),
                                  fillColor: Color(0xFFFFFFFF),
                                  filled: true,
                                ))
                          )
                        ],),

                      Container(
                        width: 120,
                        height: 40,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius:BorderRadius.circular(20) ,
                            color: Color(0xFF1E2F59)
                        ),
                        child: Text("Submit",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17,color: Color(0xFFFFFFFF),fontFamily: "Tw Cen MT"),
                        ),
                      ),
                    ],
                  ))
          )
      );
  }
}

