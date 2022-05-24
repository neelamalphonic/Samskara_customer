import 'package:flutter/material.dart';

class CustomDialogBox extends StatefulWidget {
  const CustomDialogBox({ Key? key }) : super(key: key);

  @override
  State<CustomDialogBox> createState() => _CustomDialogBoxState();
}

class _CustomDialogBoxState extends State<CustomDialogBox> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15),
  ),
  elevation: 0,
  backgroundColor: Colors.transparent,
  child:Container(
    padding: const EdgeInsets.all(10),
      width: 271,
      height: 243,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(10),
        color: Color(0xFFF3F5FF),
        boxShadow: const[
            BoxShadow(color: Colors.grey,offset: Offset(0,10),
            blurRadius: 10
           ),]
      ),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:const [
          Text("Allow Samskara to access this device's location?",
              style:  TextStyle(
                           fontSize: 16,
                           fontWeight: FontWeight.w700,
                           color: Color(0xFF31314E)
                         ),
                         textAlign: TextAlign.center
          ),
             Divider(
                       color: Color(0xFFE3E3E7),
                       thickness: 1,  ),
          Text("While using the app",
                style:  TextStyle(
                           fontSize: 16,
                           fontWeight: FontWeight.w700,
                           color: Color(0xFF31314E80)
                         ),
          ),
           Divider(color: Color(0xFFE3E3E7),
                       thickness: 1,  ),
          Text("Only this time",
              style:  TextStyle(
                           fontSize: 16,
                           fontWeight: FontWeight.w700,
                           color: Color(0xFF31314E80)
                         ),
          ),
           Divider(
                       color: Color(0xFFE3E3E7),
                       thickness: 1,  ),
          TextButton(
            onPressed: null,
            child: Text("Deny",
                 style:  TextStyle(
                           fontSize: 16,
                           fontWeight: FontWeight.w700,
                           color: Color(0xFFFF3535)
                         ),
            ))

        ],
      )
    )
);
    
    
    
  }
}