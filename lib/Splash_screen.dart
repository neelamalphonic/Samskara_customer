import 'dart:async';
import 'package:flutter/material.dart';
import 'package:samskara_customer/dashboard/DashboardScreentab.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Splash_screen extends StatefulWidget {

  @override
  _Splash_screenState createState() => _Splash_screenState();
}

class _Splash_screenState extends State<Splash_screen> {
  var title_splash="Indra Bazar, Jaipur";
  var deviceSize ;

  late Timer timer;

  @override
  void initState() {
    super.initState();
    _callLoginScreenMethod();
  }

  _callLoginScreenMethod(){
    var duration = Duration(seconds: 2);
    timer = Timer(duration, () {
      _navigateToFirstAppScreen();
    });
  }

  _navigateToFirstAppScreen() async {

    timer.cancel();
 SharedPreferences prefs = await SharedPreferences.getInstance();


    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (BuildContext context) => DashboardScreentab(0,title_splash),),
            (route) => false);


    // if (prefs.getBool(LOGIN_STATUS) != null) {
    //
    //   Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (BuildContext context) => DashboardScreentab(),),
    //           (route) => false);
    //
    // }else{
    //
    //   Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (BuildContext context) => DashboardScreentab(12),),
    //           (route) => false);
    // }



  }

  @override
  Widget build(BuildContext context) {
    deviceSize=MediaQuery.of(context).size;
    var height=deviceSize.height;
    var width=deviceSize.width;
    return Scaffold(
      appBar: AppBar(backgroundColor: Theme.of(context).accentColor, brightness: Brightness.light,),
      body: Center(
        child:  Column(crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child:  Image.asset("assets/images/finallogo1.png"),
            ),
            Container(
              width: width-60,
              height: 100,
              child:FittedBox(
                fit: BoxFit.fill,
                child:  Image.asset("assets/icons/newlogo.png") ,
              )

            )
          ],)
      )







        // child: Container(
        //   height: height,
        //   width: width,
        //   alignment: Alignment.center,
        //   // color: Colors.red,
        //  // decoration: BoxDecoration(color: Colors.red, image: DecorationImage(image: AssetImage('assets/images/newlogodesign1.png'))),




    );

  }
}