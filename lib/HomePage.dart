import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
    var deviceSize ;
  @override
  Widget build(BuildContext context) {
    deviceSize=MediaQuery.of(context).size;
    var height=deviceSize.height;
    var width=deviceSize.width;
    return Scaffold(
      body: Stack(
          children: [
             Center(
               child: Container(
              child: Image.asset("assets/images/newlogodesign1.png") ,
             )),
             Positioned(
              top: height/2-200,
              left: width/2-50,
              child: Image.asset("assets/images/finallogo1.png")
               )],
            ), 
      );
  }
}