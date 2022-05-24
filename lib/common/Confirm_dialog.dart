import 'package:flutter/material.dart';



class Confirm_dialog extends StatefulWidget {
  const Confirm_dialog({Key? key}) : super(key: key);

  @override
  State<Confirm_dialog> createState() => _Confirm_dialogState();
}

class _Confirm_dialogState extends State<Confirm_dialog> {
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
      child:
      Container(
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
          Container(
            width: 26,
            height: 26,
            child:  Image.asset("assets/icons/thumb.png",color: Color(0xFF1E2F59),)
          )
         ,
          Text("Your Booking has been successfully confirmed.",
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15,color: Color(0xFF303030),fontFamily: "Tw Cen MT bold"),
          ),
          InkWell(
            onTap: (){

            },
            child: Container(
              width: 120,
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
          )
          
        ],
      ))
      )
    );
  }
}

