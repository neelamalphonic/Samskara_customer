import 'dart:async';
import 'package:flutter/material.dart';
import 'package:samskara_customer/common/ButtonClass.dart';
import 'package:samskara_customer/common/string_api.dart';
import 'package:timer_button/timer_button.dart';
import 'package:country_calling_code_picker/picker.dart';

import '../common/ColorConstants.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);
  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  late Timer timer;
  GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  var deviceSize;
  static bool isSelected = false;
  bool _isVisible=false;
  late Country _selectedCountry ;
  void showToast(){
    setState(() {_isVisible= !_isVisible;});
    // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder:
    //     (BuildContext context)=> DashboardScreentab(6) ), (route) => false);

  }
  void initState() {
    initCountry();
    super.initState();
  }

  void initCountry() async {
    final country = await getCountryByCountryCode(context, 'IN');
    setState(() {
      _selectedCountry = country!;
      debugPrint('asfasddas $_selectedCountry');
    });
  }

  @override
  Widget build(BuildContext context) {
    deviceSize = MediaQuery.of(context).size;
    var height = deviceSize.height;
    var width = deviceSize.width;
    return Scaffold(
        body: Container(
          width: width,
          height: height,
          padding: const EdgeInsets.fromLTRB(27, 50, 27, 0),
          child: SingleChildScrollView(
          child:Form(
            key: _formkey,
              child:  Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Sign In",
                style: TextStyle(
                    letterSpacing: 1,
                    height: 1.53,
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    color: Color(0xFF131A22)),
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                "Enter your mobile number",
                style: TextStyle(
                  letterSpacing: 1,
                  height: 1.08,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF131A22),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Container(
                      width: 89,
                      height: 60,
                      child: GestureDetector(
                        onTap: (){
                          __onPressedShowBottomSheetForMobileListView();
                        },
                        child: Row(
                          children: <Widget>[
                            SizedBox(width: 10.0),
                            Image.asset(
                              _selectedCountry == null ? '' : _selectedCountry.flag,
                              package: countryCodePackageName,
                              width: 16,
                            ),
                            SizedBox(width: 5.0),
                            Text(
                              _selectedCountry == null ? '' : _selectedCountry.callingCode,
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13.0,
                                  color: Colors.black),
                            ),
                            SizedBox(width: 5.0),
                            Icon(Icons.arrow_drop_down, size: 18),
                            SizedBox(width: 2.0),
                          ],
                        ),
                      )
    ),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                      child: TextFormField(
                        onChanged: null,
                        validator: (value){
                          if(value==null||value.isEmpty){
                            return "Please Enter Mobile Number";}
                          else if(!value.isValidPhone){ return "Please Enter Valid Phone Number";}
                          return null;
                        },

                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: const  BorderSide(color: Color(0xFFF3F5FF), width: 0),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          hintText: "Mobile",
                          hintStyle: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFFA3A3A3),
                              decoration: TextDecoration.none),
                          fillColor: const Color(0xFFF3F5FF),
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                            const   BorderSide(color: Color(0xFFF3F5FF), width: 0),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                      ))
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Visibility(
                  visible: _isVisible,
                  child: TextField(
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
                      fillColor: Color(0xFFF3F5FF),
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFF3F5FF),width: 0),
                        borderRadius: BorderRadius.circular(12.0),
                      ),

                    ),

                  )
              ),
              SizedBox(width: 4,),
              Container(
                    width: width,
                    height: 20,
                    alignment: Alignment.topRight,
                    child:  TimerButton(label: "Resend",timeOutInSeconds: 30,
                      onPressed:  (){},
                      buttonType: ButtonType.OutlinedButton,
                      disabledColor: Colors.white,
                      color: Colors.white,
                      activeTextStyle: TextStyle(color: ColorConstants.PrimaryColor , fontWeight: FontWeight.w600),
                      disabledTextStyle: TextStyle(color: Color(0xFFA3A3A3)),
                    ),
                  )
            ],
          )),
          )),
        floatingActionButton:
        InkWell(
                  onTap: () {
                    var duration=Duration(seconds: 5);
                    timer= Timer(duration,(){
                      showToast();
                    });
                    // startTimer();


                    if (_formkey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Processing Data"))
                      );
                    }
                  },
                child:  Container(
                  padding: const EdgeInsets.only(bottom:40),
                  child: ButtonClass("Continue", 40,36) ,
                )

          ),
         // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat
      resizeToAvoidBottomInset: false,
        );
  }

  void __onPressedShowBottomSheetForMobileListView()async {
    final country = await showCountryPickerSheet(context);
    if (country != null) {
      setState(() {
        print('fff---${country.countryCode}');
        _selectedCountry = country;
      });
    }
  }
  }


