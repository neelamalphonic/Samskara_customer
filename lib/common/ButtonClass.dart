import 'package:flutter/material.dart';

class ButtonClass extends StatefulWidget {
  final String name;
  final int widthField;
  final double heightField;
  const ButtonClass(this.name, this.widthField, this.heightField);
  @override
  State<ButtonClass> createState() => _ButtonClassState();
}

class _ButtonClassState extends State<ButtonClass> {
  var deviceSize;
  // var buttonModel=new ButtonModel("","","","");
@override
  Widget build(BuildContext context) {
    deviceSize = MediaQuery.of(context).size;
    var height = deviceSize.height;
    var width = deviceSize.width;
    return Container(
        width: width-widget.widthField,
        height: widget.heightField,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: const Color(0xFF1E2F59),
            boxShadow: [BoxShadow(
              color: Colors.grey,
              blurRadius: 2.0,
            )]
        ),
       child:
         Text(
            widget.name,
            style: const TextStyle(
                fontSize: 16,
                fontWeight:  FontWeight.w400,
                color: Color(0xFFFFFFFF),
                letterSpacing: 1,
              height: 1.08
            )
        )
    );
  }
}
// class ButtonModel{
//    String name='';
//    String color='';
//    String font_Size='';
//    String font_weight='';
//    ButtonModel(this.color,this.font_Size,this.font_weight,this.name);
// }