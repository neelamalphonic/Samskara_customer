import 'package:flutter/material.dart';
import 'package:samskara_customer/screens/Booking_detail.dart';
import 'Booking_card.dart';

class Booking extends StatefulWidget {
  const Booking({Key? key}) : super(key: key);
  @override
  State<Booking> createState() => _BookingState();
}
class _BookingState extends State<Booking> {
  var deviceSize; 
  int is_select = 0;
  var eventColor;
  var eventStatus;
   var textColor;

  void initState(){
    super.initState();
     eventColor=Color(0xFFFCC800);
     eventStatus="Event Started";
  }
  viewDetail(){
     Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (BuildContext context)=>Booking_Detail()), (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    deviceSize = MediaQuery.of(context).size;
    var height = deviceSize.height;
    var width = deviceSize.width;    
    
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  width: width - 40,
                  height: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(width: 1, color: Color(0xFF1E2F59))),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(0),
                        width: (width-42)/3,
                        height: 50,
                        child: TextButton(
                            onPressed: (){

                                     is_select = 0;
                                     eventColor=Color(0xFFFCC800);
                                     eventStatus="Event Started";
                                     textColor=Color(0xff000000);
                                     setState(() { });

                            } ,
                            child:  Text(
                              "Ongoing",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color:  is_select == 0?Color(0xFFF3F5FF):Color(0xFF1E2F59)
                              ),
                            )),
                             decoration:is_select ==0? BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(width: 1, color: Color(0xFF1E2F59)),
                            color:  Color(0xFF1E2F59)):null,
                      ),

                      Container(
                        padding:  EdgeInsets.all(0),
                        width: (width-42)/3,
                        height: 50,
                        child: TextButton(
                             onPressed: () {
                              is_select = 1;
                              eventColor=Color(0xFF0B7D2B);
                              eventStatus="Event Completed";
                              textColor=Color(0xffFFFFFF);
                              setState(() { });
                            }, 
                            child:  Text(
                              "Completed",
                                style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: is_select == 1?Color(0xFFF3F5FF):Color(0xFF1E2F59),
                              ),
                              )),
                            decoration:is_select == 1? BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(width: 1, color: Color(0xFF1E2F59)),
                            color:  Color(0xFF1E2F59)):null,
                      ),

                      Container(
                        padding: const EdgeInsets.all(0),
                        width: (width-42)/3,
                        height: 50,
                        child: TextButton(
                            onPressed: () {
                              is_select = 2;
                              eventColor=Color(0xFFD00009);
                              eventStatus="Event Cancelled";
                              textColor=Color(0xffFFFFFF);
                              setState(() { });
                            }, 
                            child: Text(
                              "Cancelled",
                                style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color:  is_select == 2?Color(0xFFF3F5FF):Color(0xFF1E2F59),
                              ),
                              )),
                          decoration:is_select == 2? BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(width: 1, color: Color(0xFF1E2F59)),
                            color:  Color(0xFF1E2F59)):null,
                      )
                    ],),),

                    SizedBox(
                      height: 10,),
                    Expanded(

                      child:  SingleChildScrollView(
                          child:  ListView.builder(
                             physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: 20,
                              itemBuilder: ( context , index){
                                return Booking_Card(is_select,viewDetail,);
                              })
                      ),
                    )
              ],)));
  }
}
