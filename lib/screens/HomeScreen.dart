import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter_switch/flutter_switch.dart';
import 'package:samskara_customer/screens/Booking_card.dart';
import 'package:samskara_customer/screens/LineChart_One.dart';

class HomeScreen extends StatefulWidget {

@override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  var deviceSize;
 final List<charts.Series<dynamic, int>>seriesList=[];
  bool isSwitched = true;
  var is_select;
  void onPress(){

  }
 
  @override
  Widget build(BuildContext context) {
    deviceSize  = MediaQuery.of(context).size;
      var height = deviceSize.height;
      var width = deviceSize.width;

    return Container(
      width: width,
      height: height,
      padding: const EdgeInsets.fromLTRB(20,0,27,0),
      child: ListView(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(27,14,27,14),
            width: width-50,
            height: 55,
            decoration: BoxDecoration(
              color: Color(0xFF1E2F59),
              borderRadius: BorderRadius.circular(10),
              // boxShadow: BoxShadow()
            ),
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                     const Text(
                        "Are You Available?",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            fontFamily: 'Tw Cen MT bold',
                            color: Color(0xFFFFFFFF),
                            height: 1.08,
                          letterSpacing: 0.8
                        ),
                        ),
                            // FlutterSwitch(
                            //     width: 50, height: 25,
                            //     switchBorder:Border.all(color: Color(0xFF000000),width: 1),
                            //     activeColor:Color(0xFF1E2F59),
                            //     value: isSwitched, onToggle: (value){
                            //       setState(() {
                            //        isSwitched = value;
                            //         });
                            // })
                Container(
                  width: 80,
                  height: 100,
                  alignment: Alignment.topRight,
                  child: FittedBox(
                    fit: BoxFit.none,
                    child: Switch(
                        activeColor:isSwitched?Color(0xFF1E2F59):Colors.grey,
                        activeTrackColor:isSwitched?Color(0xFFFFFFFF):Color(0xFFf5f2f0),
                        value: isSwitched,
                        onChanged: (value){
                          isSwitched = value;
                          print(isSwitched);
                          setState(() {});
                        })
                  ),
                ),

            ],),),
          Container(
            child:  LineChartSample1() ,
          ),
          Container(
            margin: const EdgeInsets.only(top:5),
            padding: const EdgeInsets.fromLTRB(18,14,18,14),
            decoration: BoxDecoration(
              color: Color(0xFF1E2F59),
              borderRadius: BorderRadius.circular(10),
              boxShadow: const[
                BoxShadow(
                  color: Color(0xFF000000),
                  blurRadius: 1.0,
                  // spreadRadius: 1.0,
                )
              ]
            ),

            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                        "2 More Pujas to go for Incentive",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            fontFamily: 'Tw Cen MT',
                            color: Color(0xFFFFFFFF),
                            height: 1.08,
                          letterSpacing: 0.8
                        ),
                        ) ,
                        Row(
                          children: [
                            Container(
                              width: 15,
                              height: 15,
                               child: Image.asset("assets/icons/rupeeswhite.png"),
                            ),

                            RichText(
                             text: TextSpan(
                              style: DefaultTextStyle.of(context).style,
                              children: const <TextSpan>[
                                  TextSpan(text:"1000.00", style: TextStyle(fontSize: 24,fontWeight: FontWeight.w700,color: Color(0xFFFFFFFF))),
                                  TextSpan(text: "  "),
                                  TextSpan(text:"pending incentives ", style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xFFFFFFFF)))
                                    ]
                              ))
                          ],
                        )
                       
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0,20,0,20),
            alignment: Alignment.centerLeft,
            child: Text(
            "Upcoming Events",
            style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 18,
                            fontFamily: 'Tw Cen MT',
                            color: Color(0xFF000000),
                            height: 1.08,
                            letterSpacing: 1
                        ),
              
          )
          ),
          Expanded(

            child:  SingleChildScrollView(
                child:  ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 20,
                    itemBuilder: ( context ,index){
                      is_select=0;
                      return Booking_Card(is_select,onPress);
                    })
            ),
          )
          
          
        ],
      )
      );
  }
}


