import 'package:flutter/material.dart';

class ContentBox_Dialog {

  build(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset("assets/icons/thumb.png",color: Color(0xFF1E2F59),),
        Text("Your Booking has been successfully confirmed.",
             textAlign: TextAlign.center,
             style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15,color: Color(0xFF303030),fontFamily: "Tw Cen MT"),
        ),
       Container(
            width: 50,
            height: 40,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius:BorderRadius.circular(20) ,
              color: Color(0xFF1E2F59)
            ),
            child: Text("Got It",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17,color: Color(0xFFFFFFFF),fontFamily: "Tw Cen MT"),
            ),
          ),
      ],
    );
  }
}
