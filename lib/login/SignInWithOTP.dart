import 'package:flutter/material.dart';

class SignInWithOTP extends StatefulWidget {
  const SignInWithOTP({ Key? key }) : super(key: key);

  @override
  State<SignInWithOTP> createState() => _SignInWithOTPState();
}

class _SignInWithOTPState extends State<SignInWithOTP> {
  var deviceSize;
   String selectedValue="+91";
   List<DropdownMenuItem<String>> menuItems = [
    DropdownMenuItem(child: Text("+91"),value: "+91"),
    DropdownMenuItem(child: Text("+1",style: TextStyle(color: Color(0xFF000000))),value: "+1"),
    DropdownMenuItem(child: Text("+001",style: TextStyle(color: Color(0xFF000000))),value: "+001"),
    DropdownMenuItem(child: Text("+002",style: TextStyle(color: Color(0xFF000000))),value: "+002"),
  ];
  @override
  Widget build(BuildContext context) {
    deviceSize = MediaQuery.of(context).size;
    var height = deviceSize.height;
    var width = deviceSize.width;
    return Scaffold(
      body:Container(
        padding: const EdgeInsets.fromLTRB(27,50,27,0),
        color: Colors.white,
        child:  Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        const  Text("Sign In",
             style: TextStyle(
                 letterSpacing: 1,
                 height: 1.53,
               fontSize: 24,
               fontWeight: FontWeight.w800,
               color: Color(0xFF131A22)),
          ),
       const   SizedBox(
            height: 50,
          ),
        const  Text("Enter your mobile number",
               style: TextStyle(
                 letterSpacing: 1,
                 height: 1.08,
                 fontSize: 16,
                 fontWeight: FontWeight.w500,
                 color: Color(0xFF131A22),),
          ), 
          const SizedBox(
            height: 40,
          ),
          Row(
            children: [
              Container(
                width: 89,
                height: 60,
                child: DropdownButtonFormField(
                    decoration: InputDecoration(
                    enabledBorder :OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFF3F5FF),width: 0),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    fillColor: Color(0xFFF3F5FF),
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                       borderSide: BorderSide(color: Color(0xFFF3F5FF),width: 0),
                        borderRadius: BorderRadius.circular(12.0),
                    ),

                  ),
                  icon: Icon(Icons.keyboard_arrow_down_outlined),
                  items: menuItems,
                  onChanged: (String ? newValue) {
                      setState(() {
                        selectedValue = newValue!;
                      });
                    },
                    value: selectedValue,
                    )),
              
              
               SizedBox(
                 width: 5,
               ),
               Expanded(
                 child: TextField(
                   onChanged: null,
                    decoration: InputDecoration(
                    enabledBorder :OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFF3F5FF),width: 0),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    hintText: "Mobile",
                    hintStyle: const TextStyle( 
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFA3A3A3),
                      decoration: TextDecoration.none),
                    fillColor: Color(0xFFF3F5FF),
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFF3F5FF),width: 0),
                        borderRadius: BorderRadius.circular(12.0),
                    ),

                  ),

                 ) ),
],          ),
            SizedBox(
                   height: 10,
                 ),
           TextField(
                   onChanged: null,
                    decoration: InputDecoration(
                      enabledBorder :OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFF3F5FF),width: 0),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    hintText: "Enter OTP",
                    hintStyle: const TextStyle( 
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFA3A3A3),
                      decoration: TextDecoration.none),
                    suffixIcon: TextButton(
                      onPressed: (){}, 
                      child: Text("Resend",
                        style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Hind',
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF1E2F59),
                              decoration: TextDecoration.underline,
                              decorationThickness: 1.50,
                              )
                      )
                      ),
                    fillColor: Color(0xFFF3F5FF),
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFF3F5FF),width: 0),
                      borderRadius: BorderRadius.circular(12.0),
                    ),

                  ),

                 ) 
                 
        ],
      ),
      
        ),
         floatingActionButton:Container(
                
                width: width-90,
                height: 45,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Color(0xFF1E2F59)),
                child:TextButton(
                             onPressed: () {},
                             child: Text(
                                 "Continue",
                                 style: TextStyle(
                                     fontSize: 16,
                                     fontWeight:  FontWeight.bold,
                                     color: Color(0xFFFFFFFF)
                                 )
                             )
                         ),

          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat
     
      
    );
  }
}