import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class Amount_dialog extends StatefulWidget {
  const Amount_dialog({Key? key}) : super(key: key);

  @override
  State<Amount_dialog> createState() => _Amount_dialogState();
}

class _Amount_dialogState extends State<Amount_dialog> {
  var deviceSize;
  @override
  Widget build(BuildContext context) {
    deviceSize = MediaQuery.of(context).size;
    var height = deviceSize.height;
    var width = deviceSize.width;
    const style = TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 15,
        color: Color(0xFF303030),
        fontFamily: "Tw Cen MT");
    return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        alignment: Alignment.center,
        backgroundColor: Color(0xFF1B1818CC),
        // clipBehavior:Clip.none,
        elevation: 5,
        // insetAnimationCurve: Curves.decelerate,
        // insetAnimationDuration: const Duration(milliseconds: 100),
        insetPadding: EdgeInsets.all(10),
        child: Container(
            width: width - 40,
            height: 214,
            decoration: BoxDecoration(
              color: Color(0xFFF3F5FF),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const   Text(
                      "Please collect the following amount",
                      textAlign: TextAlign.center,
                      style: style,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const  Text(
                          "Amount:",
                          textAlign: TextAlign.center,
                          style: style,
                        ),
                        const   SizedBox(
                          width: 5,
                        ),
                          Container(
                          width: 7,
                          height: 10,
                          child: Image.asset(
                            "assets/icons/rupees.png",
                          ),
                        ),
                        const   Text(
                          "2500.00",
                          textAlign: TextAlign.center,
                          style: style,
                        ),
                      ],
                    ),
                    const   Text(
                      "By clicking on collected, you accept that the service has been successfully completed and above mentioned amount collected from the customer",
                      textAlign: TextAlign.center,
                      style: style,
                    ),
                    Container(
                      width: 120,
                      height: 40,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xFF1E2F59)),
                      child:const Text(
                             "Collected",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Color(0xFFFFFFFF),
                            fontFamily: "Tw Cen MT"),
                      ),
                    ),
                  ],
                ))));
  }
}
